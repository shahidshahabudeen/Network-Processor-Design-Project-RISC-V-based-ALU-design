VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL sub_add_sel
        SIGNAL XLXN_2(31:0)
        SIGNAL a(31:0)
        SIGNAL cout
        SIGNAL out_add_sub(31:0)
        SIGNAL binv(31:0)
        SIGNAL b(15:0)
        SIGNAL binv(15:0)
        SIGNAL binv(31:16)
        SIGNAL b(31:16)
        SIGNAL b(31:0)
        SIGNAL XLXN_14(31:0)
        PORT Input sub_add_sel
        PORT Input a(31:0)
        PORT Output cout
        PORT Output out_add_sub(31:0)
        PORT Input b(31:0)
        BEGIN BLOCKDEF mux_32bits
            TIMESTAMP 2023 1 22 17 53 14
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
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
        BEGIN BLOCKDEF inv16
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            RECTANGLE N 0 -44 64 -20 
            RECTANGLE N 160 -44 224 -20 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 mux_32bits
            PIN a(31:0) b(31:0)
            PIN b(31:0) binv(31:0)
            PIN s sub_add_sel
            PIN o(31:0) XLXN_2(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 Adder32bit
            PIN cin sub_add_sel
            PIN a(31:0) a(31:0)
            PIN b(31:0) XLXN_2(31:0)
            PIN cout cout
            PIN sum(31:0) out_add_sub(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 inv16
            PIN I(15:0) b(31:16)
            PIN O(15:0) binv(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_4 inv16
            PIN I(15:0) b(15:0)
            PIN O(15:0) binv(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 832 704 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1520 688 R0
        END INSTANCE
        BEGIN BRANCH sub_add_sel
            WIRE 672 768 768 768
            WIRE 768 768 1280 768
            WIRE 768 672 832 672
            WIRE 768 672 768 768
            WIRE 1280 528 1280 768
            WIRE 1280 528 1520 528
        END BRANCH
        IOMARKER 672 768 sub_add_sel R180 28
        BEGIN BRANCH XLXN_2(31:0)
            WIRE 1216 544 1360 544
            WIRE 1360 544 1360 656
            WIRE 1360 656 1520 656
        END BRANCH
        BEGIN BRANCH a(31:0)
            WIRE 1504 432 1504 592
            WIRE 1504 592 1520 592
        END BRANCH
        IOMARKER 1504 432 a(31:0) R270 28
        BEGIN BRANCH cout
            WIRE 1904 528 1936 528
        END BRANCH
        IOMARKER 1936 528 cout R0 28
        BEGIN BRANCH out_add_sub(31:0)
            WIRE 1904 656 1936 656
        END BRANCH
        IOMARKER 1936 656 out_add_sub(31:0) R0 28
        BEGIN BRANCH binv(31:0)
            WIRE 672 608 832 608
        END BRANCH
        INSTANCE XLXI_3 448 336 R0
        INSTANCE XLXI_4 448 464 R0
        BEGIN BRANCH b(15:0)
            WIRE 384 432 448 432
        END BRANCH
        BEGIN BRANCH binv(15:0)
            WIRE 672 432 752 432
        END BRANCH
        BEGIN BRANCH binv(31:16)
            WIRE 672 304 736 304
        END BRANCH
        BEGIN BRANCH b(31:16)
            WIRE 384 304 448 304
        END BRANCH
        BEGIN BRANCH b(31:0)
            WIRE 96 224 336 224
            WIRE 336 224 336 544
            WIRE 336 544 832 544
        END BRANCH
        IOMARKER 96 224 b(31:0) R180 28
    END SHEET
END SCHEMATIC
