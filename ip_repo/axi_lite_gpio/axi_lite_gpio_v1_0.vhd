----------------------------------------------------------------------------------
-- Jobsheet 10 - IP custom AXI4-Lite slave (VHDL)
-- reg0 (0x00) : R/W  -> reg0(15:0) ke gpio_out (LED)
-- reg1 (0x04) : R    -> status switch sw(15:0)  (Tugas 1)
-- reg2 (0x08) : R/W  -> register umum
-- reg3 (0x0C) : R/W  -> register umum
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity axi_lite_gpio_v1_0 is
  Generic (
    C_S_AXI_ADDR_WIDTH : integer := 4;   -- 4 register x 4 byte = 16 byte
    C_S_AXI_DATA_WIDTH : integer := 32
  );
  Port (
    S_AXI_ACLK    : in  STD_LOGIC;
    S_AXI_ARESETN : in  STD_LOGIC;
    -- Write address channel
    S_AXI_AWADDR  : in  STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_AWPROT  : in  STD_LOGIC_VECTOR(2 downto 0);
    S_AXI_AWVALID : in  STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    -- Write data channel
    S_AXI_WDATA   : in  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_WSTRB   : in  STD_LOGIC_VECTOR((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
    S_AXI_WVALID  : in  STD_LOGIC;
    S_AXI_WREADY  : out STD_LOGIC;
    -- Write response channel
    S_AXI_BRESP   : out STD_LOGIC_VECTOR(1 downto 0);
    S_AXI_BVALID  : out STD_LOGIC;
    S_AXI_BREADY  : in  STD_LOGIC;
    -- Read address channel
    S_AXI_ARADDR  : in  STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_ARPROT  : in  STD_LOGIC_VECTOR(2 downto 0);
    S_AXI_ARVALID : in  STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    -- Read data channel
    S_AXI_RDATA   : out STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_RRESP   : out STD_LOGIC_VECTOR(1 downto 0);
    S_AXI_RVALID  : out STD_LOGIC;
    S_AXI_RREADY  : in  STD_LOGIC;
    -- Port eksternal
    gpio_out      : out STD_LOGIC_VECTOR(15 downto 0);  -- ke LED
    sw            : in  STD_LOGIC_VECTOR(15 downto 0)   -- dari switch
  );
end axi_lite_gpio_v1_0;

architecture Behavioral of axi_lite_gpio_v1_0 is
  type reg_array is array (0 to 3) of STD_LOGIC_VECTOR(31 downto 0);
  signal regs : reg_array := (others => (others => '0'));

  signal axi_awready : STD_LOGIC := '0';
  signal axi_wready  : STD_LOGIC := '0';
  signal axi_bvalid  : STD_LOGIC := '0';
  signal axi_arready : STD_LOGIC := '0';
  signal axi_rvalid  : STD_LOGIC := '0';
  signal axi_rdata   : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');

  -- sinkronisasi switch (2 flip-flop) agar aman dari metastabilitas
  signal sw_s1, sw_s2 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
begin
  S_AXI_AWREADY <= axi_awready;
  S_AXI_WREADY  <= axi_wready;
  S_AXI_BVALID  <= axi_bvalid;
  S_AXI_BRESP   <= "00";          -- OKAY
  S_AXI_ARREADY <= axi_arready;
  S_AXI_RVALID  <= axi_rvalid;
  S_AXI_RRESP   <= "00";          -- OKAY
  S_AXI_RDATA   <= axi_rdata;

  gpio_out <= regs(0)(15 downto 0);

  ------------------------------------------------------------------
  -- Sinkronisasi switch
  ------------------------------------------------------------------
  process(S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
      sw_s1 <= sw;
      sw_s2 <= sw_s1;
    end if;
  end process;

  ------------------------------------------------------------------
  -- FSM tulis (AW + W diterima bersamaan, lalu B response)
  ------------------------------------------------------------------
  process(S_AXI_ACLK)
    variable idx : integer range 0 to 3;
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        axi_awready <= '0';
        axi_wready  <= '0';
        axi_bvalid  <= '0';
        regs        <= (others => (others => '0'));
      else
        if axi_awready = '0' and S_AXI_AWVALID = '1' and
           S_AXI_WVALID = '1' and axi_bvalid = '0' then
          axi_awready <= '1';
          axi_wready  <= '1';
          axi_bvalid  <= '1';
          idx := to_integer(unsigned(S_AXI_AWADDR(C_S_AXI_ADDR_WIDTH-1 downto 2)));
          if idx /= 1 then                 -- reg1 read-only (switch)
            for i in 0 to 3 loop
              if S_AXI_WSTRB(i) = '1' then
                regs(idx)(8*i+7 downto 8*i) <= S_AXI_WDATA(8*i+7 downto 8*i);
              end if;
            end loop;
          end if;
        else
          axi_awready <= '0';
          axi_wready  <= '0';
        end if;

        if axi_bvalid = '1' and S_AXI_BREADY = '1' then
          axi_bvalid <= '0';
        end if;
      end if;
    end if;
  end process;

  ------------------------------------------------------------------
  -- FSM baca (AR diterima, lalu R data)
  ------------------------------------------------------------------
  process(S_AXI_ACLK)
    variable idx : integer range 0 to 3;
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        axi_arready <= '0';
        axi_rvalid  <= '0';
        axi_rdata   <= (others => '0');
      else
        if axi_arready = '0' and S_AXI_ARVALID = '1' and axi_rvalid = '0' then
          axi_arready <= '1';
          axi_rvalid  <= '1';
          idx := to_integer(unsigned(S_AXI_ARADDR(C_S_AXI_ADDR_WIDTH-1 downto 2)));
          if idx = 1 then
            axi_rdata <= x"0000" & sw_s2;   -- reg1 = status switch
          else
            axi_rdata <= regs(idx);
          end if;
        else
          axi_arready <= '0';
        end if;

        if axi_rvalid = '1' and S_AXI_RREADY = '1' then
          axi_rvalid <= '0';
        end if;
      end if;
    end if;
  end process;
end Behavioral;