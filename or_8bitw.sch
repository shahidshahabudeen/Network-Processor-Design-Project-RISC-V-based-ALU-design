VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        SIGNAL o(7:0)
        SIGNAL a(0)
        SIGNAL b(0)
        SIGNAL o(0)
        SIGNAL o(1)
        SIGNAL a(1)
        SIGNAL b(1)
        SIGNAL a(2)
        SIGNAL b(2)
        SIGNAL a(3)
        SIGNAL b(3)
        SIGNAL a(4)
        SIGNAL b(4)
        SIGNAL a(5)
        SIGNAL b(5)
        SIGNAL a(6)
        SIGNAL b(6)
        SIGNAL a(7)
        SIGNAL b(7)
        SIGNAL o(2)
        SIGNAL o(3)
        SIGNAL o(4)
        SIGNAL o(5)
        SIGNAL o(6)
        SIGNAL o(7)
        PORT Input a(7:0)
        PORT Input b(7:0)
        PORT Output o(7:0)
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 or2
            PIN I0 b(0)
            PIN I1 a(0)
            PIN O o(0)
        END BLOCK
        BEGIN BLOCK XLXI_2 or2
            PIN I0 b(1)
            PIN I1 a(1)
            PIN O o(1)
        END BLOCK
        BEGIN BLOCK XLXI_3 or2
            PIN I0 b(2)
            PIN I1 a(2)
            PIN O o(2)
        END BLOCK
        BEGIN BLOCK XLXI_4 or2
            PIN I0 b(3)
            PIN I1 a(3)
            PIN O o(3)
        END BLOCK
        BEGIN BLOCK XLXI_5 or2
            PIN I0 b(4)
            PIN I1 a(4)
            PIN O o(4)
        END BLOCK
        BEGIN BLOCK XLXI_6 or2
            PIN I0 b(5)
            PIN I1 a(5)
            PIN O o(5)
        END BLOCK
        BEGIN BLOCK XLXI_7 or2
            PIN I0 b(6)
            PIN I1 a(6)
            PIN O o(6)
        END BLOCK
        BEGIN BLOCK XLXI_8 or2
            PIN I0 b(7)
            PIN I1 a(7)
            PIN O o(7)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 832 288 R0
        INSTANCE XLXI_2 832 432 R0
        INSTANCE XLXI_3 832 576 R0
        INSTANCE XLXI_4 832 736 R0
        INSTANCE XLXI_5 832 896 R0
        INSTANCE XLXI_6 832 1056 R0
        INSTANCE XLXI_7 832 1200 R0
        INSTANCE XLXI_8 832 1344 R0
        BEGIN BRANCH a(7:0)
            WIRE 1696 288 1984 288
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1696 352 1968 352
        END BRANCH
        BEGIN BRANCH o(7:0)
            WIRE 2080 320 2352 320
        END BRANCH
        IOMARKER 1696 288 a(7:0) R180 28
        IOMARKER 1696 352 b(7:0) R180 28
        IOMARKER 2352 320 o(7:0) R0 28
        BEGIN BRANCH a(0)
            WIRE 768 160 832 160
        END BRANCH
        BEGIN BRANCH b(0)
            WIRE 752 224 832 224
        END BRANCH
        BEGIN BRANCH o(0)
            WIRE 1088 192 1152 192
        END BRANCH
        BEGIN BRANCH o(1)
            WIRE 1088 336 1168 336
        END BRANCH
        BEGIN BRANCH a(1)
            WIRE 752 304 832 304
        END BRANCH
        BEGIN BRANCH b(1)
            WIRE 752 368 832 368
        END BRANCH
        BEGIN BRANCH a(2)
            WIRE 768 448 832 448
        END BRANCH
        BEGIN BRANCH b(2)
            WIRE 768 512 832 512
        END BRANCH
        BEGIN BRANCH a(3)
            WIRE 752 608 832 608
        END BRANCH
        BEGIN BRANCH b(3)
            WIRE 768 672 832 672
        END BRANCH
        BEGIN BRANCH a(4)
            WIRE 752 768 832 768
        END BRANCH
        BEGIN BRANCH b(4)
            WIRE 752 832 832 832
        END BRANCH
        BEGIN BRANCH a(5)
            WIRE 768 928 832 928
        END BRANCH
        BEGIN BRANCH b(5)
            WIRE 768 992 832 992
        END BRANCH
        BEGIN BRANCH a(6)
            WIRE 768 1072 832 1072
        END BRANCH
        BEGIN BRANCH b(6)
            WIRE 768 1136 832 1136
        END BRANCH
        BEGIN BRANCH a(7)
            WIRE 768 1216 832 1216
        END BRANCH
        BEGIN BRANCH b(7)
            WIRE 752 1280 832 1280
        END BRANCH
        BEGIN BRANCH o(2)
            WIRE 1088 480 1168 480
        END BRANCH
        BEGIN BRANCH o(3)
            WIRE 1088 640 1168 640
        END BRANCH
        BEGIN BRANCH o(4)
            WIRE 1088 800 1168 800
        END BRANCH
        BEGIN BRANCH o(5)
            WIRE 1088 960 1184 960
        END BRANCH
        BEGIN BRANCH o(6)
            WIRE 1088 1104 1168 1104
        END BRANCH
        BEGIN BRANCH o(7)
            WIRE 1088 1248 1168 1248
        END BRANCH
    END SHEET
END SCHEMATIC
