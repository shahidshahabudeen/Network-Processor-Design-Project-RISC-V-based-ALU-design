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
        SIGNAL o(0)
        SIGNAL o(1)
        SIGNAL o(2)
        SIGNAL o(3)
        SIGNAL o(4)
        SIGNAL o(5)
        SIGNAL o(6)
        SIGNAL o(7)
        PORT Input a(7:0)
        PORT Input b(7:0)
        PORT Output o(7:0)
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
        BEGIN BLOCK XLXI_5 and2
            PIN I0 b(0)
            PIN I1 a(0)
            PIN O o(0)
        END BLOCK
        BEGIN BLOCK XLXI_6 and2
            PIN I0 b(1)
            PIN I1 a(1)
            PIN O o(1)
        END BLOCK
        BEGIN BLOCK XLXI_7 and2
            PIN I0 b(2)
            PIN I1 a(2)
            PIN O o(2)
        END BLOCK
        BEGIN BLOCK XLXI_8 and2
            PIN I0 b(3)
            PIN I1 a(3)
            PIN O o(3)
        END BLOCK
        BEGIN BLOCK XLXI_9 and2
            PIN I0 b(4)
            PIN I1 a(4)
            PIN O o(4)
        END BLOCK
        BEGIN BLOCK XLXI_10 and2
            PIN I0 b(5)
            PIN I1 a(5)
            PIN O o(5)
        END BLOCK
        BEGIN BLOCK XLXI_11 and2
            PIN I0 b(6)
            PIN I1 a(6)
            PIN O o(6)
        END BLOCK
        BEGIN BLOCK XLXI_12 and2
            PIN I0 b(7)
            PIN I1 a(7)
            PIN O o(7)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_5 592 560 R0
        INSTANCE XLXI_6 592 720 R0
        INSTANCE XLXI_7 592 896 R0
        INSTANCE XLXI_8 592 1072 R0
        INSTANCE XLXI_9 592 1232 R0
        INSTANCE XLXI_10 592 1376 R0
        INSTANCE XLXI_11 592 1520 R0
        INSTANCE XLXI_12 592 1680 R0
        BEGIN BRANCH a(7:0)
            WIRE 1456 464 1632 464
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1456 512 1632 512
        END BRANCH
        IOMARKER 1456 464 a(7:0) R180 28
        IOMARKER 1456 512 b(7:0) R180 28
        BEGIN BRANCH o(7:0)
            WIRE 1744 496 1888 496
        END BRANCH
        IOMARKER 1888 496 o(7:0) R0 28
        BEGIN BRANCH a(0)
            WIRE 512 432 592 432
        END BRANCH
        BEGIN BRANCH b(0)
            WIRE 496 496 592 496
        END BRANCH
        BEGIN BRANCH a(1)
            WIRE 512 592 592 592
        END BRANCH
        BEGIN BRANCH b(1)
            WIRE 512 656 592 656
        END BRANCH
        BEGIN BRANCH a(2)
            WIRE 512 768 592 768
        END BRANCH
        BEGIN BRANCH b(2)
            WIRE 512 832 592 832
        END BRANCH
        BEGIN BRANCH a(3)
            WIRE 512 944 592 944
        END BRANCH
        BEGIN BRANCH b(3)
            WIRE 512 1008 592 1008
        END BRANCH
        BEGIN BRANCH a(4)
            WIRE 512 1104 592 1104
        END BRANCH
        BEGIN BRANCH b(4)
            WIRE 496 1168 592 1168
        END BRANCH
        BEGIN BRANCH a(5)
            WIRE 512 1248 592 1248
        END BRANCH
        BEGIN BRANCH b(5)
            WIRE 512 1312 592 1312
        END BRANCH
        BEGIN BRANCH a(6)
            WIRE 512 1392 592 1392
        END BRANCH
        BEGIN BRANCH b(6)
            WIRE 512 1456 592 1456
        END BRANCH
        BEGIN BRANCH a(7)
            WIRE 496 1552 592 1552
        END BRANCH
        BEGIN BRANCH b(7)
            WIRE 512 1616 592 1616
        END BRANCH
        BEGIN BRANCH o(0)
            WIRE 848 464 912 464
        END BRANCH
        BEGIN BRANCH o(1)
            WIRE 848 624 928 624
        END BRANCH
        BEGIN BRANCH o(2)
            WIRE 848 800 928 800
        END BRANCH
        BEGIN BRANCH o(3)
            WIRE 848 976 928 976
        END BRANCH
        BEGIN BRANCH o(4)
            WIRE 848 1136 912 1136
        END BRANCH
        BEGIN BRANCH o(5)
            WIRE 848 1280 928 1280
        END BRANCH
        BEGIN BRANCH o(6)
            WIRE 848 1424 928 1424
        END BRANCH
        BEGIN BRANCH o(7)
            WIRE 848 1584 928 1584
        END BRANCH
    END SHEET
END SCHEMATIC
