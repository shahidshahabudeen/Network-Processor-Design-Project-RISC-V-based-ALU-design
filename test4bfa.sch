VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL co0
        SIGNAL co1
        SIGNAL co2
        SIGNAL a(3:0)
        SIGNAL b(3:0)
        SIGNAL Cout
        SIGNAL sum(3:0)
        SIGNAL a(0)
        SIGNAL b(0)
        SIGNAL sum(0)
        SIGNAL a(1)
        SIGNAL b(1)
        SIGNAL sum(1)
        SIGNAL a(2)
        SIGNAL b(2)
        SIGNAL sum(2)
        SIGNAL a(3)
        SIGNAL b(3)
        SIGNAL sum(3)
        SIGNAL Cin
        PORT Input a(3:0)
        PORT Input b(3:0)
        PORT Output Cout
        PORT Output sum(3:0)
        PORT Input Cin
        BEGIN BLOCKDEF faddsch
            TIMESTAMP 2023 1 21 6 55 25
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 faddsch
            PIN A a(0)
            PIN B b(0)
            PIN Cin Cin
            PIN Sum sum(0)
            PIN Cout co0
        END BLOCK
        BEGIN BLOCK XLXI_2 faddsch
            PIN A a(1)
            PIN B b(1)
            PIN Cin co0
            PIN Sum sum(1)
            PIN Cout co1
        END BLOCK
        BEGIN BLOCK XLXI_3 faddsch
            PIN A a(2)
            PIN B b(2)
            PIN Cin co1
            PIN Sum sum(2)
            PIN Cout co2
        END BLOCK
        BEGIN BLOCK XLXI_4 faddsch
            PIN A a(3)
            PIN B b(3)
            PIN Cin co2
            PIN Sum sum(3)
            PIN Cout Cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 1200 960 R0
        END INSTANCE
        BEGIN BRANCH co0
            WIRE 1056 928 1200 928
        END BRANCH
        BEGIN BRANCH co1
            WIRE 1584 928 1680 928
        END BRANCH
        BEGIN BRANCH co2
            WIRE 2064 928 2192 928
        END BRANCH
        BEGIN BRANCH a(3:0)
            WIRE 480 480 640 480
        END BRANCH
        IOMARKER 480 480 a(3:0) R180 28
        BEGIN BRANCH b(3:0)
            WIRE 480 560 640 560
        END BRANCH
        IOMARKER 480 560 b(3:0) R180 28
        BEGIN BRANCH Cout
            WIRE 2576 928 2656 928
        END BRANCH
        BEGIN BRANCH sum(3:0)
            WIRE 1040 480 1200 480
        END BRANCH
        IOMARKER 1200 480 sum(3:0) R0 28
        BEGIN BRANCH a(1)
            WIRE 1168 800 1200 800
        END BRANCH
        BEGIN BRANCH b(1)
            WIRE 1168 864 1200 864
        END BRANCH
        BEGIN BRANCH sum(1)
            WIRE 1584 800 1632 800
        END BRANCH
        BEGIN INSTANCE XLXI_1 672 960 R0
        END INSTANCE
        BEGIN BRANCH a(0)
            WIRE 640 800 672 800
        END BRANCH
        BEGIN BRANCH b(0)
            WIRE 640 864 672 864
        END BRANCH
        BEGIN BRANCH sum(0)
            WIRE 1056 800 1120 800
        END BRANCH
        IOMARKER 2656 928 Cout R0 28
        BEGIN INSTANCE XLXI_4 2192 960 R0
        END INSTANCE
        BEGIN BRANCH a(3)
            WIRE 2144 800 2192 800
        END BRANCH
        BEGIN BRANCH b(3)
            WIRE 2144 864 2192 864
        END BRANCH
        BEGIN INSTANCE XLXI_3 1680 960 R0
        END INSTANCE
        BEGIN BRANCH sum(2)
            WIRE 2064 800 2096 800
        END BRANCH
        BEGIN BRANCH b(2)
            WIRE 1664 864 1680 864
        END BRANCH
        BEGIN BRANCH a(2)
            WIRE 1664 800 1680 800
        END BRANCH
        BEGIN BRANCH sum(3)
            WIRE 2576 800 2608 800
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 448 640 576 640
            WIRE 576 640 576 928
            WIRE 576 928 672 928
        END BRANCH
        IOMARKER 448 640 Cin R180 28
    END SHEET
END SCHEMATIC
