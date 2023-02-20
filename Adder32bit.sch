VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL cin
        SIGNAL XLXN_26
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL cout
        BEGIN SIGNAL sum(31:24)
        END SIGNAL
        BEGIN SIGNAL sum(7:0)
        END SIGNAL
        BEGIN SIGNAL b(15:8)
        END SIGNAL
        BEGIN SIGNAL a(15:8)
        END SIGNAL
        BEGIN SIGNAL sum(15:8)
        END SIGNAL
        SIGNAL XLXN_40
        BEGIN SIGNAL a(23:16)
        END SIGNAL
        BEGIN SIGNAL b(23:16)
        END SIGNAL
        BEGIN SIGNAL sum(23:16)
        END SIGNAL
        BEGIN SIGNAL a(31:24)
        END SIGNAL
        BEGIN SIGNAL b(31:24)
        END SIGNAL
        BEGIN SIGNAL b(7:0)
        END SIGNAL
        BEGIN SIGNAL a(7:0)
        END SIGNAL
        SIGNAL a(31:0)
        SIGNAL b(31:0)
        SIGNAL sum(31:0)
        PORT Input cin
        PORT Output cout
        PORT Input a(31:0)
        PORT Input b(31:0)
        PORT Output sum(31:0)
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
        BEGIN BLOCK XLXI_2 Add8bits
            PIN a(7:0) a(15:8)
            PIN b(7:0) b(15:8)
            PIN Cin XLXN_26
            PIN Cout XLXN_27
            PIN sum(7:0) sum(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_5 Add8bits
            PIN a(7:0) a(23:16)
            PIN b(7:0) b(23:16)
            PIN Cin XLXN_27
            PIN Cout XLXN_28
            PIN sum(7:0) sum(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_6 Add8bits
            PIN a(7:0) a(31:24)
            PIN b(7:0) b(31:24)
            PIN Cin XLXN_28
            PIN Cout cout
            PIN sum(7:0) sum(31:24)
        END BLOCK
        BEGIN BLOCK XLXI_7 Add8bits
            PIN a(7:0) a(7:0)
            PIN b(7:0) b(7:0)
            PIN Cin cin
            PIN Cout XLXN_26
            PIN sum(7:0) sum(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_7 160 1072 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 752 1072 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1344 1072 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1968 1072 R0
        END INSTANCE
        BEGIN BRANCH cin
            WIRE 128 1040 160 1040
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 544 976 640 976
            WIRE 640 976 640 1040
            WIRE 640 1040 752 1040
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 1136 976 1232 976
            WIRE 1232 976 1232 1040
            WIRE 1232 1040 1344 1040
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 1728 976 1840 976
            WIRE 1840 976 1840 1040
            WIRE 1840 1040 1968 1040
        END BRANCH
        BEGIN BRANCH cout
            WIRE 2352 976 2384 976
        END BRANCH
        IOMARKER 2384 976 cout R0 28
        BEGIN BRANCH sum(31:24)
            WIRE 2352 912 2384 912
        END BRANCH
        IOMARKER 128 1040 cin R180 28
        BEGIN BRANCH sum(7:0)
            WIRE 544 912 560 912
            WIRE 560 848 560 912
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 688 944 688 976
            WIRE 688 976 752 976
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 736 848 736 912
            WIRE 736 912 752 912
        END BRANCH
        BEGIN BRANCH sum(15:8)
            WIRE 1136 912 1168 912
            WIRE 1168 880 1168 912
        END BRANCH
        BEGIN BRANCH a(23:16)
            WIRE 1312 912 1344 912
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 1296 976 1344 976
        END BRANCH
        BEGIN BRANCH sum(23:16)
            WIRE 1728 912 1760 912
        END BRANCH
        BEGIN BRANCH a(31:24)
            WIRE 1936 912 1968 912
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 1920 976 1952 976
            WIRE 1952 976 1968 976
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 128 976 160 976
        END BRANCH
        BEGIN BRANCH a(7:0)
            WIRE 112 912 160 912
        END BRANCH
        BEGIN BRANCH a(31:0)
            WIRE 496 544 688 544
        END BRANCH
        BEGIN BRANCH b(31:0)
            WIRE 496 592 688 592
        END BRANCH
        BEGIN BRANCH sum(31:0)
            WIRE 832 576 992 576
        END BRANCH
        IOMARKER 496 544 a(31:0) R180 28
        IOMARKER 496 592 b(31:0) R180 28
        IOMARKER 992 576 sum(31:0) R0 28
    END SHEET
END SCHEMATIC
