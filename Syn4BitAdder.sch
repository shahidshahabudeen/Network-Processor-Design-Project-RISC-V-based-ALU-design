VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        BEGIN BLOCKDEF SynFA
            TIMESTAMP 2023 1 21 22 36 49
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 SynFA
            PIN a
            PIN b
            PIN cin
            PIN clk
            PIN sum
            PIN cout
        END BLOCK
        BEGIN BLOCK XLXI_2 SynFA
            PIN a
            PIN b
            PIN cin
            PIN clk
            PIN sum
            PIN cout
        END BLOCK
        BEGIN BLOCK XLXI_3 SynFA
            PIN a
            PIN b
            PIN cin
            PIN clk
            PIN sum
            PIN cout
        END BLOCK
        BEGIN BLOCK XLXI_4 SynFA
            PIN a
            PIN b
            PIN cin
            PIN clk
            PIN sum
            PIN cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 624 752 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1168 752 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1696 752 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 2208 752 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
