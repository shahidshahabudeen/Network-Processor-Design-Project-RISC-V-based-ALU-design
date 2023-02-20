VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL NET1
        SIGNAL NET2
        SIGNAL NET3
        SIGNAL NET4
        SIGNAL A
        SIGNAL B
        SIGNAL Cin
        SIGNAL Sum
        SIGNAL Cout
        PORT Input A
        PORT Input B
        PORT Input Cin
        PORT Output Sum
        PORT Output Cout
        BEGIN BLOCKDEF xor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -96 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF or3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 xor2
            PIN I0 B
            PIN I1 A
            PIN O NET1
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 B
            PIN I1 A
            PIN O NET2
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 Cin
            PIN I1 A
            PIN O NET3
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 Cin
            PIN I1 B
            PIN O NET4
        END BLOCK
        BEGIN BLOCK XLXI_5 xor2
            PIN I0 Cin
            PIN I1 NET1
            PIN O Sum
        END BLOCK
        BEGIN BLOCK XLXI_6 or3
            PIN I0 NET4
            PIN I1 NET3
            PIN I2 NET2
            PIN O Cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1056 768 R0
        BEGIN BRANCH NET3
            WIRE 1312 1056 1488 1056
            WIRE 1488 1056 1728 1056
            BEGIN DISPLAY 1488 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH NET4
            WIRE 1312 1200 1488 1200
            WIRE 1488 1200 1728 1200
            WIRE 1728 1120 1728 1200
            BEGIN DISPLAY 1488 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH NET1
            WIRE 1312 672 1328 672
            WIRE 1328 672 1328 720
            WIRE 1328 720 1488 720
            WIRE 1488 720 1712 720
            BEGIN DISPLAY 1488 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A
            WIRE 832 640 1024 640
            WIRE 1024 640 1056 640
            WIRE 1024 640 1024 880
            WIRE 1024 880 1040 880
            WIRE 1040 880 1056 880
            WIRE 1040 880 1040 1024
            WIRE 1040 1024 1056 1024
        END BRANCH
        IOMARKER 832 640 A R180 28
        BEGIN BRANCH B
            WIRE 832 704 992 704
            WIRE 992 704 1056 704
            WIRE 992 704 992 944
            WIRE 992 944 1008 944
            WIRE 1008 944 1056 944
            WIRE 1008 944 1008 1168
            WIRE 1008 1168 1056 1168
        END BRANCH
        IOMARKER 832 704 B R180 28
        INSTANCE XLXI_4 1056 1296 R0
        INSTANCE XLXI_3 1056 1152 R0
        INSTANCE XLXI_2 1056 1008 R0
        BEGIN BRANCH NET2
            WIRE 1312 912 1488 912
            WIRE 1488 912 1728 912
            WIRE 1728 912 1728 992
            BEGIN DISPLAY 1488 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 832 784 960 784
            WIRE 960 784 960 1088
            WIRE 960 1088 992 1088
            WIRE 992 1088 1056 1088
            WIRE 992 1088 992 1232
            WIRE 992 1232 1056 1232
            WIRE 960 784 1712 784
        END BRANCH
        IOMARKER 832 784 Cin R180 28
        INSTANCE XLXI_5 1712 848 R0
        INSTANCE XLXI_6 1728 1184 R0
        BEGIN BRANCH Sum
            WIRE 1968 752 2032 752
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 1984 1056 2032 1056
        END BRANCH
        IOMARKER 2032 752 Sum R0 28
        IOMARKER 2032 1056 Cout R0 28
    END SHEET
END SCHEMATIC
