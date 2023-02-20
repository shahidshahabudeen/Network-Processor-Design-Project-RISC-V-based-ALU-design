VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL a(31:0)
        SIGNAL b(31:0)
        SIGNAL o(31:0)
        SIGNAL o(7:0)
        SIGNAL o(15:8)
        SIGNAL o(23:16)
        SIGNAL o(31:24)
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        SIGNAL XLXN_10
        SIGNAL a(15:8)
        SIGNAL b(15:8)
        SIGNAL s
        SIGNAL a(23:16)
        SIGNAL b(23:16)
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL a(31:24)
        SIGNAL b(31:24)
        PORT Input a(31:0)
        PORT Input b(31:0)
        PORT Output o(31:0)
        PORT Input s
        BEGIN BLOCKDEF mux_8bits2to1
            TIMESTAMP 2023 1 22 5 33 5
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 mux_8bits2to1
            PIN a(7:0) a(7:0)
            PIN b(7:0) b(7:0)
            PIN s s
            PIN o(7:0) o(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 mux_8bits2to1
            PIN a(7:0) a(15:8)
            PIN b(7:0) b(15:8)
            PIN s s
            PIN o(7:0) o(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_3 mux_8bits2to1
            PIN a(7:0) a(23:16)
            PIN b(7:0) b(23:16)
            PIN s s
            PIN o(7:0) o(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_4 mux_8bits2to1
            PIN a(7:0) a(31:24)
            PIN b(7:0) b(31:24)
            PIN s s
            PIN o(7:0) o(31:24)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 464 672 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 480 960 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 480 1232 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 480 1536 R0
        END INSTANCE
        BEGIN BRANCH a(31:0)
            WIRE 1488 432 1808 432
        END BRANCH
        BEGIN BRANCH b(31:0)
            WIRE 1504 496 1808 496
        END BRANCH
        BEGIN BRANCH o(31:0)
            WIRE 1536 576 1824 576
        END BRANCH
        IOMARKER 1824 576 o(31:0) R0 28
        IOMARKER 1504 496 b(31:0) R180 28
        IOMARKER 1488 432 a(31:0) R180 28
        BEGIN BRANCH o(7:0)
            WIRE 848 512 896 512
        END BRANCH
        BEGIN BRANCH o(15:8)
            WIRE 864 800 928 800
        END BRANCH
        BEGIN BRANCH o(23:16)
            WIRE 864 1072 944 1072
        END BRANCH
        BEGIN BRANCH o(31:24)
            WIRE 864 1376 944 1376
        END BRANCH
        BEGIN BRANCH a(7:0)
            WIRE 384 512 464 512
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 384 576 464 576
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 400 800 480 800
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 400 864 480 864
        END BRANCH
        BEGIN BRANCH s
            WIRE 384 640 464 640
            WIRE 384 640 384 928
            WIRE 384 928 400 928
            WIRE 400 928 480 928
            WIRE 384 928 384 1200
            WIRE 384 1200 416 1200
            WIRE 416 1200 480 1200
            WIRE 384 1200 384 1504
            WIRE 384 1504 416 1504
            WIRE 416 1504 480 1504
            WIRE 384 1504 384 1616
        END BRANCH
        BEGIN BRANCH a(23:16)
            WIRE 416 1072 480 1072
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 416 1136 480 1136
        END BRANCH
        IOMARKER 384 1616 s R90 28
        BEGIN BRANCH a(31:24)
            WIRE 432 1376 480 1376
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 432 1440 480 1440
        END BRANCH
    END SHEET
END SCHEMATIC
