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
        SIGNAL sum(7:0)
        SIGNAL co3
        SIGNAL sum(0)
        SIGNAL a(1)
        SIGNAL b(1)
        SIGNAL sum(1)
        SIGNAL a(2)
        SIGNAL b(2)
        SIGNAL sum(4)
        SIGNAL a(5)
        SIGNAL b(5)
        SIGNAL a(4)
        SIGNAL b(4)
        SIGNAL sum(5)
        SIGNAL a(6)
        SIGNAL b(6)
        SIGNAL sum(6)
        SIGNAL a(7)
        SIGNAL b(7)
        SIGNAL sum(7)
        SIGNAL Cout
        SIGNAL sum(3)
        SIGNAL a(3)
        SIGNAL b(3)
        SIGNAL sum(2)
        SIGNAL a(0)
        SIGNAL b(0)
        SIGNAL Cin
        SIGNAL co0
        SIGNAL co1
        SIGNAL co2
        SIGNAL co4
        SIGNAL co5
        SIGNAL co6
        PORT Input a(7:0)
        PORT Input b(7:0)
        PORT Output sum(7:0)
        PORT Output Cout
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
            PIN Cout co3
        END BLOCK
        BEGIN BLOCK XLXI_5 faddsch
            PIN A a(4)
            PIN B b(4)
            PIN Cin co3
            PIN Sum sum(4)
            PIN Cout co4
        END BLOCK
        BEGIN BLOCK XLXI_6 faddsch
            PIN A a(5)
            PIN B b(5)
            PIN Cin co4
            PIN Sum sum(5)
            PIN Cout co5
        END BLOCK
        BEGIN BLOCK XLXI_7 faddsch
            PIN A a(6)
            PIN B b(6)
            PIN Cin co5
            PIN Sum sum(6)
            PIN Cout co6
        END BLOCK
        BEGIN BLOCK XLXI_8 faddsch
            PIN A a(7)
            PIN B b(7)
            PIN Cin co6
            PIN Sum sum(7)
            PIN Cout Cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_5 608 1200 R0
        END INSTANCE
        BEGIN BRANCH a(7:0)
            WIRE 448 448 608 448
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 448 496 608 496
        END BRANCH
        BEGIN BRANCH sum(7:0)
            WIRE 688 464 848 464
        END BRANCH
        IOMARKER 448 448 a(7:0) R180 28
        IOMARKER 448 496 b(7:0) R180 28
        IOMARKER 848 464 sum(7:0) R0 28
        BEGIN INSTANCE XLXI_1 608 848 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1088 848 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1568 848 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 2048 848 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1088 1200 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 1568 1200 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 2048 1200 R0
        END INSTANCE
        BEGIN BRANCH co3
            WIRE 544 912 2512 912
            WIRE 544 912 544 1168
            WIRE 544 1168 608 1168
            WIRE 2432 816 2512 816
            WIRE 2512 816 2512 912
        END BRANCH
        BEGIN BRANCH sum(0)
            WIRE 992 688 1024 688
        END BRANCH
        BEGIN BRANCH a(1)
            WIRE 1056 688 1088 688
        END BRANCH
        BEGIN BRANCH b(1)
            WIRE 1056 752 1088 752
        END BRANCH
        BEGIN BRANCH sum(1)
            WIRE 1472 688 1504 688
        END BRANCH
        BEGIN BRANCH a(2)
            WIRE 1536 688 1568 688
        END BRANCH
        BEGIN BRANCH b(2)
            WIRE 1536 752 1568 752
        END BRANCH
        BEGIN BRANCH sum(4)
            WIRE 992 1040 1024 1040
        END BRANCH
        BEGIN BRANCH a(5)
            WIRE 1056 1040 1088 1040
        END BRANCH
        BEGIN BRANCH b(5)
            WIRE 1056 1104 1088 1104
        END BRANCH
        BEGIN BRANCH a(4)
            WIRE 576 1040 608 1040
        END BRANCH
        BEGIN BRANCH b(4)
            WIRE 576 1104 608 1104
        END BRANCH
        BEGIN BRANCH sum(5)
            WIRE 1472 1040 1504 1040
        END BRANCH
        BEGIN BRANCH a(6)
            WIRE 1536 1040 1568 1040
        END BRANCH
        BEGIN BRANCH b(6)
            WIRE 1536 1104 1568 1104
        END BRANCH
        BEGIN BRANCH sum(6)
            WIRE 1952 1040 1984 1040
        END BRANCH
        BEGIN BRANCH a(7)
            WIRE 2016 1040 2048 1040
        END BRANCH
        BEGIN BRANCH b(7)
            WIRE 2016 1104 2048 1104
        END BRANCH
        BEGIN BRANCH sum(7)
            WIRE 2432 1040 2464 1040
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 2432 1168 2464 1168
        END BRANCH
        BEGIN BRANCH sum(3)
            WIRE 2432 688 2464 688
        END BRANCH
        BEGIN BRANCH a(3)
            WIRE 2016 688 2048 688
        END BRANCH
        BEGIN BRANCH b(3)
            WIRE 2016 752 2048 752
        END BRANCH
        BEGIN BRANCH sum(2)
            WIRE 1952 688 1984 688
        END BRANCH
        BEGIN BRANCH a(0)
            WIRE 576 688 608 688
        END BRANCH
        BEGIN BRANCH b(0)
            WIRE 576 752 608 752
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 576 816 608 816
        END BRANCH
        IOMARKER 2464 1168 Cout R0 28
        BEGIN BRANCH co0
            WIRE 992 816 1088 816
        END BRANCH
        BEGIN BRANCH co1
            WIRE 1472 816 1568 816
        END BRANCH
        BEGIN BRANCH co2
            WIRE 1952 816 2048 816
        END BRANCH
        BEGIN BRANCH co4
            WIRE 992 1168 1088 1168
        END BRANCH
        BEGIN BRANCH co5
            WIRE 1472 1168 1568 1168
        END BRANCH
        BEGIN BRANCH co6
            WIRE 1952 1168 2048 1168
        END BRANCH
        IOMARKER 576 816 Cin R180 28
    END SHEET
END SCHEMATIC
