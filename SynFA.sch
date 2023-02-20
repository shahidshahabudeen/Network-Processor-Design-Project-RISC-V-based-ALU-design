VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL a
        SIGNAL b
        SIGNAL sum
        SIGNAL XLXN_7
        SIGNAL cin
        SIGNAL XLXN_11
        SIGNAL XLXN_17
        SIGNAL XLXN_19
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL cout
        SIGNAL clk
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        PORT Input a
        PORT Input b
        PORT Output sum
        PORT Input cin
        PORT Output cout
        PORT Input clk
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
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and2
            PIN I0 XLXN_17
            PIN I1 XLXN_19
            PIN O XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 cin
            PIN I1 XLXN_17
            PIN O XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 cin
            PIN I1 XLXN_19
            PIN O XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_4 or3
            PIN I0 XLXN_23
            PIN I1 XLXN_22
            PIN I2 XLXN_21
            PIN O cout
        END BLOCK
        BEGIN BLOCK XLXI_5 xor2
            PIN I0 XLXN_17
            PIN I1 XLXN_19
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_6 xor2
            PIN I0 cin
            PIN I1 XLXN_11
            PIN O XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_7 fd
            PIN C clk
            PIN D a
            PIN Q XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_8 fd
            PIN C clk
            PIN D b
            PIN Q XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_9 fd
            PIN C clk
            PIN D XLXN_7
            PIN Q sum
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1200 864 R0
        INSTANCE XLXI_2 1200 1056 R0
        INSTANCE XLXI_3 1200 1248 R0
        INSTANCE XLXI_4 1696 1088 R0
        INSTANCE XLXI_9 2256 800 R0
        BEGIN BRANCH a
            WIRE 224 240 320 240
        END BRANCH
        BEGIN BRANCH b
            WIRE 224 544 320 544
        END BRANCH
        BEGIN BRANCH sum
            WIRE 2640 544 2672 544
        END BRANCH
        IOMARKER 2672 544 sum R0 28
        BEGIN BRANCH XLXN_7
            WIRE 1904 544 2256 544
        END BRANCH
        INSTANCE XLXI_6 1648 640 R0
        INSTANCE XLXI_7 320 496 R0
        IOMARKER 224 240 a R180 28
        BEGIN BRANCH cin
            WIRE 256 832 720 832
            WIRE 720 688 720 832
            WIRE 720 688 992 688
            WIRE 992 688 1520 688
            WIRE 992 688 992 992
            WIRE 992 992 1056 992
            WIRE 1056 992 1200 992
            WIRE 1056 992 1056 1184
            WIRE 1056 1184 1200 1184
            WIRE 1520 576 1520 688
            WIRE 1520 576 1648 576
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 1456 512 1648 512
        END BRANCH
        INSTANCE XLXI_5 1200 608 R0
        INSTANCE XLXI_8 320 800 R0
        IOMARKER 224 544 b R180 28
        BEGIN BRANCH XLXN_17
            WIRE 704 544 736 544
            WIRE 736 544 1200 544
            WIRE 736 544 736 800
            WIRE 736 800 1072 800
            WIRE 1072 800 1200 800
            WIRE 1072 800 1072 928
            WIRE 1072 928 1200 928
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 704 240 720 240
            WIRE 720 240 720 480
            WIRE 720 480 784 480
            WIRE 784 480 784 736
            WIRE 784 736 1200 736
            WIRE 784 480 864 480
            WIRE 864 480 1200 480
            WIRE 864 480 864 1120
            WIRE 864 1120 1200 1120
        END BRANCH
        BEGIN BRANCH XLXN_21
            WIRE 1456 768 1696 768
            WIRE 1696 768 1696 896
        END BRANCH
        BEGIN BRANCH XLXN_22
            WIRE 1456 960 1696 960
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 1456 1152 1696 1152
            WIRE 1696 1024 1696 1152
        END BRANCH
        IOMARKER 256 832 cin R180 28
        BEGIN BRANCH cout
            WIRE 1952 960 1984 960
        END BRANCH
        IOMARKER 1984 960 cout R0 28
        BEGIN BRANCH clk
            WIRE 288 368 320 368
            WIRE 288 368 288 672
            WIRE 288 672 288 1200
            WIRE 288 1200 704 1200
            WIRE 704 1200 704 1264
            WIRE 704 1264 2176 1264
            WIRE 288 672 320 672
            WIRE 336 1264 704 1264
            WIRE 2176 672 2256 672
            WIRE 2176 672 2176 1264
        END BRANCH
        IOMARKER 336 1264 clk R180 28
    END SHEET
END SCHEMATIC
