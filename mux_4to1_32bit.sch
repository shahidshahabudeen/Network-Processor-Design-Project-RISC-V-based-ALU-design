VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL s(1:0)
        SIGNAL XLXN_2
        SIGNAL s(0)
        SIGNAL s(1)
        SIGNAL a(31:0)
        SIGNAL b(31:0)
        SIGNAL c(31:0)
        SIGNAL d(31:0)
        SIGNAL XLXN_9(31:0)
        SIGNAL XLXN_10(31:0)
        SIGNAL o(31:0)
        PORT Input s(1:0)
        PORT Input a(31:0)
        PORT Input b(31:0)
        PORT Input c(31:0)
        PORT Input d(31:0)
        PORT Output o(31:0)
        BEGIN BLOCKDEF mux_32bits
            TIMESTAMP 2023 1 22 17 53 14
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 mux_32bits
            PIN a(31:0) a(31:0)
            PIN b(31:0) b(31:0)
            PIN s s(0)
            PIN o(31:0) XLXN_9(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 mux_32bits
            PIN a(31:0) c(31:0)
            PIN b(31:0) d(31:0)
            PIN s s(0)
            PIN o(31:0) XLXN_10(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 mux_32bits
            PIN a(31:0) XLXN_9(31:0)
            PIN b(31:0) XLXN_10(31:0)
            PIN s s(1)
            PIN o(31:0) o(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 912 560 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 912 832 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1552 640 R0
        END INSTANCE
        BEGIN BRANCH s(1:0)
            WIRE 720 224 864 224
        END BRANCH
        IOMARKER 720 224 s(1:0) R180 28
        BEGIN BRANCH s(0)
            WIRE 800 528 896 528
            WIRE 896 528 912 528
            WIRE 896 528 896 800
            WIRE 896 800 912 800
        END BRANCH
        BEGIN BRANCH s(1)
            WIRE 1488 608 1552 608
        END BRANCH
        BEGIN BRANCH a(31:0)
            WIRE 880 400 912 400
        END BRANCH
        IOMARKER 880 400 a(31:0) R180 28
        BEGIN BRANCH b(31:0)
            WIRE 880 464 912 464
        END BRANCH
        IOMARKER 880 464 b(31:0) R180 28
        BEGIN BRANCH c(31:0)
            WIRE 880 672 912 672
        END BRANCH
        IOMARKER 880 672 c(31:0) R180 28
        BEGIN BRANCH d(31:0)
            WIRE 880 736 912 736
        END BRANCH
        IOMARKER 880 736 d(31:0) R180 28
        BEGIN BRANCH XLXN_9(31:0)
            WIRE 1296 400 1424 400
            WIRE 1424 400 1424 480
            WIRE 1424 480 1552 480
        END BRANCH
        BEGIN BRANCH XLXN_10(31:0)
            WIRE 1296 672 1424 672
            WIRE 1424 544 1424 672
            WIRE 1424 544 1552 544
        END BRANCH
        BEGIN BRANCH o(31:0)
            WIRE 1936 480 1968 480
        END BRANCH
        IOMARKER 1968 480 o(31:0) R0 28
    END SHEET
END SCHEMATIC
