----------------------------------------------------------------------------------
-- Testbench AXI4-Lite master manual untuk axi_lite_gpio_v1_0 (Langkah 7)
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_axi_lite_gpio is
end tb_axi_lite_gpio;

architecture sim of tb_axi_lite_gpio is
  constant CLK_PERIOD : time := 10 ns;

  signal clk     : std_logic := '0';
  signal resetn  : std_logic := '0';
  signal awaddr  : std_logic_vector(3 downto 0)  := (others => '0');
  signal awvalid : std_logic := '0';
  signal awready : std_logic;
  signal wdata   : std_logic_vector(31 downto 0) := (others => '0');
  signal wstrb   : std_logic_vector(3 downto 0)  := "1111";
  signal wvalid  : std_logic := '0';
  signal wready  : std_logic;
  signal bresp   : std_logic_vector(1 downto 0);
  signal bvalid  : std_logic;
  signal bready  : std_logic := '0';
  signal araddr  : std_logic_vector(3 downto 0)  := (others => '0');
  signal arvalid : std_logic := '0';
  signal arready : std_logic;
  signal rdata   : std_logic_vector(31 downto 0);
  signal rresp   : std_logic_vector(1 downto 0);
  signal rvalid  : std_logic;
  signal rready  : std_logic := '0';
  signal gpio_out: std_logic_vector(15 downto 0);
  signal sw      : std_logic_vector(15 downto 0) := (others => '0');
begin
  clk <= not clk after CLK_PERIOD/2;

  uut : entity work.axi_lite_gpio_v1_0
    port map (
      S_AXI_ACLK => clk, S_AXI_ARESETN => resetn,
      S_AXI_AWADDR => awaddr, S_AXI_AWPROT => "000",
      S_AXI_AWVALID => awvalid, S_AXI_AWREADY => awready,
      S_AXI_WDATA => wdata, S_AXI_WSTRB => wstrb,
      S_AXI_WVALID => wvalid, S_AXI_WREADY => wready,
      S_AXI_BRESP => bresp, S_AXI_BVALID => bvalid, S_AXI_BREADY => bready,
      S_AXI_ARADDR => araddr, S_AXI_ARPROT => "000",
      S_AXI_ARVALID => arvalid, S_AXI_ARREADY => arready,
      S_AXI_RDATA => rdata, S_AXI_RRESP => rresp,
      S_AXI_RVALID => rvalid, S_AXI_RREADY => rready,
      gpio_out => gpio_out, sw => sw);

  stim : process
    variable rd : std_logic_vector(31 downto 0);

    procedure axi_write(addr : in std_logic_vector(3 downto 0);
                        data : in std_logic_vector(31 downto 0)) is
    begin
      wait until rising_edge(clk);
      awaddr <= addr;  awvalid <= '1';
      wdata  <= data;  wvalid  <= '1';
      bready <= '1';
      loop
        wait until rising_edge(clk);
        if awready = '1' and wready = '1' then
          awvalid <= '0';  wvalid <= '0';
        end if;
        exit when bvalid = '1';
      end loop;
      bready <= '0';
    end procedure;

    procedure axi_read(addr : in std_logic_vector(3 downto 0);
                       data : out std_logic_vector(31 downto 0)) is
    begin
      wait until rising_edge(clk);
      araddr <= addr;  arvalid <= '1';
      rready <= '1';
      loop
        wait until rising_edge(clk);
        if arready = '1' then
          arvalid <= '0';
        end if;
        if rvalid = '1' then
          data := rdata;
          exit;
        end if;
      end loop;
      rready <= '0';
    end procedure;
  begin
    resetn <= '0';
    wait for 100 ns;
    resetn <= '1';
    wait for 50 ns;

    -- Uji 1: tulis reg0 -> LED
    axi_write("0000", x"0000A5A5");
    wait for 20 ns;
    assert gpio_out = x"A5A5" report "GAGAL: gpio_out != A5A5" severity error;

    -- Uji 2: baca balik reg0
    axi_read("0000", rd);
    assert rd = x"0000A5A5" report "GAGAL: baca reg0" severity error;

    -- Uji 3: reg1 = status switch (Tugas 1)
    sw <= x"F0F0";
    wait for 5 * CLK_PERIOD;           -- tunggu sinkronisasi 2 FF
    axi_read("0100", rd);
    assert rd = x"0000F0F0" report "GAGAL: baca reg1 (switch)" severity error;

    -- Uji 4: tulis ke reg1 harus diabaikan (read-only)
    axi_write("0100", x"FFFFFFFF");
    axi_read("0100", rd);
    assert rd = x"0000F0F0" report "GAGAL: reg1 seharusnya read-only" severity error;

    -- Uji 5: reg2 & reg3 R/W
    axi_write("1000", x"DEADBEEF");
    axi_read("1000", rd);
    assert rd = x"DEADBEEF" report "GAGAL: reg2" severity error;
    axi_write("1100", x"12345678");
    axi_read("1100", rd);
    assert rd = x"12345678" report "GAGAL: reg3" severity error;

    -- Uji 6: pola LED berjalan
    for i in 0 to 15 loop
      axi_write("0000", std_logic_vector(to_unsigned(2**i, 32)));
      wait for 3 * CLK_PERIOD;
    end loop;

    report "SIMULASI SELESAI - cek pesan error (jika ada) di atas" severity note;
    wait;
  end process;
end sim;
