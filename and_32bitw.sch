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
        SIGNAL a(15:8)
        SIGNAL b(15:8)
        SIGNAL a(23:16)
        SIGNAL b(23:16)
        SIGNAL a(31:24)
        SIGNAL b(31:24)
        PORT Input a(31:0)
        PORT Input b(31:0)
        PORT Output o(31:0)
        BEGIN BLOCKDEF and_8bitw
            TIMESTAMP 2023 1 22 21 22 33
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and_8bitw
            PIN a(7:0) a(7:0)
            PIN b(7:0) b(7:0)
            PIN o(7:0) o(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 and_8bitw
            PIN a(7:0) a(15:8)
            PIN b(7:0) b(15:8)
            PIN o(7:0) o(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_3 and_8bitw
            PIN a(7:0) a(23:16)
            PIN b(7:0) b(23:16)
            PIN o(7:0) o(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_4 and_8bitw
            PIN a(7:0) a(31:24)
            PIN b(7:0) b(31:24)
            PIN o(7:0) o(31:24)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 880 608 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 880 832 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 880 1040 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 880 1264 R0
        END INSTANCE
        BEGIN BRANCH a(31:0)
            WIRE 1680 304 2064 304
        END BRANCH
        BEGIN BRANCH b(31:0)
            WIRE 1696 384 2064 384
        END BRANCH
        BEGIN BRANCH o(31:0)
            WIRE 2176 352 2432 352
        END BRANCH
        IOMARKER 1680 304 a(31:0) R180 28
        IOMARKER 1696 384 b(31:0) R180 28
        IOMARKER 2432 352 o(31:0) R0 28
        BEGIN BRANCH o(7:0)
            WIRE 1264 512 1360 512
        END BRANCH
        BEGIN BRANCH o(15:8)
            WIRE 1264 736 1376 736
        END BRANCH
        BEGIN BRANCH o(23:16)
            WIRE 1264 944 1376 944
        END BRANCH
        BEGIN BRANCH o(31:24)
            WIRE 1264 1168 1392 1168
        END BRANCH
        BEGIN BRANCH a(7:0)
            WIRE 800 512 880 512
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 800 576 880 576
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 800 736 880 736
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 800 800 880 800
        END BRANCH
        BEGIN BRANCH a(23:16)
            WIRE 800 944 880 944
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 800 1008 880 1008
        END BRANCH
        BEGIN BRANCH a(31:24)
            WIRE 800 1168 880 1168
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 800 1232 880 1232
        END BRANCH
    END SHEET
END SCHEMATIC
