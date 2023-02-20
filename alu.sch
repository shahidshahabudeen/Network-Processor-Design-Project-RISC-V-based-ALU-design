VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL rs1(31:0)
        SIGNAL I(30)
        SIGNAL I(12)
        SIGNAL I(31:0)
        SIGNAL XLXN_8
        SIGNAL XLXN_9(31:0)
        SIGNAL XLXN_10(31:0)
        SIGNAL o(31:0)
        SIGNAL I(13)
        SIGNAL s(1)
        SIGNAL s(1:0)
        SIGNAL s(0)
        SIGNAL rs2(31:0)
        SIGNAL XLXN_24(31:0)
        SIGNAL XLXN_25(31:0)
        PORT Input rs1(31:0)
        PORT Input I(31:0)
        PORT Output o(31:0)
        PORT Input rs2(31:0)
        BEGIN BLOCKDEF add_sub_32bit
            TIMESTAMP 2023 1 22 21 21 31
            RECTANGLE N 64 -192 432 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 432 -160 496 -160 
            RECTANGLE N 432 -44 496 -20 
            LINE N 432 -32 496 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF and_orb
            TIMESTAMP 2023 1 22 23 8 1
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF mux_4to1_32bit
            TIMESTAMP 2023 1 22 23 41 25
            RECTANGLE N 64 -320 320 0 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF buf
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
            LINE N 64 0 128 -32 
            LINE N 128 -32 64 -64 
            LINE N 64 -64 64 0 
        END BLOCKDEF
        BEGIN BLOCKDEF shifter
            TIMESTAMP 2023 1 23 7 23 3
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 add_sub_32bit
            PIN sub_add_sel I(30)
            PIN a(31:0) rs1(31:0)
            PIN b(31:0) rs2(31:0)
            PIN cout XLXN_8
            PIN out_add_sub(31:0) XLXN_9(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 and_orb
            PIN a(31:0) rs1(31:0)
            PIN b(31:0) rs2(31:0)
            PIN and_orb I(12)
            PIN o(31:0) XLXN_10(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 mux_4to1_32bit
            PIN s(1:0) s(1:0)
            PIN a(31:0) XLXN_9(31:0)
            PIN b(31:0) XLXN_10(31:0)
            PIN c(31:0) XLXN_25(31:0)
            PIN d(31:0)
            PIN o(31:0) o(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 and2b1
            PIN I0 I(13)
            PIN I1 I(12)
            PIN O s(1)
        END BLOCK
        BEGIN BLOCK XLXI_5 buf
            PIN I I(13)
            PIN O s(0)
        END BLOCK
        BEGIN BLOCK XLXI_6 shifter
            PIN a(31:0) rs2(31:0)
            PIN o(31:0) XLXN_25(31:0)
            PIN cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1248 944 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1248 1248 R0
        END INSTANCE
        BEGIN BRANCH rs1(31:0)
            WIRE 1040 848 1152 848
            WIRE 1152 848 1152 1088
            WIRE 1152 1088 1248 1088
            WIRE 1152 848 1248 848
        END BRANCH
        IOMARKER 1040 848 rs1(31:0) R180 28
        BEGIN BRANCH I(30)
            WIRE 1072 784 1248 784
        END BRANCH
        BEGIN BRANCH I(12)
            WIRE 1072 1216 1168 1216
            WIRE 1168 1216 1248 1216
            WIRE 1168 1216 1168 1312
            WIRE 1168 1312 1296 1312
        END BRANCH
        BEGIN BRANCH I(31:0)
            WIRE 464 608 768 608
        END BRANCH
        IOMARKER 464 608 I(31:0) R180 28
        BEGIN BRANCH XLXN_8
            WIRE 1744 784 1792 784
        END BRANCH
        BEGIN BRANCH XLXN_9(31:0)
            WIRE 1744 912 1808 912
            WIRE 1808 848 2112 848
            WIRE 1808 848 1808 912
        END BRANCH
        BEGIN BRANCH XLXN_10(31:0)
            WIRE 1632 1088 1952 1088
            WIRE 1952 912 1952 1088
            WIRE 1952 912 2112 912
        END BRANCH
        BEGIN INSTANCE XLXI_3 2112 1072 R0
        END INSTANCE
        BEGIN BRANCH o(31:0)
            WIRE 2496 784 2528 784
        END BRANCH
        IOMARKER 2528 784 o(31:0) R0 28
        INSTANCE XLXI_4 1296 1440 R0
        BEGIN BRANCH I(13)
            WIRE 1072 1376 1296 1376
            WIRE 1072 1376 1072 1504
            WIRE 1072 1504 1296 1504
        END BRANCH
        BEGIN BRANCH s(1)
            WIRE 1552 1344 1728 1344
        END BRANCH
        BEGIN BRANCH s(1:0)
            WIRE 2000 784 2112 784
        END BRANCH
        INSTANCE XLXI_5 1296 1536 R0
        BEGIN BRANCH s(0)
            WIRE 1520 1504 1744 1504
        END BRANCH
        BEGIN BRANCH rs2(31:0)
            WIRE 1040 912 1056 912
            WIRE 1056 912 1088 912
            WIRE 1088 912 1232 912
            WIRE 1232 912 1248 912
            WIRE 1088 912 1088 1152
            WIRE 1088 1152 1248 1152
            WIRE 1056 912 1056 1680
            WIRE 1056 1680 1232 1680
        END BRANCH
        IOMARKER 1040 912 rs2(31:0) R180 28
        BEGIN INSTANCE XLXI_6 1232 1776 R0
        END INSTANCE
        BEGIN BRANCH XLXN_25(31:0)
            WIRE 1616 1680 1856 1680
            WIRE 1856 1120 1856 1680
            WIRE 1856 1120 1984 1120
            WIRE 1984 976 1984 1120
            WIRE 1984 976 2112 976
        END BRANCH
    END SHEET
END SCHEMATIC
