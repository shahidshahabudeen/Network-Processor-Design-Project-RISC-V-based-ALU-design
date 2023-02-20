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
        SIGNAL and_orb
        SIGNAL XLXN_5(31:0)
        SIGNAL XLXN_6(31:0)
        SIGNAL XLXN_7(31:0)
        PORT Input a(31:0)
        PORT Input b(31:0)
        PORT Output o(31:0)
        PORT Input and_orb
        BEGIN BLOCKDEF and_32bitw
            TIMESTAMP 2023 1 22 21 45 34
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF or_32bitwise
            TIMESTAMP 2023 1 22 22 10 5
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
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
        BEGIN BLOCK XLXI_3 mux_32bits
            PIN a(31:0) XLXN_6(31:0)
            PIN b(31:0) XLXN_7(31:0)
            PIN s and_orb
            PIN o(31:0) o(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 or_32bitwise
            PIN a(31:0) a(31:0)
            PIN b(31:0) b(31:0)
            PIN o(31:0) XLXN_6(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 and_32bitw
            PIN a(31:0) a(31:0)
            PIN b(31:0) b(31:0)
            PIN o(31:0) XLXN_7(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_3 2160 1232 R0
        END INSTANCE
        BEGIN BRANCH a(31:0)
            WIRE 1248 1072 1392 1072
            WIRE 1392 1072 1408 1072
            WIRE 1392 1072 1392 1088
            WIRE 1312 1088 1392 1088
            WIRE 1312 1088 1312 1312
            WIRE 1312 1312 1408 1312
        END BRANCH
        BEGIN BRANCH b(31:0)
            WIRE 1248 1136 1360 1136
            WIRE 1360 1136 1392 1136
            WIRE 1392 1136 1408 1136
            WIRE 1360 1136 1360 1376
            WIRE 1360 1376 1408 1376
        END BRANCH
        BEGIN BRANCH o(31:0)
            WIRE 2544 1072 2576 1072
        END BRANCH
        IOMARKER 2576 1072 o(31:0) R0 28
        BEGIN BRANCH and_orb
            WIRE 2128 1200 2160 1200
        END BRANCH
        IOMARKER 2128 1200 and_orb R180 28
        IOMARKER 1248 1072 a(31:0) R180 28
        IOMARKER 1248 1136 b(31:0) R180 28
        BEGIN BRANCH XLXN_6(31:0)
            WIRE 1792 1072 2160 1072
        END BRANCH
        BEGIN BRANCH XLXN_7(31:0)
            WIRE 1792 1312 1968 1312
            WIRE 1968 1136 1968 1312
            WIRE 1968 1136 2160 1136
        END BRANCH
        BEGIN INSTANCE XLXI_4 1408 1168 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1408 1408 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
