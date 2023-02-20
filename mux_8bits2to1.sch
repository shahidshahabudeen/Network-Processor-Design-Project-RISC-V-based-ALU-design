VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL a(0)
        SIGNAL b(0)
        SIGNAL a(1)
        SIGNAL b(1)
        SIGNAL XLXN_6
        SIGNAL a(2)
        SIGNAL b(2)
        SIGNAL XLXN_10
        SIGNAL a(3)
        SIGNAL b(3)
        SIGNAL XLXN_13
        SIGNAL a(4)
        SIGNAL b(4)
        SIGNAL XLXN_16
        SIGNAL a(5)
        SIGNAL b(5)
        SIGNAL XLXN_19
        SIGNAL a(6)
        SIGNAL b(6)
        SIGNAL XLXN_22
        SIGNAL a(7)
        SIGNAL b(7)
        SIGNAL XLXN_25
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        SIGNAL o(7:0)
        SIGNAL o(0)
        SIGNAL o(1)
        SIGNAL o(2)
        SIGNAL o(3)
        SIGNAL o(7)
        SIGNAL o(6)
        SIGNAL o(5)
        SIGNAL o(4)
        SIGNAL XLXN_38
        SIGNAL s
        SIGNAL XLXN_43
        PORT Input a(7:0)
        PORT Input b(7:0)
        PORT Output o(7:0)
        PORT Input s
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
            LINE N 0 -160 96 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 m2_1
            PIN D0 a(0)
            PIN D1 b(0)
            PIN S0 s
            PIN O o(0)
        END BLOCK
        BEGIN BLOCK XLXI_2 m2_1
            PIN D0 a(1)
            PIN D1 b(1)
            PIN S0 s
            PIN O o(1)
        END BLOCK
        BEGIN BLOCK XLXI_3 m2_1
            PIN D0 a(2)
            PIN D1 b(2)
            PIN S0 s
            PIN O o(2)
        END BLOCK
        BEGIN BLOCK XLXI_4 m2_1
            PIN D0 a(3)
            PIN D1 b(3)
            PIN S0 s
            PIN O o(3)
        END BLOCK
        BEGIN BLOCK XLXI_9 m2_1
            PIN D0 a(4)
            PIN D1 b(4)
            PIN S0 s
            PIN O o(4)
        END BLOCK
        BEGIN BLOCK XLXI_10 m2_1
            PIN D0 a(5)
            PIN D1 b(5)
            PIN S0 s
            PIN O o(5)
        END BLOCK
        BEGIN BLOCK XLXI_11 m2_1
            PIN D0 a(6)
            PIN D1 b(6)
            PIN S0 s
            PIN O o(6)
        END BLOCK
        BEGIN BLOCK XLXI_12 m2_1
            PIN D0 a(7)
            PIN D1 b(7)
            PIN S0 s
            PIN O o(7)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 432 400 R0
        INSTANCE XLXI_2 432 608 R0
        INSTANCE XLXI_3 448 832 R0
        INSTANCE XLXI_4 432 1024 R0
        INSTANCE XLXI_9 896 400 R0
        INSTANCE XLXI_10 896 624 R0
        INSTANCE XLXI_11 896 832 R0
        INSTANCE XLXI_12 896 1024 R0
        BEGIN BRANCH a(0)
            WIRE 384 240 432 240
        END BRANCH
        BEGIN BRANCH b(0)
            WIRE 384 304 432 304
        END BRANCH
        BEGIN BRANCH s
            WIRE 368 368 368 576
            WIRE 368 576 368 800
            WIRE 368 800 368 992
            WIRE 368 992 432 992
            WIRE 368 800 448 800
            WIRE 368 576 432 576
            WIRE 368 368 432 368
            BEGIN DISPLAY 368 368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(1)
            WIRE 384 448 432 448
        END BRANCH
        BEGIN BRANCH b(1)
            WIRE 384 512 432 512
        END BRANCH
        BEGIN BRANCH a(2)
            WIRE 384 672 448 672
        END BRANCH
        BEGIN BRANCH b(2)
            WIRE 384 736 448 736
        END BRANCH
        BEGIN BRANCH a(3)
            WIRE 384 864 432 864
        END BRANCH
        BEGIN BRANCH b(3)
            WIRE 384 928 432 928
        END BRANCH
        BEGIN BRANCH a(4)
            WIRE 848 240 896 240
        END BRANCH
        BEGIN BRANCH b(4)
            WIRE 848 304 896 304
        END BRANCH
        BEGIN BRANCH a(5)
            WIRE 864 464 896 464
        END BRANCH
        BEGIN BRANCH b(5)
            WIRE 864 528 896 528
        END BRANCH
        BEGIN BRANCH a(6)
            WIRE 848 672 896 672
        END BRANCH
        BEGIN BRANCH b(6)
            WIRE 832 736 896 736
        END BRANCH
        BEGIN BRANCH a(7)
            WIRE 864 864 896 864
        END BRANCH
        BEGIN BRANCH b(7)
            WIRE 848 928 896 928
        END BRANCH
        BEGIN BRANCH a(7:0)
            WIRE 1440 240 1616 240
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1440 320 1616 320
        END BRANCH
        BEGIN BRANCH o(7:0)
            WIRE 1744 272 1888 272
        END BRANCH
        IOMARKER 1440 240 a(7:0) R180 28
        IOMARKER 1440 320 b(7:0) R180 28
        IOMARKER 1888 272 o(7:0) R0 28
        BEGIN BRANCH o(0)
            WIRE 752 272 784 272
        END BRANCH
        BEGIN BRANCH o(1)
            WIRE 752 480 784 480
        END BRANCH
        BEGIN BRANCH o(2)
            WIRE 768 704 800 704
        END BRANCH
        BEGIN BRANCH o(3)
            WIRE 752 896 784 896
        END BRANCH
        BEGIN BRANCH o(7)
            WIRE 1216 896 1264 896
        END BRANCH
        BEGIN BRANCH o(6)
            WIRE 1216 704 1248 704
        END BRANCH
        BEGIN BRANCH o(5)
            WIRE 1216 496 1248 496
        END BRANCH
        BEGIN BRANCH o(4)
            WIRE 1216 272 1248 272
        END BRANCH
        BEGIN BRANCH s
            WIRE 160 672 256 672
        END BRANCH
        IOMARKER 160 672 s R180 28
        BEGIN BRANCH s
            WIRE 784 608 784 800
            WIRE 784 800 832 800
            WIRE 832 800 896 800
            WIRE 832 800 832 992
            WIRE 832 992 896 992
            WIRE 784 608 848 608
            WIRE 848 368 896 368
            WIRE 848 368 848 592
            WIRE 848 592 896 592
            WIRE 848 592 848 608
            BEGIN DISPLAY 784 608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
