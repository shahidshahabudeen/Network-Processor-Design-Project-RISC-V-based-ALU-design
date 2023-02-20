VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL a(31:0)
        SIGNAL XLXN_3
        SIGNAL o(31:0)
        SIGNAL cout
        PORT Input a(31:0)
        PORT Output o(31:0)
        PORT Output cout
        BEGIN BLOCKDEF Adder32bit
            TIMESTAMP 2023 1 22 4 42 34
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 Adder32bit
            PIN cin XLXN_3
            PIN a(31:0) a(31:0)
            PIN b(31:0) a(31:0)
            PIN cout cout
            PIN sum(31:0) o(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 gnd
            PIN G XLXN_3
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1200 1072 R0
        END INSTANCE
        BEGIN BRANCH a(31:0)
            WIRE 1040 1008 1184 1008
            WIRE 1184 1008 1184 1040
            WIRE 1184 1040 1200 1040
            WIRE 1184 976 1200 976
            WIRE 1184 976 1184 1008
        END BRANCH
        IOMARKER 1040 1008 a(31:0) R180 28
        BEGIN BRANCH XLXN_3
            WIRE 816 912 1200 912
        END BRANCH
        INSTANCE XLXI_3 752 1040 R0
        BEGIN BRANCH o(31:0)
            WIRE 1584 1040 1616 1040
        END BRANCH
        IOMARKER 1616 1040 o(31:0) R0 28
        BEGIN BRANCH cout
            WIRE 1584 912 1616 912
        END BRANCH
        IOMARKER 1616 912 cout R0 28
    END SHEET
END SCHEMATIC
