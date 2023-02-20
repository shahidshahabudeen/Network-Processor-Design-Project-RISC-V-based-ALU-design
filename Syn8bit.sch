VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_31
        SIGNAL b(7:0)
        SIGNAL XLXN_48(7:0)
        SIGNAL XLXN_49
        SIGNAL a(7:0)
        SIGNAL XLXN_54(7:0)
        SIGNAL XLXN_55
        SIGNAL cin
        SIGNAL XLXN_57
        SIGNAL XLXN_58
        SIGNAL XLXN_59
        SIGNAL XLXN_60(7:0)
        SIGNAL XLXN_61
        SIGNAL synSUM(7:0)
        SIGNAL cout
        SIGNAL XLXN_64
        SIGNAL XLXN_65
        SIGNAL clk
        PORT Input b(7:0)
        PORT Input a(7:0)
        PORT Input cin
        PORT Output synSUM(7:0)
        PORT Output cout
        PORT Input clk
        BEGIN BLOCKDEF Add8bits
            TIMESTAMP 2023 1 22 1 37 52
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -172 384 -148 
        END BLOCKDEF
        BEGIN BLOCKDEF ifd8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            LINE N 0 -128 64 -128 
            LINE N 84 -128 64 -140 
            LINE N 64 -116 84 -128 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF ifd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 84 -128 64 -140 
            LINE N 64 -116 84 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 Add8bits
            PIN a(7:0) XLXN_54(7:0)
            PIN b(7:0) XLXN_48(7:0)
            PIN Cin XLXN_55
            PIN Cout XLXN_61
            PIN sum(7:0) XLXN_60(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_21 ifd8
            PIN C clk
            PIN D(7:0) b(7:0)
            PIN Q(7:0) XLXN_48(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_23 ifd8
            PIN C clk
            PIN D(7:0) a(7:0)
            PIN Q(7:0) XLXN_54(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_24 ifd
            PIN C clk
            PIN D cin
            PIN Q XLXN_55
        END BLOCK
        BEGIN BLOCK XLXI_25 ifd8
            PIN C clk
            PIN D(7:0) XLXN_60(7:0)
            PIN Q(7:0) synSUM(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_26 ifd
            PIN C clk
            PIN D XLXN_61
            PIN Q cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1056 1984 R0
        END INSTANCE
        INSTANCE XLXI_21 368 2064 R0
        BEGIN BRANCH b(7:0)
            WIRE 240 1808 368 1808
        END BRANCH
        BEGIN BRANCH XLXN_48(7:0)
            WIRE 752 1808 896 1808
            WIRE 896 1808 896 1888
            WIRE 896 1888 1056 1888
        END BRANCH
        IOMARKER 240 1808 b(7:0) R180 28
        INSTANCE XLXI_23 368 1728 R0
        BEGIN BRANCH a(7:0)
            WIRE 240 1472 368 1472
        END BRANCH
        IOMARKER 240 1472 a(7:0) R180 28
        BEGIN BRANCH XLXN_54(7:0)
            WIRE 752 1472 912 1472
            WIRE 912 1472 912 1824
            WIRE 912 1824 1056 1824
        END BRANCH
        INSTANCE XLXI_24 368 2416 R0
        BEGIN BRANCH XLXN_55
            WIRE 752 2160 896 2160
            WIRE 896 1952 896 2160
            WIRE 896 1952 1056 1952
        END BRANCH
        BEGIN BRANCH cin
            WIRE 288 2160 368 2160
        END BRANCH
        IOMARKER 288 2160 cin R180 28
        INSTANCE XLXI_25 1616 1888 R0
        INSTANCE XLXI_26 1616 2304 R0
        BEGIN BRANCH XLXN_60(7:0)
            WIRE 1440 1824 1520 1824
            WIRE 1520 1632 1520 1824
            WIRE 1520 1632 1616 1632
        END BRANCH
        BEGIN BRANCH XLXN_61
            WIRE 1440 1888 1520 1888
            WIRE 1520 1888 1520 2048
            WIRE 1520 2048 1616 2048
        END BRANCH
        BEGIN BRANCH synSUM(7:0)
            WIRE 2000 1632 2112 1632
        END BRANCH
        BEGIN BRANCH cout
            WIRE 2000 2048 2112 2048
        END BRANCH
        IOMARKER 2112 1632 synSUM(7:0) R0 28
        IOMARKER 2112 2048 cout R0 28
        BEGIN BRANCH clk
            WIRE 80 1600 80 1936
            WIRE 80 1936 80 2416
            WIRE 80 2416 272 2416
            WIRE 272 2416 448 2416
            WIRE 448 2416 448 2448
            WIRE 448 2448 448 2480
            WIRE 448 2480 448 2512
            WIRE 448 2480 1568 2480
            WIRE 448 2448 1488 2448
            WIRE 80 1936 368 1936
            WIRE 80 1600 368 1600
            WIRE 256 2512 448 2512
            WIRE 272 2288 368 2288
            WIRE 272 2288 272 2416
            WIRE 1488 1840 1488 2448
            WIRE 1488 1840 1616 1840
            WIRE 1568 2176 1616 2176
            WIRE 1568 2176 1568 2480
            WIRE 1616 1760 1616 1840
        END BRANCH
        IOMARKER 256 2512 clk R180 28
    END SHEET
END SCHEMATIC
