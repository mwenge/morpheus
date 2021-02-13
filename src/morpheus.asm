;
; **** ZP FIELDS **** 
;
f01 = $01
f21 = $21
f76 = $76
f77 = $77
f96 = $96
f98 = $98
fC0 = $C0
fC3 = $C3
fC6 = $C6
fC9 = $C9
fCC = $CC
fCF = $CF
fD2 = $D2
fD5 = $D5
fD8 = $D8
fDB = $DB
fDE = $DE
fE2 = $E2
fE3 = $E3
fE6 = $E6
fE9 = $E9
fEF = $EF
fF4 = $F4
fF7 = $F7
;
; **** ZP ABSOLUTE ADRESSES **** 
;
a01 = $01
a02 = $02
a03 = $03
a04 = $04
a05 = $05
a06 = $06
a07 = $07
a08 = $08
a09 = $09
a0A = $0A
a0B = $0B
a0C = $0C
a0D = $0D
a0E = $0E
a0F = $0F
a10 = $10
a11 = $11
a12 = $12
a13 = $13
a14 = $14
a15 = $15
a16 = $16
a17 = $17
a18 = $18
a19 = $19
a1A = $1A
a1B = $1B
a1C = $1C
a1D = $1D
a1E = $1E
a1F = $1F
a20 = $20
a21 = $21
a22 = $22
a23 = $23
a24 = $24
a25 = $25
a26 = $26
a27 = $27
a28 = $28
a29 = $29
a2A = $2A
a2C = $2C
a2D = $2D
a2E = $2E
a2F = $2F
a30 = $30
a31 = $31
a32 = $32
a33 = $33
a34 = $34
a35 = $35
a36 = $36
a37 = $37
a38 = $38
a39 = $39
a3A = $3A
a3B = $3B
a3C = $3C
a3D = $3D
a3E = $3E
a3F = $3F
a40 = $40
a41 = $41
a42 = $42
a43 = $43
a44 = $44
a45 = $45
a46 = $46
a47 = $47
a48 = $48
a49 = $49
a4A = $4A
a4B = $4B
a4C = $4C
a4D = $4D
a4F = $4F
a50 = $50
a51 = $51
a52 = $52
a53 = $53
a54 = $54
a55 = $55
a56 = $56
a57 = $57
a58 = $58
a59 = $59
a5A = $5A
a5B = $5B
a5C = $5C
a5D = $5D
a5E = $5E
a5F = $5F
a60 = $60
a61 = $61
a62 = $62
a63 = $63
a64 = $64
a65 = $65
a66 = $66
a67 = $67
a68 = $68
a69 = $69
a6A = $6A
a6B = $6B
a6C = $6C
a6D = $6D
a6E = $6E
a6F = $6F
a70 = $70
a71 = $71
a72 = $72
a73 = $73
a74 = $74
a75 = $75
a76 = $76
a77 = $77
a78 = $78
a79 = $79
a7A = $7A
a7B = $7B
a7C = $7C
a7D = $7D
a7E = $7E
a7F = $7F
a80 = $80
a81 = $81
a82 = $82
a83 = $83
a84 = $84
a85 = $85
a86 = $86
a87 = $87
a88 = $88
a89 = $89
a8A = $8A
a8C = $8C
a8D = $8D
a8E = $8E
a8F = $8F
aA0 = $A0
aA1 = $A1
aA4 = $A4
aA5 = $A5
aA6 = $A6
aA7 = $A7
aA8 = $A8
aA9 = $A9
aAA = $AA
aAB = $AB
aAE = $AE
aAF = $AF
aB0 = $B0
aB1 = $B1
aB2 = $B2
aB3 = $B3
aB4 = $B4
aB5 = $B5
aB6 = $B6
aBA = $BA
aBE = $BE
aBF = $BF
aDB = $DB
aDE = $DE
aE1 = $E1
aE2 = $E2
aE3 = $E3
aE4 = $E4
aE5 = $E5
aE9 = $E9
aEB = $EB
aEC = $EC
aED = $ED
aEE = $EE
aEF = $EF
aF2 = $F2
aF3 = $F3
aFA = $FA
aFB = $FB
aFC = $FC
aFD = $FD
;
; **** ZP POINTERS **** 
;
p12 = $12
p14 = $14
p1A = $1A
p1C = $1C
p1E = $1E
p39 = $39
p3F = $3F
p61 = $61
p76 = $76
p9D = $9D
pAE = $AE
pB0 = $B0
pB2 = $B2
pBE = $BE
pD0 = $D0
pFC = $FC
;
; **** FIELDS **** 
;
f00E3 = $00E3
f00E9 = $00E9
f00F4 = $00F4
f00F7 = $00F7
;
; **** POINTERS **** 
;
p001A = $001A
p60 = $0060

* = $0801
;------------------------------------------------------------------------------------------
; SYS 16384 ($4000)
; This launches the program from address $4000, i.e. MainControlLoop.
;------------------------------------------------------------------------------------------
; $9E = SYS
; $31,$36,$33,$38,$34,$00 = 16384 ($4000 in hex)
.BYTE $0C,$08,$0A,$00,$9E,$32,$33,$30,$34,$00,$00

* = $0900
p0900   SEI 
        CLD 
        LDX #$FF
        TXS 
        LDA #$25
        STA a01
        LDA #$00
        STA $D011    ;VIC Control Register 1
        LDA #$00
        STA $D020    ;Border Color
        LDA #$24
        STA a01
        LDX #<p7000
        LDY #>p7000
        STX aB2
        STY aB3
        LDX #<$D000
        LDY #>$D000
        STX aB0
        STY aB1
        LDX #$10
        JSR s6E7C
        LDX #<pC000
        LDY #>pC000
        STX aB2
        STY aB3
        LDX #<p7000
        LDY #>p7000
        STX aB0
        STY aB1
        LDX #$08
        JSR s6E7C
        LDX #<pA000
        LDY #>pA000
        STX aB2
        STY aB3
        LDX #<$0400
        LDY #>$0400
        STX aB0
        STY aB1
        LDX #$04
        JSR s6E7C
        LDX #<p0900
        LDY #>p0900
        STX aB2
        STY aB3
        LDX #<pA000
        LDY #>pA000
        STX aB0
        STY aB1
        LDX #$03
        JSR s6E7C
        LDX #$4B
b096D   LDA $0800,X
        STA f320E,X
        DEX 
        BPL b096D
        LDX #$3F
b0978   LDA fBB00,X
        STA f78C0,X
        DEX 
        BPL b0978
        LDX #$03
b0983   LDA $08FC,X
        EOR #$AA
        STA f233E,X
        LDA $08F8,X
        STA $08FC,X
        DEX 
        BPL b0983
        LDA #$25
        STA a01
        LDA $DD02    ;CIA2: Data Direction Register A
        ORA #$03
        STA $DD02    ;CIA2: Data Direction Register A
        LDA $DD00    ;CIA2: Data Port Register A
        AND #$FC
        STA $DD00    ;CIA2: Data Port Register A
        LDX #$E0
        LDY #$1F
        JSR s5223
        LDA $DC0D    ;CIA1: CIA Interrupt Control Register
        LDA #$81
        STA $DC0E    ;CIA1: CIA Control Register A
        LDX #$00
        LDY #$0A
        STX $DC06    ;CIA1: Timer B: Low-Byte
        STY $DC07    ;CIA1: Timer B: High-Byte
        LDX #$00
        LDY #$00
        LDA #$01
        STA $02A5
        LDA $DC0D    ;CIA1: CIA Interrupt Control Register
        LDA #$FD
        STA $D030    ;C128: Switch to FAST-Mode
        LDA #$11
        STA $DC0F    ;CIA1: CIA Control Register B
b09D7   LDA $DC0D    ;CIA1: CIA Interrupt Control Register
        AND #$02
        BNE b09E5
        INX 
        BNE b09D7
        INY 
        JMP b09D7

b09E5   CPY #$00
        BNE b09EC
        STY $02A5
b09EC   LDA #$FC
        STA $D030    ;C128: Switch to FAST-Mode
        LDA $02A6
        LSR 
        LDA $02A5
        ROL 
        STA $02A4
        TAY 
        LDA f2299,Y
        STA $0412
        LDA f229D,Y
        STA $0417
        LDA f22A1,Y
        STA $0682
        LDA f22A5,Y
        STA $0687
        LDA f22A9,Y
        STA $06BE
        LDA f22AD,Y
        STA $06C3
        LDA f22B1,Y
        STA $06E8
        LDA f22B5,Y
        STA $06ED
        LDA f22BD,Y
        CLC 
        ADC #$0D
        STA a1372
        LDA f22B9,Y
        STA a3C51
        LDA f22C1,Y
        LDX #$05
b0A41   STA f1A59,X
        DEX 
        BPL b0A41
        JSR s6D7B
        LDA #<p4020
        STA a2C
        LDA #>p4020
        STA a2D
        LDA #$50
        STA a0C
        LDX #$7F
        LDA #$FF
b0A5A   STA $0100,X
        DEX 
        BPL b0A5A
        LDA #$00
        STA $0180
        STA a5A
        STA a7B
        LDX #<$D800
        LDY #>$D800
        STX a1C
        STY a1D
        LDA #$08
        LDX #$03
        JSR s6D05
        LDA #$00
        LDX #$03
b0A7C   STA $0270,X
        DEX 
        BPL b0A7C
        LDX #<p1000
        LDY #>p1000
        STX aB2
        STY aB3
        LDX #<p0900
        LDY #>p0900
        STX aB0
        STY aB1
        LDX #$01
        JSR s6E7C
        LDA $DD0D    ;CIA2: CIA Interrupt Control Register
        CLI 
j0A9B   LDX #$FF
        TXS 
        JSR sA30E
        LDA #$00
        STA a6CE1
        LDA #$01
        STA a6CE4
        JSR s4698
        LDA #$0F
        STA $D025    ;Sprite Multi-Color Register 0
        LDA #$0B
        STA $D026    ;Sprite Multi-Color Register 1
j0AB8   LDA #$00
        STA a84
        LDX #<pC000
        LDY #>pC000
        STX a1C
        STY a1D
        LDA #$00
        LDX #$03
        JSR s6D05
        JSR s39E6
        LDX #<p2D07
        LDY #>p2D07
        STX a12
        STY a13
        JSR s3A50
        JSR s3B35
        JSR s487D
        JSR s48A3
        LDX #$B0
        LDY #$1F
        JSR s51E8
        LDX #$CF
        LDY #$1F
        JSR s5223
        JSR s644B
        JSR s61E2
        LDX #$C9
        LDY #$1F
        JSR s5200
        JSR s10F4
        LDA #$00
        JSR sA314
        LDX #$1F
        LDA #$80
b0B09   STA f7EC0,X
        DEX 
        BPL b0B09
a0B10   =*+$01
        LDA #$01
        STA a6A
        EOR #$FE
        STA a0B10
        JSR s536C
        LDA #$00
        STA a6A
        LDA #$36
        STA a68B7
        LDA #$50
        STA a68B2
        JSR s6947
        LDA $D41B    ;Oscillator 3 Output
        AND #$07
        JSR s6883
b0B34   JSR s10C7
        JSR s54B1
        JSR sAF53
        LDA a18
        BEQ b0B8A
        JSR s69BA
        LDA a26
        BPL b0B34
        JSR s3E15
        LDA #$00
        STA a48
        STA a3E99
        LDA #$0A
        STA a3EC3
        LDX #<p3214
        LDY #>p3214
        STX a61
        STY a62
a0B60   =*+$01
b0B5F   LDA p0900
        INC a0B60
        AND #$07
        JSR s6883
b0B6A   JSR s10C7
        JSR s54B1
        JSR sAF53
        LDA a18
        BEQ b0B8A
        JSR s69BA
        JSR s3E94
        LDA a26
        AND #$7F
        BNE b0B6A
        LDA a48
        BPL b0B5F
        JMP j0AB8

b0B8A   JSR s39E6
        JSR sA30E
        LDX #$C3
        LDY #$1F
        JSR s5200
        JSR s487D
        LDA #$00
        STA a55
        LDX #$03
b0BA0   STA fC05B,X
        STA fC06A,X
        DEX 
        BPL b0BA0
        JSR s3C55
        LDX #$28
        LDA #$FF
b0BB0   STA f3059,X
        DEX 
        BPL b0BB0
        LDX a69
        LDY #$00
        STY a69
b0BBC   LDA f2048,X
        STA f2057,Y
        INX 
        INY 
        CPY #$08
        BCC b0BBC
        LDY a69
        INY 
        TYA 
        LDY #$00
        SEC 
b0BCF   SBC #$0A
        INY 
        BCS b0BCF
        ADC #$0A
        DEY 
        BNE b0BDB
        LDY #$28
b0BDB   STY a1C15
        STA a1C16
        LDA a69
        STA $02A2
j0BE6   LDX #$1F
        LDA #$80
b0BEA   STA f7EC0,X
        DEX 
        BPL b0BEA
a0BF1   =*+$01
        LDA p0900
        INC a0BF1
        LDX a69
        CPX #$04
        BCS b0BFE
        LDA #$40
b0BFE   AND #$F8
        STA a68EF
        ORA #$06
        TAX 
        LDA f2600,X
        CLC 
        ADC #$A0
        STA a64
        LDA f2700,X
        ADC #$00
        STA a65
        TXA 
        SEC 
        SBC #$40
        TAX 
        LDA f2600,X
        CLC 
        ADC #$6C
        STA a67
        LDA f2700,X
        ADC #$00
        STA a68
        LDA #$FF
        STA a54
        STA a53
        JSR s11D1
j0C32   LDX #$BC
        LDY #$1F
        JSR s51E8
        LDA aA7
        CLC 
        ADC a73
        STA a73
        LDA aA8
        ADC aA6
        CMP #$62
        BCC b0C4A
        LDA #$62
b0C4A   STA aA6
        LDA #$3C
        CMP aA6
        BCC b0C54
        LDA aA6
b0C54   STA a5E
        CLC 
        ADC #$0A
        CMP #$3C
        BCC b0C5F
        LDA #$3C
b0C5F   STA a5F
        JSR s19F1
        LDA #$08
        STA a2A39
        STA a2A3B
        STA a2A3E
        STA a2A3F
        LDX #<$D878
        LDY #>$D878
        STX a1C
        STY a1D
        LDA #$08
        LDX #$16
        JSR s6D05
        LDA #$03
        STA $0670
        LDX #<pC078
        LDY #>pC078
        STX a1C
        STY a1D
        LDA #$00
        LDX #$16
        JSR s6D05
        LDA #$00
        STA a6CE1
        LDA #$01
        STA a6CE4
        LDA #$01
        LDY a5A
        BEQ b0CA7
        LDA #$03
b0CA7   JSR s467F
        JSR s54B1
        JSR s3AF0
        JSR s3E15
        JSR s644B
        JSR s61E2
        JSR s39E6
        JSR s49C5
        LDA #$C0
        STA a56
        LDX #$00
        LDY #$2E
        JSR s3F3F
        LDX #$DB
        LDY #$2D
        JSR s3F3F
        LDA #$0F
        STA $D025    ;Sprite Multi-Color Register 0
        LDA #$0B
        STA $D026    ;Sprite Multi-Color Register 1
        LDX #$28
b0CDD   LDA aA8
        BNE b0CE9
        LDA f3083,X
        SEC 
        SBC aA7
        BCS b0CEB
b0CE9   LDA #$00
b0CEB   STA f3083,X
        DEX 
        BPL b0CDD
b0CF1   JSR s10D7
        JSR s54B1
        JSR s48A3
        JSR s49DF
        JSR s69D9
        LDA a25
        BEQ b0CF1
        JSR sA30E
        LDA #$00
        STA a25
        STA aA7
        STA aA8
        STA a26
        STA a6A
        STA a7D
        STA a81
        JSR s52CE
        JSR s484C
        LDY a69
        INY 
        TYA 
        LDY #$00
        SEC 
b0D24   SBC #$0A
        INY 
        BCS b0D24
        ADC #$0A
        DEY 
        BNE b0D30
        LDY #$28
b0D30   STY a1C6D
        STA a1C6E
        LDY aA6
        INY 
        TYA 
        LDY #$00
        SEC 
b0D3D   SBC #$0A
        INY 
        BCS b0D3D
        ADC #$0A
        DEY 
        BNE b0D49
        LDY #$28
b0D49   STY a1C7B
        STA a1C7C
        LDA a55
        BMI b0D5E
        LDX #$6F
        LDY #$2D
        JSR s3F3F
        INC a6A
        BNE b0D67
b0D5E   LDX #$80
        LDY #$2D
        JSR s3F3F
        DEC a6A
b0D67   LDA a59
        BEQ b0D84
        LDX #$5C
        LDY #$2D
        JSR s3F3F
        LDA a5A
        CMP #$02
        BNE b0D80
        LDA #$00
        STA a6CE1
        STA a6CE4
b0D80   LDY #$07
        BNE b0D9B
b0D84   LDX #$49
        LDY #$2D
        JSR s3F3F
        LDA a5A
        CMP #$02
        BNE b0D99
        LDA #$01
        STA a6CE1
        STA a6CE4
b0D99   LDY #$03
b0D9B   JSR s4894
        LDA a59
        CLC 
        ADC #$01
        JSR s467F
        LDA a69
        LSR 
        CLC 
        ADC #$24
        STA a78
        ASL 
        STA a79
        LSR 
        EOR #$FF
        ADC #$01
        STA a77
        LDA a69
        LSR 
        CLC 
        ADC #$4C
        STA a0DD6
        LDA a69
        JSR s6883
        JSR s6947
        JSR s54B1
        LDA #$2F
        STA aE3
b0DD0   JSR s10DE
        LDA a26
a0DD6   =*+$01
        CMP #$48
        BCS b0DDC
        JSR s67D1
b0DDC   JSR s10E3
        JSR s69BA
        JSR s69D9
        LDA a26
        BMI b0DF7
        CMP #$3C
        BNE b0DD0
        LDX #$65
        LDY #$1C
        JSR s3F3F
        JMP b0DD0

b0DF7   JSR s5F4C
        JSR s3B59
        LDA #$0F
        STA $D025    ;Sprite Multi-Color Register 0
        LDA #$0B
        STA $D026    ;Sprite Multi-Color Register 1
b0E07   LDA a0A
        BNE b0E07
        JSR s61E2
        JSR s3D4C
        INC a26
        BNE b0E1F
        INC a27
        LDA a8D
        CMP #$FF
        BEQ b0E1F
        INC a8D
b0E1F   LDA a26
        AND #$1F
        BNE b0E33
        INC aA7
        BNE b0E33
        LDA aA8
        CMP #$05
        BCS b0E33
        ADC #$01
        STA aA8
b0E33   LDA a0A
        BEQ b0E33
        JSR s54B1
        JSR s6CD7
        JSR s4069
        JSR s47E6
        JSR s5886
        JSR s1272
        LDA a26
        AND #$07
        BEQ b0E72
        CMP a5B
        BEQ b0E55
        BCS b0E7A
b0E55   TAX 
        LDA f302D,X
        CMP #$10
        BCC b0E7A
        AND #$0F
        TAY 
        LDA f1D2C,Y
        STA a0E70
        LDA f1D3C,Y
        STA a0E71
        LDY f3035,X
a0E70   =*+$01
a0E71   =*+$02
        JMP jAF83

b0E72   LDA aAB
        STA aAA
        LDA #$00
        STA aAB
b0E7A   LDA a26
        LSR 
        BCC b0E88
        JSR s48D6
        JSR s1547
        JMP j0E8E

b0E88   JSR s69D9
        JSR s183A
j0E8E   JSR s46C4
        JSR s1572
        JSR s6A7D
        JSR s18D4
        LDA a54
        BEQ b0ECF
        LDA a25
        BNE b0EA5
        JMP b0E07

b0EA5   JSR s3F77
        JSR s495C
        LDA a5A
        BEQ b0EB5
        LDA a59
        EOR #$01
        STA a59
b0EB5   LDA a7D
        CMP a69
        BEQ b0EBD
        BCS b0EC4
b0EBD   CMP #$20
        BCS b0EC4
        JMP j0C32

b0EC4   LDA a69
        CMP #$31
        BEQ b0F0C
        INC a69
        JMP j0BE6

b0ECF   JSR sA30E
        LDA #$FF
        STA a26
        JSR s402A
        LDA #$ED
        STA aE3
        STA aE4
        JSR s19C4
j0EE2   JSR s10DE
        JSR s61E2
        JSR s5243
        JSR s10E3
        JSR s54B1
        JSR s48D6
        JSR s69D9
        LDA #$00
        STA $0290
        LDA a30
        BEQ b0F03
        JSR s3D59
b0F03   LDA a26
        CMP #$A0
        BCS b0F54
        JMP j0EE2

b0F0C   JSR s3E15
        LDA aF2
        STA a0F
        LDA #$08
        STA aF2
        LDA #$01
        JSR sA314
        LDA a0F
        STA aF2
        LDX #$A2
        LDY #$1C
        JSR s3F3F
        LDX #$B0
        LDY #$1C
        JSR s3F3F
        LDA #$00
        STA a26
        JSR s19F1
        LDA #$10
        STA a0C
        LDA #$72
        STA aB80A
b0F3E   JSR s10DE
        JSR s61E2
        JSR s10E3
        JSR s54B1
        JSR sB7E4
        LDA a26
        BPL b0F3E
        JSR sA30E
b0F54   JSR s495C
        JSR s6A31
        JSR s3E15
        LDA #$00
        STA a59
        LDA #$10
        STA a0C
        LDA #$00
        STA aB80A
        LDA #$00
        STA a6CE1
        LDA #$01
        STA a6CE4
        LDA #$01
        JSR s467F
        LDA a5A
        CMP #$02
        BNE b0F84
        LDA #$01
        STA a6CE1
b0F84   LDY #$03
        JSR s4894
        LDX #$02
b0F8B   LDA f1C5F,X
        STA f1C44,X
        STA f1C5B,X
        DEX 
        BPL b0F8B
        JSR sB825
        LDA a5A
        BEQ b0FD0
        LDA #$00
        STA a6CE1
        LDA #$01
        STA a6CE4
        LDA #$02
        JSR s467F
        LDA a5A
        CMP #$02
        BNE b0FB8
        LDA #$00
        STA a6CE4
b0FB8   INC a59
        LDY #$07
        JSR s4894
        LDX #$02
b0FC1   LDA f1C62,X
        STA f1C44,X
        STA f1C5B,X
        DEX 
        BPL b0FC1
        JSR sB825
b0FD0   LDA a69
        CMP $02A2
        BEQ b1002
        LDA #$1C
        STA a1C13
        LDA #$24
        STA a1C17
        LDA #$01
        STA a1C05
        LDY a69
        INY 
        TYA 
        LDY #$00
        SEC 
b0FED   SBC #$0A
        INY 
        BCS b0FED
        ADC #$0A
        DEY 
        BNE b0FF9
        LDY #$28
b0FF9   STY a1C1B
        STA a1C1C
p1000   =*+$01
        JMP j1011

b1002   LDA #$28
        STA a1C13
        LDA #$FF
        STA a1C17
        LDA #$07
        STA a1C05
j1011   LDX #$1C
        LDA aA6
        BNE b1019
        LDX #$28
b1019   STX a1C2F
        LDY aA6
        INY 
        TYA 
        LDY #$00
        SEC 
b1023   SBC #$0A
        INY 
        BCS b1023
        ADC #$0A
        DEY 
        BNE b102F
        LDY #$28
b102F   STY a1C23
        STA a1C24
        LDX #$04
        LDY #$1C
        JSR s3F3F
        LDX #$1E
        LDY #$1C
        JSR s3F3F
        LDA #$7A
        STA aB80A
        LDA #$00
        STA a6CE1
        LDA #$01
        STA a6CE4
        LDA #$30
        STA aE3
        STA aE4
        LDA #$00
        STA a26
        STA a27
b105E   JSR s10DE
        JSR s61E2
        JSR s10E3
        JSR s54B1
        JSR sB7E4
        LDA a18
        BEQ b10A2
        LDA a26
        BNE b105E
        LDA a27
        CMP #$02
        BCS b108C
        LDX #$A2
        LDY #$1C
        JSR s3F3F
        LDX #$A9
        LDY #$1C
        JSR s3F3F
        JMP b105E

b108C   JSR s10DE
        JSR s61E2
        JSR s10E3
        JSR s54B1
        LDA a18
        BEQ b10A2
        LDA a26
        CMP #$20
        BCC b108C
b10A2   JMP j0A9B

s10A5   JSR s10DE
        JSR s6709
        JSR s61E2
        JSR s3D4C
        JSR s10E3
        JSR s54B1
        JSR s67C3
        JSR s47E6
        JSR s48D6
        JSR s69D9
        JSR s46C4
        RTS 

s10C7   JSR s10DE
        JSR s67D1
        JSR s10E3
        JSR s6D2D
        JSR s45F9
        RTS 

s10D7   JSR s10DE
        JSR s10E3
        RTS 

s10DE   LDA a0A
        BNE s10DE
        RTS 

s10E3   INC a26
        BNE b10E9
        INC a27
b10E9   LDA a0A
        BEQ b10E9
        JSR s6CD7
        JSR s67C3
        RTS 

s10F4   LDA a7B
        BNE b10F9
        RTS 

b10F9   SEI 
        LDX #<p1185
        LDY #>p1185
        STX $0314    ;IRQ
        STY $0315    ;IRQ
        JSR s1193
        LDA #$27
        STA a01
        LDX #<p31E0
        LDY #>p31E0
        STX a1A
        STY a1B
        LDX #<$0500
        LDY #>$0500
        STX a1C
        STY a1D
b111B   JSR s11BC
        LDA #$57
        JSR $FFA8 ;$FFA8 - output byte to SERIAL            
        LDA a1C
        JSR $FFA8 ;$FFA8 - output byte to SERIAL            
        LDA a1D
        JSR $FFA8 ;$FFA8 - output byte to SERIAL            
        LDA #$20
        JSR $FFA8 ;$FFA8 - output byte to SERIAL            
        LDY #$00
b1134   LDA (p1A),Y
        JSR $FFA8 ;$FFA8 - output byte to SERIAL            
        INY 
        CPY #$20
        BCC b1134
        JSR $FFAE ;$FFAE - unlisten all SERIAL devices      
        CLC 
        LDA a1A
        ADC #$20
        STA a1A
        BCC b114C
        INC a1B
b114C   LDA a1C
        CLC 
        ADC #$20
        STA a1C
        LDA a1D
        ADC #$00
        STA a1D
        CMP #$06
        BCC b111B
        LDA a1C
        CMP #$1E
        BCC b111B
        JSR s11BC
        LDA #$45
        JSR $FFA8 ;$FFA8 - output byte to SERIAL            
        LDA #$00
        JSR $FFA8 ;$FFA8 - output byte to SERIAL            
        LDA #$05
        JSR $FFA8 ;$FFA8 - output byte to SERIAL            
        JSR $FFAE ;$FFAE - unlisten all SERIAL devices      
        LDA #$25
        STA a01
        JSR s11AB
        LDA #$00
        STA a7B
        CLI 
        RTS 

p1185   LDA $DC0D    ;CIA1: CIA Interrupt Control Register
        LDA #$FF
        STA $D019    ;VIC Interrupt Request Register (IRR)
        PLA 
        TAY 
        PLA 
        TAX 
        PLA 
        RTI 

s1193   LDX #$FE
b1195   LDA f01,X
        STA $E001,X
        LDA $01FF,X
        STA $E1FF,X
        LDA #$00
        STA f01,X
        STA $01FF,X
        DEX 
        BNE b1195
        RTS 

s11AB   LDX #$FE
b11AD   LDA $E001,X
        STA f01,X
        LDA $E1FF,X
        STA $01FF,X
        DEX 
        BNE b11AD
        RTS 

s11BC   LDA #$08
        JSR $FFB1 ;$FFB1 - make SERIAL device listen        
        LDA #$6F
        JSR $FF93 ;$FF93 - send secondary addr after listen 
        LDA #$4D
        JSR $FFA8 ;$FFA8 - output byte to SERIAL            
        LDA #$2D
        JSR $FFA8 ;$FFA8 - output byte to SERIAL            
        RTS 

s11D1   LDY a69
        TYA 
        LSR 
        LSR 
        CLC 
        ADC #$30
        STA a1863
        STA aA9
        ADC #$04
        CMP #$40
        BCC b11E6
        LDA #$40
b11E6   STA a185F
        LDA f2057,Y
        ROL 
        ROL 
        AND #$01
        CLC 
        ADC #$07
        STA a89
        LDA f2057,Y
        AND #$7F
        STA a8A
        TYA 
        TAX 
        CPX #$07
        BCC b1204
        LDX #$07
b1204   LDA aA6
        LSR 
        LSR 
        CLC 
        ADC #$08
        CMP #$11
        BCC b1211
        LDA #$10
b1211   STA a8E
        STA a1935
        LDA f2089,X
        STA a5B31
        LDA f2091,X
        STA aA4
        LDA aA6
        CLC 
        ADC #$30
        STA a8D
        LDA #$00
        STA a8C
        STA a1273
        TAX 
        LDA #$AF
        SEC 
        SBC aA6
        STA $0250
        LDA #$80
        SEC 
        SBC aA6
        LSR 
        LSR 
        LSR 
        LSR 
        STA a20
        JSR s1267
        JSR s1267
        JSR s1267
        JSR s1267
        ASL a20
        JSR s1267
        JSR s1267
        LDA #$00
        STA aA0
        STA aA5
        LDA #$10
        STA aA1
        LDA #$EF
        STA a2AAF
        RTS 

s1267   LDA $0250,X
        INX 
        CLC 
        ADC a20
        STA $0250,X
        RTS 

a1273   =*+$01
s1272   LDA #$00
        BEQ b127E
        DEC a1273
        LDA #$00
        STA a8C
b127D   RTS 

b127E   LDA a8C
        BEQ b127D
        BPL b12FB
        CMP #$FE
        BEQ b128F
        CMP #$FF
        BEQ b1292
        JMP j1413

b128F   JMP j146F

b1292   LDX #$0D
b1294   LDA f7D00,X
        BEQ b129F
        INX 
        CPX #$15
        BCC b1294
        RTS 

b129F   LDA #$0A
        STA f7D00,X
        LDA $D41B    ;Oscillator 3 Output
        AND #$03
        CLC 
        ADC #$03
        STA f7860,X
        LDA #$16
        STA f78A0,X
        LDA #$01
        STA f7E20,X
        LDA #$00
        STA f7E40,X
        STA f7BE0,X
        LDA #$88
        STA f7E00,X
        LDA #$FF
        STA f7E60,X
        LDA $D41B    ;Oscillator 3 Output
        AND #$F8
        ORA #$01
        STA f7D20,X
        STA f7E80,X
        TXA 
        ORA a2D
        TAY 
        LDA #$F7
        STA f7CA0,Y
        TXA 
        ASL 
        TAX 
        LDA $D41B    ;Oscillator 3 Output
        AND #$0F
        TAY 
        LDA f7900,Y
        STA f76,X
        LDA f7A00,Y
        STA f77,X
        DEC aA5
        LDA #$00
        STA a8C
        RTS 

b12FB   LDA #$0D
        STA a20
        LDA #$50
        SEC 
        SBC a69
        LSR 
        STA a1273
        LDX #$2A
        LDA a6A
        BPL b1310
        LDX #$2B
b1310   STX aE4
        LDA $D41B    ;Oscillator 3 Output
        STA a84
        AND #$F8
        STA a1350
        LDA a84
        AND #$07
        STA a84
        STA a0F
        LDA $D41B    ;Oscillator 3 Output
        ASL 
        ROL a0F
        ASL 
        ROL a0F
        ASL 
        LDA a0F
        ROL 
        TAY 
        LDA f22C5,Y
        STA a83
        BEQ b1340
        LDA $D41B    ;Oscillator 3 Output
        AND #$80
        BEQ b134B
b1340   LDA $D41B    ;Oscillator 3 Output
        AND #$0F
        CMP #$04
        BCS b134B
        ADC #$04
b134B   STA a137D
        CLC 
a1350   =*+$01
        ADC #$40
        STA a88
        LDA #$01
        STA a85
        LDA $D41B    ;Oscillator 3 Output
        AND #$0F
        TAX 
        LDA f7900,X
        STA a1C
        LDA f7A00,X
        STA a1D
b1367   LDX a20
        LDA f7D00,X
        BEQ b1376
        INX 
        STX a20
a1372   =*+$01
        CPX #$12
        BCC b1367
        RTS 

b1376   LDA a85
        STA f7E20,X
        CLC 
a137D   =*+$01
        ADC #$00
        STA a85
        LDA a8C
        ORA #$80
        STA f7E00,X
        LDA #$00
        STA f7E40,X
        LDA a8E
        CLC 
        ADC #$0F
        STA f7E60,X
        LDA a8A
        STA f7BE0,X
        TAY 
        LDA a89
        STA f7D00,X
        CMP #$07
        BEQ b13CC
        LDA f1F2C,Y
        STA a13F8
        STA a13C8
        LDA f1F4C,Y
        AND #$70
        LSR 
        LSR 
        LSR 
        LSR 
        ORA a88
        STA f7D20,X
        LDA f1F6C,Y
        STA f78A0,X
        LDA f1F4C,Y
        AND #$8F
        BEQ b13E8
a13C8   =*+$01
        STA a2500
        BNE b13E8
b13CC   LDA f2099,Y
        STA a13F8
        LDA a88
        ORA #$01
        STA f7D20,X
        STA f7E80,X
        LDA f2199,Y
        STA f7860,X
        LDA f21D9,Y
        STA f78A0,X
b13E8   LDA a88
        CLC 
        ADC a83
        STA a88
        TYA 
        STA f7BE0,X
        TXA 
        ORA a2D
        TAY 
a13F8   =*+$01
        LDA #$00
        STA f7CA0,Y
        TXA 
        ASL 
        TAX 
        LDA a1C
        STA f76,X
        LDA a1D
        STA f77,X
        DEC a84
        BMI b140E
        JMP b1367

b140E   LDA #$00
        STA a8C
        RTS 

j1413   LDX #$13
b1415   LDA f7D00,X
        BEQ b1421
        INX 
        CPX a0C
        BCC b1415
        BCS b146A
b1421   TXA 
        ORA a2D
        TAY 
        LDA #$E1
        STA f7CA0,Y
        LDA a2D
        ORA a8C
        AND #$7F
        TAY 
        LDA f7F60,Y
        STA a143B
        LDA f7D20,Y
a143B   =*+$01
        LDY #$00
        JSR sB17D
        CPY #$08
        BCC b1449
        LDA $D41B    ;Oscillator 3 Output
        AND #$07
        TAY 
b1449   LDA f2291,Y
        ORA #$05
        STA f7D20,X
        LDA #$09
        STA f7D00,X
        LDA #$27
        STA f78A0,X
        LDA #$01
        STA f7E20,X
        LDA a8C
        STA f7E00,X
        LDA #$60
        STA f7E60,X
b146A   LDA #$00
        STA a8C
        RTS 

j146F   LDA $D41B    ;Oscillator 3 Output
        AND #$0F
        TAY 
        LDA f1FA0,Y
        STA a14F6
        LDA #$0D
        STA a20
        LDA $D41B    ;Oscillator 3 Output
        STA a84
        AND #$F8
        STA a14BD
        LDA a84
        AND #$07
        STA a84
        STA a0F
        LDA $D41B    ;Oscillator 3 Output
        ASL 
        ROL a0F
        ASL 
        ROL a0F
        ASL 
        LDA a0F
        ROL 
        TAY 
        LDA f22C5,Y
        STA a83
        BEQ b14AD
        LDA $D41B    ;Oscillator 3 Output
        AND #$80
        BEQ b14B8
b14AD   LDA $D41B    ;Oscillator 3 Output
        AND #$0F
        CMP #$03
        BCS b14B8
        ADC #$03
b14B8   STA a14DA
        CLC 
a14BD   =*+$01
        ADC #$40
        STA a88
        LDA #$01
        STA a85
b14C4   LDX a20
        LDA f7D00,X
        BEQ b14D3
        INX 
        STX a20
        CPX a0C
        BCC b14C4
        RTS 

b14D3   LDA a85
        STA f7E20,X
        CLC 
a14DA   =*+$01
        ADC #$00
        STA a85
        LDA #$88
        STA f7E00,X
        LDA #$00
        STA f7E40,X
        LDA a8E
        STA f7E60,X
        LDA $D41B    ;Oscillator 3 Output
        AND #$0F
        TAY 
        LDA f1FA0,Y
a14F6   =*+$01
        LDA #$00
        STA f7BE0,X
        TAY 
        LDA #$08
        STA f7D00,X
        LDA f1F2C,Y
        STA a1537
        STA a1525
        LDA f1F4C,Y
        AND #$70
        LSR 
        LSR 
        LSR 
p1511   LSR 
        ORA a88
        STA f7D20,X
        LDA f1F6C,Y
        STA f78A0,X
        LDA f1F4C,Y
        AND #$8F
        BEQ b1527
a1525   =*+$01
        STA a2500
b1527   LDA a88
        CLC 
        ADC a83
        STA a88
        TYA 
        STA f7BE0,X
        TXA 
        ORA a2D
        TAY 
a1537   =*+$01
        LDA #$00
        STA f7CA0,Y
        DEC a84
        BMI b1542
        JMP b14C4

b1542   LDA #$00
        STA a8C
        RTS 

s1547   LDA $D41B    ;Oscillator 3 Output
        AND #$07
        TAX 
        ADC #$04
        AND #$07
        TAY 
        LDA f2279,X
        STA a25B0
        LDA f2279,Y
        STA a25B2
        LDY #$0E
b1560   LDA f31C0,X
        STA f2511,Y
        LDA f31C1,X
        STA f2510,Y
        INX 
        DEY 
        DEY 
        BPL b1560
        RTS 

s1572   LDA #$0A
        STA a0F
        ORA a2D
        STA a11
        JSR s1585
        INC a0F
        INC a11
        JSR s1585
        RTS 

s1585   LDX a0F
        LDA f7D00,X
        BEQ b15AC
        LDY f7E60,X
        LDA f159E,Y
        STA a159C
        LDA f15A5,Y
        STA a159D
a159C   =*+$01
a159D   =*+$02
        JMP j161D

f159E   .BYTE $1D,$1E,$39,$50,$E8,$2B,$1D
f15A5   .BYTE $16,$16,$16,$16,$16,$17,$16
b15AC   LDA f7E60,X
        CMP #$10
        BCS b15B7
        INC f7E60,X
        RTS 

b15B7   LDY f96,X
        BMI j161D
        LDA f7EA0,Y
        AND #$F8
        STA a15D8
        ORA aA4
        STA f7E80,X
        EOR #$80
        STA f7D20,X
        LDA #$01
        STA f7E60,X
        LDA #$06
        STA f7D00,X
a15D8   =*+$01
        LDA #$00
        CLC 
        ADC #$10
        LSR 
        LSR 
        LSR 
        LSR 
        LSR 
        STA f98,X
        TAY 
        LDA f2281,Y
        AND #$F8
        CLC 
        ADC f7E80,X
        STA f7E80,X
        LDA f2281,Y
        JSR s17EC
        LDY a11
        LDA a64
        STA f7C20,Y
        LDA a65
        STA f7D20,Y
        LDA a67
        STA f7C60,Y
        LDA a68
        STA f7F60,Y
        LDA #$89
        STA f7CA0,Y
        LDA #$32
        SEC 
        SBC a7D
        ASL 
        STA a1744
        STA a174E
j161D   RTS 

        JSR s1794
        BCC j161D
        INC f7E60,X
        LDY f98,X
        LDA f2289,Y
        AND #$F8
        ORA aA4
        STA f7E80,X
        LDA f2289,Y
        JSR s17EC
        RTS 

        JSR s1794
        BCC j161D
        INC f7E60,X
        LDY f96,X
        LDA f7EE0,Y
        STA f7E40,X
        LDA f7F00,Y
        STA f7E20,X
        RTS 

        LDY a11
        LDA f7B80,Y
        SEC 
        SBC a63
        LDA f7C20,Y
        SBC a64
        STA a1A
        LDA f7D20,Y
        SBC a65
        BMI b166F
        CMP a78
        BCC b1675
        SBC a79
        JMP b1675

b166F   CMP a77
        BCS b1675
        ADC a79
b1675   CMP #$00
        STA a1B
        BMI b1693
        LDA f7E20,X
        BMI b16D4
        CMP a1B
        BEQ b1688
        BCC b16D4
        BCS b16CC
b1688   LDA f7E40,X
        CMP a1A
        BEQ b16AB
        BCC b16E2
        BCS b16DC
b1693   LDA f7E20,X
        BPL b16CC
        CMP a1B
        BEQ b16A0
        BCC b16D4
        BCS b16CC
b16A0   LDA f7E40,X
        CMP a1A
        BEQ b16AB
        BCC b16E2
        BCS b16DC
b16AB   INC f7E60,X
        LDA #$80
        STA f7D20,X
        LDA #$83
        STA f7E80,X
        LDY f96,X
        LDA f7F20,Y
        SEC 
        SBC #$15
        STA f7E40,X
        LDA f7F40,Y
        SBC #$00
        STA f7E20,X
        RTS 

b16CC   LDA #$40
        ORA aA4
        STA f7E80,X
        RTS 

b16D4   LDA #$C0
        ORA aA4
        STA f7E80,X
        RTS 

b16DC   LDA #$43
        STA f7E80,X
        RTS 

b16E2   LDA #$C3
        STA f7E80,X
        RTS 

        LDY a11
        LDA f7FA0,Y
        SEC 
        SBC a66
        LDA f7C60,Y
        SBC a67
        STA a1714
        LDA f7F60,Y
        SBC a68
        BMI b1708
        CMP a78
        BCC b170E
        SBC a79
        JMP b170E

b1708   CMP a77
        BCS b170E
        ADC a79
b170E   CMP f7E20,X
        BNE b172A
a1714   =*+$01
        LDA #$EB
        CMP f7E40,X
        BNE b172A
        INC f7E60,X
        LDA #$90
        STA f7CA0,Y
        LDA #$80
        STA f7D20,X
        STA f7E80,X
b172A   RTS 

        LDY a11
        LDA f7CA0,Y
        CMP #$9A
        BCC b1793
        LDY f96,X
        LDA f7EC0,Y
        BEQ b176C
        LDA a6A
        BMI b1749
        LDA f7EC0,Y
        CLC 
a1744   =*+$01
        ADC #$00
        BCC b1769
        BCS b1753
b1749   LDA f7EC0,Y
        SEC 
a174E   =*+$01
        SBC #$00
        BEQ b1753
        BCS b1769
b1753   LDA #$00
        STA f7EC0,Y
        INC a7D
        LDA f7F60,Y
        BEQ b176C
        ORA a2D
        TAY 
        LDA #$A2
        STA f7CA0,Y
        BNE b176C
b1769   STA f7EC0,Y
b176C   INC f7E60,X
        LDY f96,X
        STY a1784
b1774   INY 
        CPY #$20
        BCS b1780
        LDA f7EC0,Y
        BEQ b1774
        BNE b1790
b1780   LDY #$FF
b1782   INY 
a1784   =*+$01
        CPY #$00
        BCS b178E
        LDA f7EC0,Y
        BEQ b1782
        BNE b1790
b178E   LDY #$FF
b1790   TYA 
        STA f96,X
b1793   RTS 

s1794   LDY a11
        LDA f7E40,X
        BIT a6E95
        BEQ b17C4
        LDA f7C60,Y
        SEC 
        SBC a67
        LDA f7F60,Y
        SBC a68
        BMI b17B4
        CMP a78
        BCC b17BA
        SBC a79
        JMP b17BA

b17B4   CMP a77
        BCS b17E0
        ADC a79
b17BA   CLC 
        ADC #$80
        CMP f7E20,X
        BEQ b17EA
        BNE b17E8
b17C4   LDA f7C20,Y
        SEC 
        SBC a64
        LDA f7D20,Y
        SBC a65
        BMI b17DA
        CMP a78
        BCC b17E0
        SBC a79
        JMP b17E0

b17DA   CMP a77
        BCS b17E0
        ADC a79
b17E0   CLC 
        ADC #$80
        CMP f7E20,X
        BEQ b17EA
b17E8   CLC 
        RTS 

b17EA   SEC 
        RTS 

s17EC   AND #$03
        STA f7E40,X
        LDY f96,X
        BIT a6E95
        BEQ b1819
        BIT a6E96
        BEQ b1809
        LDA f7F20,Y
        ASL 
        LDA f7F40,Y
        ADC #$01
        JMP j1812

b1809   LDA f7F20,Y
        ASL 
        LDA f7F40,Y
        SBC #$01
j1812   CLC 
        ADC #$80
        STA f7E20,X
        RTS 

b1819   BIT a6E96
        BEQ b182A
        LDA f7EE0,Y
        ASL 
        LDA f7F00,Y
        ADC #$01
        JMP j1833

b182A   LDA f7EE0,Y
        ASL 
        LDA f7F00,Y
        SBC #$01
j1833   CLC 
        ADC #$80
        STA f7E20,X
        RTS 

s183A   LDA a7D08
        ORA a7D09
        BNE b1856
        LDA $D41B    ;Oscillator 3 Output
        CMP a8D
        BCS b1855
        LDX #$0D
b184B   LDA f7D00,X
        BEQ b1867
        INX 
        CPX #$10
        BCC b184B
b1855   RTS 

b1856   LDA $D41B    ;Oscillator 3 Output
        BNE b1855
        LDY aA9
        INY 
a185F   =*+$01
        CPY #$00
        BCC b1864
a1863   =*+$01
        LDY #$00
b1864   STY aA9
        RTS 

b1867   LDA #$0C
        STA f7D00,X
        LDA a8E
        STA f7E60,X
        LDY aA9
        LDA f2119,Y
        AND #$1F
        STA f7E00,X
        LDA f2199,Y
        STA f7860,X
        LDA $D41B    ;Oscillator 3 Output
        AND #$F8
        ORA f2199,Y
        STA f7D20,X
        STA f7E80,X
        LDA f2099,Y
        STA a189E
        TYA 
        STA f7BE0,X
        TXA 
        ORA a2D
        TAY 
a189E   =*+$01
        LDA #$FF
        STA f7CA0,Y
        LDA a38
        JSR s18C2
        STA f7F60,Y
        BEQ b18B4
        LDA a36
        JSR s18C2
        JMP j18BE

b18B4   LDA a36
        JSR s18C2
        BMI j18BE
        CLC 
        ADC #$02
j18BE   STA f7D20,Y
        RTS 

s18C2   BMI b18CC
        LSR 
        LSR 
        EOR #$FF
        CLC 
        ADC #$01
        RTS 

b18CC   EOR #$FF
        CLC 
        ADC #$01
        LSR 
        LSR 
        RTS 

s18D4   LDY a7D
        CPY #$20
        BCS b1934
        CPY #$0A
        BCC b18E1
        JMP j1997

b18E1   CPY a69
        BEQ b18EA
        BCC b18EA
        JMP j1997

a18EB   =*+$01
b18EA   LDA #$01
        BNE b1930
        LDA a65
        BPL b18F7
        EOR #$FF
        CLC 
        ADC #$01
b18F7   STA a1905
        LDA a68
        BPL b1903
        EOR #$FF
        CLC 
        ADC #$01
b1903   CLC 
a1905   =*+$01
        ADC #$00
        LSR 
        LSR 
        STA a1912
        CLC 
        ADC #$1C
        STA a18EB
a1912   =*+$01
        LDA #$00
        LSR 
        LSR 
        LSR 
        LSR 
        EOR #$FF
        SEC 
        ADC #$0B
        STA aA965
        LDA #$12
        STA aE4
        LDA a58
        BEQ b1930
        LDA $D41B    ;Oscillator 3 Output
        BMI b1930
        LDA #$FE
        STA a8C
b1930   DEC a18EB
b1933   RTS 

a1935   =*+$01
b1934   LDY #$00
        BEQ b1954
        LDA a26
        BNE b18EA
        DEC a1935
        BEQ b194A
        LDA a58
        BEQ b18EA
        LDA #$00
        STA a1935
b194A   LDA #$A0
        STA a196E
        LDA #$00
        STA a2AAF
b1954   LDA aA5
        BEQ b196D
        LDA a26
        AND #$1F
        BNE b1933
        LDA a58
        BEQ b1967
        LDA #$FF
        STA a8C
        RTS 

b1967   DEC aA5
        RTS 

b196A   INC a25
        RTS 

a196E   =*+$01
b196D   LDY #$00
        LDA a26
        AND #$01
        BEQ b1933
        DEY 
        BEQ b196A
        STY a196E
        CPY #$40
        BNE b1933
        LDA a58
        BEQ b196A
        LDA #$0B
        STA a7D08
        LDA a2D
        ORA #$08
        TAY 
        LDA #$72
        STA f7CA0,Y
        LDA #$1D
        STA aE3
        RTS 

j1997   LDA a26
        AND #$1F
        BNE b19AF
        LDX #$03
        LDY #$2B
        LDA #$02
b19A3   STA $D862,Y
        STA $D862,X
        DEY 
        DEX 
        BPL b19A3
        LDA #$00
b19AF   TAY 
        LDX f2342,Y
        BEQ b19B9
        LDA #$E3
        STA fE2,X
b19B9   LDA f7EC0,Y
        BEQ b19C3
        LDA a6A
        STA f7EC0,Y
b19C3   RTS 

s19C4   LDX a0C
b19C6   LDA f7D00,X
        CMP #$0C
        BEQ b19D3
        CMP #$0D
        BEQ b19E9
        BNE b19E4
b19D3   LDA #$FF
        STA f7E60,X
        LDA f7E00,X
        BEQ b19E9
        LDA #$05
        STA f7E00,X
        BNE b19E9
b19E4   LDA #$00
        STA f7D00,X
b19E9   DEX 
        BPL b19C6
        LDA #$00
        STA a8D
        RTS 

s19F1   LDX #$1F
        LDA #$00
b19F5   STA f7D00,X
        DEX 
        BPL b19F5
        RTS 

f19FC   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
f1A04   .BYTE $33,$53,$53,$53,$0B,$00
f1A0A   .BYTE $1E,$A0,$A0,$64,$46,$00,$3C,$3C
        .BYTE $3C,$3C,$3C,$3C,$3C,$3C,$3C,$64
        .BYTE $00,$3C,$3C,$3C,$3C,$3C,$3C,$3C
        .BYTE $3C,$3C,$64,$00,$A0,$00,$A0,$00
        .BYTE $50,$00,$FE,$00,$FE,$00,$FE,$00
        .BYTE $FE,$00,$FE,$00,$FE,$00,$FE,$00
        .BYTE $FE,$00,$FE,$00,$FE,$00,$FE,$00
        .BYTE $FE,$00,$FE,$00,$FE,$00,$FE,$00
        .BYTE $FE,$00,$FE,$00,$FE,$00,$FE,$00
        .BYTE $FE,$00,$FA,$00,$FA,$FA,$C8
f1A59   .BYTE $00,$00,$00,$00,$00,$00,$FF
f1A60   .BYTE $00,$02,$04,$0A,$06,$0E,$08,$08
        .BYTE $08,$08,$08,$08,$08,$08,$08,$08
        .BYTE $0C,$08,$08,$08,$08,$08,$08,$08
        .BYTE $08,$08,$08,$10,$12,$00,$0A,$14
        .BYTE $1A,$14,$1A,$14,$1C,$14,$1E,$14
        .BYTE $20,$14,$22,$14,$24,$16,$26,$16
        .BYTE $28,$16,$2A,$16,$2C,$16,$2E,$16
        .BYTE $30,$16,$32,$16,$34,$16,$36,$16
        .BYTE $38,$18,$3A,$18,$3C,$18,$3E,$18
        .BYTE $40,$18,$42,$00,$0A,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00
f1AB7   .BYTE $A4
f1AB8   .BYTE $2D,$AF,$2D,$C5,$2D,$18,$2D,$91
        .BYTE $2D,$DB,$2D,$39,$2D,$27,$2D,$7E
        .BYTE $1C,$90,$1C,$D1,$1B,$E0,$1B,$F2
        .BYTE $1B,$96,$1B,$A0,$1B,$AA,$1B,$B8
        .BYTE $1B,$C1,$1B,$FB,$1A,$23,$1B,$49
        .BYTE $1B,$0B,$1B,$54,$1B,$2E,$1B,$3A
        .BYTE $1B,$60,$1B,$69,$1B,$43,$1B,$7A
        .BYTE $1B,$72,$1B,$14,$1B,$1A,$1B,$83
        .BYTE $1B,$8E,$1B,$14,$07,$0B,$18,$17
        .BYTE $1E,$1C,$24,$16,$18,$1B,$19,$11
        .BYTE $0A,$12,$FF,$14,$0E,$1E,$0B,$12
        .BYTE $1A,$1E,$0E,$FF,$14,$12,$0B,$12
        .BYTE $0A,$FF,$14,$0E,$0C,$0A,$1E,$1D
        .BYTE $0E,$1C,$FF,$14,$0C,$16,$18,$1B
        .BYTE $19,$11,$0E,$1E,$1C,$FF,$14,$0C
        .BYTE $1E,$1B,$12,$0D,$12,$16,$12,$17
        .BYTE $0E,$FF,$14,$0E,$11,$22,$19,$17
        .BYTE $18,$1C,$FF,$14,$12,$17,$12,$21
        .BYTE $FF,$14,$0C,$19,$11,$18,$0B,$0E
        .BYTE $1D,$18,$1B,$FF,$14,$0B,$19,$11
        .BYTE $0A,$17,$1D,$0A,$1C,$1E,$1C,$FF
        .BYTE $14,$0E,$0E,$1B,$0E,$0B,$18,$1C
        .BYTE $FF,$14,$0F,$0C,$0A,$15,$12,$10
        .BYTE $18,$FF,$14,$0F,$14,$0E,$1B,$0E
        .BYTE $1C,$FF,$14,$0E,$14,$1B,$0A,$1D
        .BYTE $18,$1C,$FF,$14,$0C,$1D,$11,$0A
        .BYTE $17,$0A,$1D,$18,$1C,$FF,$14,$0F
        .BYTE $1D,$22,$0C,$11,$0E,$FF,$14,$0D
        .BYTE $17,$1E,$0C,$15,$0E,$1E,$1C,$FF
        .BYTE $14,$0E,$18,$1B,$0B,$12,$1D,$0A
        .BYTE $15,$FF,$14,$09,$1B,$0E,$13,$1E
        .BYTE $1F,$0E,$17,$0A,$1D,$18,$1B,$FF
        .BYTE $14,$0E,$0B,$0E,$0A,$0C,$18,$17
        .BYTE $FF,$14,$07,$17,$0E,$1E,$1D,$1B
        .BYTE $18,$17,$24,$0D,$20,$0A,$1B,$0F
        .BYTE $FF,$04,$09,$1D,$11,$0E,$24,$1E
        .BYTE $17,$12,$1F,$0E,$1B,$1C,$0E,$FF
        .BYTE $04,$06,$1D,$11,$0E,$24,$12,$17
        .BYTE $11,$0A,$0B,$12,$1D,$0A,$17,$1D
        .BYTE $1C,$FF,$04,$06,$1D,$11,$0E,$24
        .BYTE $0A,$17,$1D,$0A,$10,$18,$17,$12
        .BYTE $1C,$1D,$1C,$FF,$04
a1C05   .BYTE $01,$1F,$12,$1C,$12,$1D,$0E,$0D
        .BYTE $24,$15,$0E,$1F,$0E,$15
a1C13   .BYTE $1C,$24
a1C15   .BYTE $00
a1C16   .BYTE $00
a1C17   .BYTE $24,$1D,$18,$24
a1C1B   .BYTE $00
a1C1C   .BYTE $00,$FF,$14,$07,$12,$17,$24
a1C23   .BYTE $00
a1C24   .BYTE $00,$24,$1D,$12,$16,$0E,$1C,$15
        .BYTE $12,$0C,$0E
a1C2F   .BYTE $1C,$FF,$04,$01,$20,$0E,$15,$15
        .BYTE $24,$0D,$18,$17,$0E,$24,$19,$15
        .BYTE $0A,$22,$0E,$1B,$24
f1C44   .BYTE $18,$17,$0E,$FF,$04,$02,$0B,$1B
        .BYTE $12,$15,$15,$12,$0A,$17,$1D,$24
        .BYTE $19,$15,$0A,$22,$0E,$1B,$24
f1C5B   .BYTE $18,$17,$0E,$FF
f1C5F   .BYTE $18,$17,$0E
f1C62   .BYTE $1D,$20,$18,$14,$01,$15,$0E,$1F
        .BYTE $0E,$15,$24
a1C6D   .BYTE $24
a1C6E   .BYTE $00,$25,$24,$1D,$12,$16,$0E,$1C
        .BYTE $15,$12,$0C,$0E,$24
a1C7B   .BYTE $24
a1C7C   .BYTE $00,$FF,$04,$06,$1C,$18,$1E,$17
        .BYTE $0D,$24,$0A,$17,$0D,$24,$16,$1E
        .BYTE $1C,$12,$0C,$FF,$14,$06,$0B,$22
        .BYTE $24,$1C,$1D,$0E,$1F,$0E,$24,$1D
        .BYTE $1E,$1B,$17,$0E,$1B,$FF,$04,$10
        .BYTE $10,$0A,$16,$0E,$FF,$14,$10,$18
        .BYTE $1F,$0E,$1B,$FF,$14,$0C,$0C,$18
        .BYTE $16,$19,$15,$0E,$1D,$0E,$FF,$04
        .BYTE $0A,$19,$15,$0A,$22,$0E,$1B,$24
        .BYTE $18,$17,$0E,$FF,$04,$0A,$19,$15
        .BYTE $0A,$22,$0E,$1B,$24,$1D,$20,$18
        .BYTE $FF,$14,$0A,$10,$1B,$0E,$0A,$1D
        .BYTE $24,$1C,$0C,$18,$1C,$0E,$FF,$04
        .BYTE $03,$22,$18,$1E,$1B,$24,$12,$17
        .BYTE $12,$1D,$12,$0A,$15,$1C,$24,$18
        .BYTE $15,$0E,$0A,$1C,$0E,$FF
f1CFA   .BYTE $0A,$0B,$0C,$0D,$0E,$0F,$10,$11
        .BYTE $12,$13,$14,$15,$16,$17,$18,$19
        .BYTE $1A,$1B,$1C,$1D,$1E,$1F,$20,$21
        .BYTE $22,$23,$2D,$25
f1D16   .BYTE $E4,$04,$24,$00,$C4,$00,$44,$00
        .BYTE $A4,$84,$64
f1D21   .BYTE $04,$04,$44,$00,$C4,$00,$44,$00
        .BYTE $84,$84,$44
f1D2C   .BYTE $83,$96,$BF,$F1,$39,$63,$8B,$9E
        .BYTE $C2,$D8,$12,$2F,$D3,$D6,$05,$19
f1D3C   .BYTE $AF,$AF,$AF,$AF,$B0,$B0,$B0,$B0
        .BYTE $B0,$B0,$B1,$B1,$B1,$B1,$B2,$B2
f1D4C   .BYTE $12,$07,$0F,$12,$10,$0C,$11,$14
        .BYTE $10,$0C,$11,$12,$0F,$14,$13,$14
        .BYTE $11,$10,$0B,$12,$0B,$11,$13,$13
        .BYTE $0F,$0F,$14,$10,$11,$14,$0A,$0A
        .BYTE $13,$12,$13,$0E,$10,$13,$12,$09
        .BYTE $13,$14,$12,$0F,$11,$11,$12,$12
        .BYTE $15,$09,$11,$11,$11,$10,$14,$12
        .BYTE $15,$10,$10,$10
f1D88   .BYTE $61,$4C,$A8,$FD,$AF,$EB,$C9,$F7
        .BYTE $C3,$BE,$51,$ED,$A8,$44,$E7,$EA
        .BYTE $B9,$41,$DB,$E0,$AE,$DD,$72,$D7
        .BYTE $B3,$31,$DA,$A9,$D0,$44,$CB,$9E
        .BYTE $62,$C7,$CA,$A3,$C0,$F9,$52,$BB
        .BYTE $E6,$44,$BA,$80,$B7,$42,$E9,$D6
        .BYTE $F5,$AB,$BA,$A7,$D9,$32,$44,$C6
        .BYTE $F5,$AA,$C9,$A7
f1DC4   .BYTE $60,$00,$00,$01,$00,$00,$70,$18
        .BYTE $00,$00,$70,$02,$00,$50,$1C,$03
        .BYTE $78,$78,$00,$01,$00,$03,$C0,$20
        .BYTE $00,$80,$03,$80,$01,$60,$00,$00
        .BYTE $D0,$24,$02,$00,$02,$B0,$E0,$00
        .BYTE $03,$70,$02,$02,$28,$F0,$C0,$04
        .BYTE $04,$00,$01,$2C,$E0,$F8,$80,$04
        .BYTE $05,$01,$F8,$30
f1E00   .BYTE $0F,$10,$0F,$0E,$14,$0C,$0F,$0B
        .BYTE $11,$0E,$16,$15,$11,$10,$0E,$0A
        .BYTE $17,$13,$16,$14,$0E,$15,$0D,$09
        .BYTE $16,$0E,$14,$13,$0C,$10,$14,$15
        .BYTE $13,$18,$17,$0B,$14,$0F,$12,$0B
        .BYTE $17,$14,$16,$0E,$0A,$14,$11,$15
        .BYTE $13,$09,$0A,$15,$14,$11,$0E,$0A
        .BYTE $12,$13,$10,$13
f1E3C   .BYTE $00,$00,$00,$00,$28,$00,$01,$00
        .BYTE $55,$01,$18,$28,$53,$D4,$01,$00
        .BYTE $50,$52,$18,$28,$01,$F4,$01,$00
        .BYTE $D0,$01,$F2,$28,$01,$03,$18,$18
        .BYTE $F2,$28,$30,$01,$33,$03,$28,$01
        .BYTE $33,$18,$F2,$03,$01,$28,$03,$30
        .BYTE $18,$01,$01,$28,$F0,$03,$03,$01
        .BYTE $18,$28,$03,$30
f1E78   .BYTE $10,$09,$08,$0E,$0D,$08,$0D,$0A
        .BYTE $1E,$0A,$C8,$19,$14,$1B,$08,$06
        .BYTE $3C,$0F,$B9,$09,$06,$23,$08,$05
        .BYTE $2F,$06,$23,$0A,$07,$1B,$F0,$AF
        .BYTE $28,$44,$41,$05,$1C,$16,$06,$04
        .BYTE $1A,$A5,$23,$11,$07,$0E,$0B,$28
        .BYTE $A0,$05,$04,$1E,$1C,$0C,$14,$04
        .BYTE $96,$10,$0B,$14
f1EB4   .BYTE $71,$90,$90,$71,$D8,$70,$AC,$51
        .BYTE $B0,$AC,$CE,$F8,$90,$B1,$A8,$51
        .BYTE $F0,$90,$AE,$D8,$88,$A8,$8C,$31
        .BYTE $D1,$68,$A8,$B8,$6C,$CC,$EE,$8E
        .BYTE $A8,$F8,$A8,$6C,$A8,$A8,$B8,$68
        .BYTE $C8,$8E,$AC,$88,$6C,$D8,$AC,$A8
        .BYTE $6E,$48,$4C,$B8,$8C,$8C,$88,$4C
        .BYTE $6E,$B8,$8C,$A8
f1EF0   .BYTE $0C,$01,$02,$0D,$00,$02,$05,$0D
        .BYTE $02,$05,$00,$00,$01,$04,$09,$0E
        .BYTE $01,$01,$00,$00,$09,$04,$06,$0E
        .BYTE $04,$08,$04,$00,$08,$0F,$00,$00
        .BYTE $0D,$00,$10,$11,$13,$12,$00,$11
        .BYTE $11,$00,$0E,$0D,$12,$00,$07,$13
        .BYTE $00,$0B,$11,$00,$0E,$07,$12,$11
        .BYTE $00,$00,$07,$13
f1F2C   .BYTE $D3,$B8,$B9,$70,$8F,$70,$71,$7B
        .BYTE $8F,$B8,$B9,$BE,$B8,$B9,$71,$8F
        .BYTE $8F,$B8,$B9,$B8,$7D,$C5,$D3,$D3
        .BYTE $9E,$7A,$9F,$C5,$BE,$8F,$70,$71
f1F4C   .BYTE $DD,$D5,$D2,$60,$E5,$50,$60,$60
        .BYTE $D6,$E6,$D6,$60,$EB,$F8,$70,$E8
        .BYTE $F5,$E4,$D9,$EB,$70,$20,$E7,$F1
        .BYTE $70,$70,$70,$10,$70,$60,$60,$70
f1F6C   .BYTE $1F,$1F,$1F,$1F,$1F,$1F,$1F,$1E
        .BYTE $20,$1F,$1F,$20,$21,$21,$21,$20
        .BYTE $20,$1F,$1F,$1F,$1E,$22,$1F,$21
        .BYTE $1E,$1E,$1E,$22,$20,$20,$1F,$21
f1F8C   .BYTE $20,$28,$38,$48,$38,$20,$30,$40
        .BYTE $50,$38,$40,$80,$30,$48,$50,$30
        .BYTE $40,$38,$20,$28
f1FA0   .BYTE $00,$05,$06,$07,$09,$0A,$0B,$0C
        .BYTE $11,$12,$13,$16,$18,$19,$1E,$1F
f1FB0   .BYTE $2E,$2F,$33,$34,$26,$27,$6A,$73
        .BYTE $A6,$A7,$A8,$00,$25,$2A,$7E,$87
        .BYTE $AA,$AB,$00,$FC,$19,$07,$00,$00
        .BYTE $00,$20,$7B,$1F,$00,$00,$00,$9F
        .BYTE $06,$0F,$9A,$06,$0C,$91,$06,$0B
        .BYTE $38,$2A,$08,$AF,$2A,$EF,$00,$00
        .BYTE $16,$D0,$D8,$11,$D0,$90,$12,$D0
        .BYTE $00,$FE,$FF,$CF,$FF,$FF,$05,$1A
        .BYTE $D0,$01,$0D,$DC,$7F,$0D,$DD,$7F
        .BYTE $0D,$DD,$81,$0E,$DD,$88,$1B,$D0
        .BYTE $00,$1D,$D0,$00,$17,$D0,$00,$00
        .BYTE $00
f2009   .BYTE $02,$0C,$0F,$1A,$14,$12,$07,$04
        .BYTE $07
f2012   .BYTE $03,$0D,$18,$1B,$15,$13,$10,$05
        .BYTE $10
f201B   .BYTE $80,$A0,$C0,$E0,$00,$20,$40,$60
        .BYTE $00
f2024   .BYTE $57,$75,$5D,$75,$57,$75,$D4,$75
        .BYTE $17
f202D   .BYTE $57,$75,$5D,$75,$57,$75,$D6,$75
        .BYTE $97
f2036   .BYTE $54,$45,$51,$45,$54,$45,$14,$45
        .BYTE $14
f203F   .BYTE $56,$65,$59,$65,$56,$65,$96,$65
        .BYTE $96
f2048   .BYTE $00,$08,$02,$03,$05,$09,$0B,$10
        .BYTE $00,$08,$02,$03,$05,$09,$0B
f2057   .BYTE $00,$08,$02,$03,$05,$09,$0B,$10
        .BYTE $01,$13,$0A,$9A,$18,$1E,$0E,$21
        .BYTE $04,$11,$1F,$1B,$0F,$19,$22,$98
        .BYTE $2B,$0D,$2C,$06,$12,$20,$07,$14
        .BYTE $1C,$2D,$16,$26,$29,$1A,$23,$24
        .BYTE $17,$15,$2E,$9C,$1D,$25,$27,$2A
        .BYTE $28,$2F
f2089   .BYTE $07,$07,$07,$03,$03,$01,$01,$00
f2091   .BYTE $05,$05,$05,$06,$06,$06,$07,$07
f2099   .BYTE $C4,$C5,$D4,$D8,$DC,$E0,$C5,$C5
        .BYTE $BE,$80,$EC,$EF,$EE,$E8,$C4,$E8
        .BYTE $D4,$D4,$D4,$D8,$D8,$D8,$DC,$DC
        .BYTE $E0,$E0,$E0,$EF,$EF,$EF,$BE,$BE
        .BYTE $BE,$80,$80,$80,$C5,$C5,$EC,$EC
        .BYTE $EC,$BE,$BE,$CA,$CB,$CC,$CD,$CF
        .BYTE $B4,$BE,$ED,$BA,$F0,$B4,$BA,$ED
        .BYTE $F5,$B4,$89,$FC,$ED,$F6,$FC,$F0
f20D9   .BYTE $00,$00,$96,$04,$9A,$9B,$00,$00
        .BYTE $96,$9A,$9D,$00,$00,$9E,$9E,$9E
        .BYTE $96,$97,$97,$04,$16,$17,$98,$9F
        .BYTE $95,$06,$07,$00,$1C,$1D,$96,$97
        .BYTE $97,$98,$06,$24,$9F,$25,$08,$1E
        .BYTE $29,$00,$00,$9A,$98,$97,$24,$25
        .BYTE $9A,$00,$0C,$00,$96,$98,$96,$0C
        .BYTE $99,$9F,$00,$1A,$0C,$07,$18,$97
f2119   .BYTE $70,$74,$0B,$08,$0E,$03,$73,$72
        .BYTE $22,$35,$09,$62,$60,$1C,$56,$27
        .BYTE $1D,$1E,$1F,$0D,$0E,$05,$0F,$0F
        .BYTE $04,$05,$06,$61,$21,$01,$04,$05
        .BYTE $06,$35,$35,$35,$12,$12,$08,$0E
        .BYTE $0F,$73,$72,$45,$27,$0C,$19,$1E
        .BYTE $0E,$77,$40,$6D,$0A,$1E,$1C,$40
        .BYTE $35,$0F,$78,$0D,$40,$35,$0F,$1E
f2159   .BYTE $05,$00,$06,$05,$06,$05,$00,$00
        .BYTE $04,$03,$05,$03,$02,$07,$05,$06
        .BYTE $07,$08,$09,$05,$06,$07,$07,$08
        .BYTE $08,$09,$09,$03,$03,$03,$05,$06
        .BYTE $07,$04,$05,$06,$00,$00,$06,$07
        .BYTE $08,$00,$00,$05,$05,$06,$07,$08
        .BYTE $05,$03,$01,$05,$07,$06,$06,$01
        .BYTE $06,$07,$08,$09,$01,$07,$0A,$08
f2199   .BYTE $03,$06,$04,$04,$05,$04,$06,$05
        .BYTE $03,$04,$05,$05,$04,$04,$05,$05
        .BYTE $05,$05,$06,$04,$04,$04,$05,$05
        .BYTE $05,$05,$06,$05,$05,$05,$04,$05
        .BYTE $06,$04,$05,$05,$07,$06,$05,$05
        .BYTE $06,$05,$06,$02,$03,$04,$05,$06
        .BYTE $04,$04,$03,$04,$04,$05,$05,$03
        .BYTE $03,$05,$05,$05,$04,$04,$05,$06
f21D9   .BYTE $32,$22,$32,$32,$17,$32,$22,$22
        .BYTE $20,$32,$32,$32,$28,$32,$32,$32
        .BYTE $32,$32,$32,$32,$32,$32,$17,$17
        .BYTE $32,$32,$32,$32,$32,$32,$20,$20
        .BYTE $20,$32,$32,$32,$22,$22,$32,$32
        .BYTE $32,$20,$20,$21,$21,$21,$21,$21
        .BYTE $17,$20,$28,$17,$17,$17,$17,$28
        .BYTE $17,$17,$17,$17,$28,$32,$32,$32
f2219   .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$00,$F0,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $10,$10,$10,$00,$00,$00,$C0,$00
        .BYTE $FF,$00,$00,$00,$FF,$FF,$80,$00
        .BYTE $00,$C0,$F0,$FF,$FF,$80,$FF,$FF
        .BYTE $80,$FF,$C0,$FF,$40,$FF,$FF,$FF
        .BYTE $FF,$FF,$40,$FF,$FF,$FF,$40,$80
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$80
        .BYTE $80,$90,$80,$90,$80,$80,$80,$80
        .BYTE $80,$80,$80,$80,$80,$80,$80,$80
        .BYTE $70,$70,$70,$80,$80,$80,$C0,$40
f2279   .BYTE $01,$0E,$06,$04,$01,$03,$0E,$07
f2281   .BYTE $FB,$FB,$F8,$01,$01,$01,$0A,$0B
f2289   .BYTE $21,$21,$61,$41,$81,$C1,$A1,$E1
f2291   .BYTE $80,$A0,$C0,$E0,$00,$20,$40,$60
f2299   .BYTE $ED,$72,$05,$88
f229D   .BYTE $0F,$0F,$10,$0F
f22A1   .BYTE $C5,$74,$C5,$74
f22A5   .BYTE $09,$09,$09,$09
f22A9   .BYTE $FB,$41,$FB,$41
f22AD   .BYTE $15,$15,$15,$15
f22B1   .BYTE $BC,$75,$BC,$74
f22B5   .BYTE $09,$09,$09,$09
f22B9   .BYTE $15,$17,$16,$1A
f22BD   .BYTE $03,$05,$04,$06
f22C1   .BYTE $FA,$00,$FA,$00
f22C5   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $80,$40,$C0,$80,$10,$E0,$00,$08
        .BYTE $58,$A8,$10,$00,$F0,$F8,$E0,$30
        .BYTE $40,$C0,$00,$10,$F8,$18,$E8,$00
        .BYTE $30,$00,$10,$E0,$08,$D0,$F8,$00
        .BYTE $00,$28,$D8,$08,$00,$10,$E0,$F0
        .BYTE $20,$E0,$00,$10,$F0,$E8,$08,$00
        .BYTE $E0,$20,$08,$F8,$00,$F0,$10,$00
f2305   .BYTE $00,$01,$04,$09,$10,$19
f230B   .BYTE $00,$01,$01,$02,$02,$02,$02,$03
        .BYTE $03,$03,$03,$03,$03,$04,$04,$04
        .BYTE $04,$04,$04,$04,$04,$05,$05,$05
        .BYTE $05,$05,$05,$05,$05,$05,$05,$06
        .BYTE $06,$06,$06,$06,$06,$06,$06,$06
        .BYTE $06,$06,$06,$07,$07,$07,$07,$07
        .BYTE $07,$07,$07
f233E   .BYTE $08,$08,$08,$08
f2342   .BYTE $01,$00,$02,$00,$01,$00,$02,$00
        .BYTE $01,$00,$02,$00,$01,$00,$02,$00
        .BYTE $01,$00,$02,$00,$01,$00,$02,$00
        .BYTE $01,$00,$02,$00,$01,$00,$02,$00
f2362   .BYTE $AC,$88,$89,$E1,$A8,$56,$CF,$E0
        .BYTE $BE,$E8,$C5,$80,$D4,$EC,$D8,$EF
        .BYTE $B4,$BA,$ED,$F0,$FB,$C9,$C9,$C9
        .BYTE $C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9
        .BYTE $C9,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$C5,$BE
        .BYTE $80,$EC,$EF,$EE,$E8,$C4,$E8,$D4
        .BYTE $D4,$D4,$D8,$D8,$D8,$DC,$DC,$E0
        .BYTE $E0,$E0,$EF,$EF,$EF,$BE,$BE,$BE
        .BYTE $80,$80,$80,$C5,$C5,$EC,$EC,$EC
        .BYTE $BE,$BE,$CA,$CB,$CC,$CD,$CF,$B4
        .BYTE $BE,$ED,$BA,$F0,$B4,$BA,$ED,$F5
        .BYTE $B4,$89,$FC,$ED,$F6,$FC,$F0,$00
        .BYTE $00,$96,$04,$9A,$9B,$00,$00,$96
        .BYTE $9A,$9D,$00,$00,$9E,$9E,$9E,$96
        .BYTE $97,$97,$04,$16,$17,$98,$9F,$95
        .BYTE $06,$07,$00,$1C,$1D,$96,$97,$97
        .BYTE $98,$06,$24,$9F,$25,$08
p2400   .BYTE $1E,$29,$00,$00,$9A,$98,$97,$24
        .BYTE $25,$9A,$00,$0C,$00,$96,$98,$96
        .BYTE $0C,$99,$9F,$00,$1A,$0C,$07,$18
        .BYTE $97,$70,$74,$0B,$08,$0E,$03,$73
        .BYTE $72,$22,$35,$09,$62,$60,$1C,$56
        .BYTE $27,$1D,$1E,$1F,$0D,$0E,$05,$0F
        .BYTE $0F,$04,$05,$06,$61,$21,$01,$04
        .BYTE $05,$06,$35,$35,$35,$12,$12,$08
        .BYTE $0E,$0F,$73,$72,$45,$27,$0C,$19
        .BYTE $1E,$0E,$77,$40,$6D,$0A,$1E,$1C
        .BYTE $40,$35,$0F,$78,$0D,$40,$35,$0F
        .BYTE $1E,$05,$00,$06,$05,$06,$05,$00
        .BYTE $00,$04,$03,$05,$03,$02,$07,$05
        .BYTE $06,$07,$08,$09,$05,$06,$07,$07
        .BYTE $08,$08,$09,$09,$03,$03,$03,$05
        .BYTE $06,$07,$04,$05,$06,$00,$00,$06
        .BYTE $07,$08,$00,$00,$05,$05,$06,$07
        .BYTE $08,$05,$03,$01,$05,$07,$06,$06
        .BYTE $01,$06,$07,$08,$09,$01,$07,$0A
        .BYTE $08,$03,$06,$04,$04,$05,$04,$06
        .BYTE $05,$03,$04,$05,$05,$04,$04,$05
        .BYTE $05,$05,$05,$06,$04,$04,$04,$05
        .BYTE $05,$05,$05,$06,$05,$05,$05,$04
        .BYTE $05,$06,$04,$05,$05,$07,$06,$05
        .BYTE $05,$06,$05,$06,$02,$03,$04,$05
        .BYTE $06,$04,$04,$03,$04,$04,$05,$05
        .BYTE $03,$03,$05,$05,$05,$04,$04,$05
        .BYTE $06,$32,$22,$32,$32,$17,$32,$22
        .BYTE $22,$20,$32,$32,$32,$28,$32,$32
        .BYTE $32,$32,$32,$32,$32,$32,$32,$17
        .BYTE $17,$32,$32,$32,$32,$32,$32,$20
        .BYTE $20,$20,$32,$32,$32,$22,$22,$32
a2500   .BYTE $A0,$60,$20,$60,$A0,$60,$20,$60
        .BYTE $A0,$60,$20,$60,$A0,$60,$20,$60
f2510   .BYTE $00
f2511   .BYTE $00,$00,$00,$00,$00,$00
a2517   .BYTE $00
f2518   .BYTE $81,$87,$8D,$81,$87,$00,$07,$08
f2520   .BYTE $C3,$C4,$03,$C4,$C4,$03,$00,$00
f2528   .BYTE $4B,$CB,$03,$4C,$CC,$83,$00,$00
f2530   .BYTE $10,$10,$10,$10,$10,$E8,$00,$00
f2538   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
f2540   .BYTE $00,$10,$20,$00,$20,$20,$00,$20
f2548   .BYTE $00,$00,$02,$00,$00,$02,$03,$02
        .BYTE $8C,$8C,$8C,$8C,$8C,$8C,$01,$0D
        .BYTE $03,$05,$03,$0D,$03,$05,$03,$0D
        .BYTE $8D,$8D,$8D,$8E,$8D,$8D,$8D,$8D
a2568   .BYTE $88,$8D,$8D,$8D,$8D,$8D,$80
a256F   .BYTE $80,$8C,$8C,$02,$0A,$08,$07,$01
        .BYTE $07,$08,$07,$01,$8C,$8C,$8C,$8C
        .BYTE $8C,$8C,$8D,$8D,$8D,$87,$87,$87
        .BYTE $81,$81,$87,$87,$87,$87,$87,$87
        .BYTE $87,$87,$87,$87,$87,$87,$87,$87
        .BYTE $87,$87,$87,$87,$87,$87,$87,$81
        .BYTE $81,$81,$81,$8D,$8D,$8D,$8D,$8D
        .BYTE $80,$87,$81,$87,$8D,$85,$85,$85
        .BYTE $85
a25B0   .BYTE $01,$00
a25B2   .BYTE $01,$00,$87,$87,$87,$87,$86,$86
        .BYTE $01,$0E,$06,$04,$8E,$84,$86,$84
        .BYTE $8E,$81,$87,$81,$81,$81,$81,$0D
        .BYTE $8D,$8D,$8D,$8D,$8D,$8D,$8D,$8D
        .BYTE $8D,$87,$8D,$8D,$8D,$8D,$81,$81
        .BYTE $81,$81,$87,$87,$87,$87,$87,$81
        .BYTE $81,$81,$81,$8C,$8C,$8C,$87,$87
        .BYTE $87,$87,$8A,$81,$81,$87,$8D,$8D
        .BYTE $8D,$8D,$8D,$87,$87,$80,$8D,$87
        .BYTE $81,$81,$81,$81,$81,$00
f2600   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$0C,$18,$31,$63,$C7,$2B,$8F
        .BYTE $00,$18,$30,$61,$C3,$87,$E9,$0F
        .BYTE $00,$23,$47,$8E,$1C,$38,$54,$71
        .BYTE $00,$2D,$5A,$B5,$6A,$D4,$3E,$A8
        .BYTE $00,$35,$6A,$D4,$A9,$53,$FC,$A6
        .BYTE $00,$3B,$76,$EC,$D9,$B2,$8B,$64
        .BYTE $00,$3E,$7D,$FB,$F6,$EC,$E2,$D8
        .BYTE $00,$40,$80,$00,$00,$00,$00,$00
        .BYTE $00,$3E,$7D,$FB,$F6,$EC,$E2,$D8
        .BYTE $00,$3B,$76,$EC,$D9,$B2,$8B,$64
        .BYTE $00,$35,$6A,$D4,$A9,$53,$FC,$A6
        .BYTE $00,$2D,$5A,$B5,$6A,$D4,$3E,$A8
        .BYTE $00,$23,$47,$8E,$1C,$38,$54,$71
        .BYTE $00,$18,$30,$61,$C3,$87,$E9,$0F
        .BYTE $00,$0C,$18,$31,$63,$C7,$2B,$8F
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$F4,$E8,$CF,$9D,$39,$D5,$71
        .BYTE $00,$E8,$D0,$9F,$3D,$79,$17,$F1
        .BYTE $00,$DD,$B9,$72,$E4,$C8,$AC,$8F
        .BYTE $00,$D3,$A6,$4B,$96,$2C,$C2,$58
        .BYTE $00,$CB,$96,$2C,$57,$AD,$04,$5A
        .BYTE $00,$C5,$8A,$14,$27,$4E,$75,$9C
        .BYTE $00,$C2,$83,$05,$0A,$14,$1E,$28
        .BYTE $00,$C0,$80,$00,$00,$00,$00,$00
        .BYTE $00,$C2,$83,$05,$0A,$14,$1E,$28
        .BYTE $00,$C5,$8A,$14,$27,$4E,$75,$9C
        .BYTE $00,$CB,$96,$2C,$57,$AD,$04,$5A
        .BYTE $00,$D3,$A6,$4B,$96,$2C,$C2,$58
        .BYTE $00,$DD,$B9,$72,$E4,$C8,$AC,$8F
        .BYTE $00,$E8,$D0,$9F,$3D,$79,$17,$F1
        .BYTE $00,$F4,$E8,$CF,$9D,$39,$D5,$71
f2700   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$01,$01
        .BYTE $00,$00,$00,$00,$00,$01,$01,$03
        .BYTE $00,$00,$00,$00,$01,$02,$03,$04
        .BYTE $00,$00,$00,$00,$01,$02,$04,$05
        .BYTE $00,$00,$00,$00,$01,$03,$04,$06
        .BYTE $00,$00,$00,$00,$01,$03,$05,$07
        .BYTE $00,$00,$00,$00,$01,$03,$05,$07
        .BYTE $00,$00,$00,$01,$02,$04,$06,$08
        .BYTE $00,$00,$00,$00,$01,$03,$05,$07
        .BYTE $00,$00,$00,$00,$01,$03,$05,$07
        .BYTE $00,$00,$00,$00,$01,$03,$04,$06
        .BYTE $00,$00,$00,$00,$01,$02,$04,$05
        .BYTE $00,$00,$00,$00,$01,$02,$03,$04
        .BYTE $00,$00,$00,$00,$00,$01,$01,$03
        .BYTE $00,$00,$00,$00,$00,$00,$01,$01
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$FF,$FF,$FF,$FF,$FF,$FE,$FE
        .BYTE $00,$FF,$FF,$FF,$FF,$FE,$FE,$FC
        .BYTE $00,$FF,$FF,$FF,$FE,$FD,$FC,$FB
        .BYTE $00,$FF,$FF,$FF,$FE,$FD,$FB,$FA
        .BYTE $00,$FF,$FF,$FF,$FE,$FC,$FB,$F9
        .BYTE $00,$FF,$FF,$FF,$FE,$FC,$FA,$F8
        .BYTE $00,$FF,$FF,$FF,$FE,$FC,$FA,$F8
        .BYTE $00,$FF,$FF,$FF,$FE,$FC,$FA,$F8
        .BYTE $00,$FF,$FF,$FF,$FE,$FC,$FA,$F8
        .BYTE $00,$FF,$FF,$FF,$FE,$FC,$FA,$F8
        .BYTE $00,$FF,$FF,$FF,$FE,$FC,$FB,$F9
        .BYTE $00,$FF,$FF,$FF,$FE,$FD,$FB,$FA
        .BYTE $00,$FF,$FF,$FF,$FE,$FD,$FC,$FB
        .BYTE $00,$FF,$FF,$FF,$FF,$FE,$FE,$FC
        .BYTE $00,$FF,$FF,$FF,$FF,$FF,$FE,$FE
f2800   .BYTE $FF,$FF,$FF,$55,$AA,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$55
        .BYTE $AA,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$55,$AA,$FF,$FF,$FF
f2820   .BYTE $FF,$FF,$FF,$55,$AA,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$55
        .BYTE $AA,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$55,$AA,$FF,$FF,$FF
f2840   .BYTE $FD,$FD,$FD,$55,$A9,$FD,$FD,$FD
        .BYTE $FD,$FD,$FD,$FD,$FD,$FD,$FD,$55
        .BYTE $A9,$FD,$FD,$FD,$FD,$FD,$FD,$FD
        .BYTE $FD,$FD,$FD,$55,$AA,$FF,$FF,$FF
f2860   .BYTE $FF,$FF,$FF,$55,$A9,$FD,$FD,$FD
        .BYTE $FD,$FD,$FD,$FD,$FD,$FD,$FD,$55
        .BYTE $A9,$FD,$FD,$FD,$FD,$FD,$FD,$FD
        .BYTE $FD,$FD,$FD,$55,$A9,$FD,$FD,$FD
f2880   .BYTE $55,$AA,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$00,$55
        .BYTE $AA,$FF,$FF,$FF,$FF,$FF,$FF,$FF
f28A0   .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
        .BYTE $55,$AA,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$00,$55
f28C0   .BYTE $55,$AA,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$00,$55
        .BYTE $AA,$FF,$FF,$FF,$FF,$FF,$FF,$FF
f28E0   .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
        .BYTE $55,$AA,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$00,$55
f2900   .BYTE $55,$AA,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$00,$55
        .BYTE $AA,$FF,$FF,$FF,$FF,$FF,$FF,$FF
f2920   .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
        .BYTE $55,$AA,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$00,$55
f2940   .BYTE $55,$A5,$F4,$F4,$F4,$F4,$F4,$F4
        .BYTE $F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4
        .BYTE $F4,$F4,$F4,$F4,$F4,$F4,$04,$55
        .BYTE $AA,$FF,$FF,$FF,$FF,$FF,$FF,$FF
f2960   .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
        .BYTE $55,$A4,$F4,$F4,$F4,$F4,$F4,$F4
        .BYTE $F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4
        .BYTE $F4,$F4,$F4,$F4,$F4,$F4,$04,$54
f2980   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $01,$40,$05,$54,$11,$45,$51,$10
        .BYTE $15,$43,$91,$65,$54,$16,$59,$94
        .BYTE $9A,$65,$AA,$96,$A9,$59,$6A,$AB
        .BYTE $BB,$AB,$EA,$EB,$BA,$AA,$BE,$AE
        .BYTE $EB,$FE,$AF,$BA,$AB,$FE,$BE,$FA
        .BYTE $FB,$EF,$BF,$FE,$EB,$EF,$BF,$FE
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
f29C0   .BYTE $01,$07,$0A,$08,$02,$00,$00,$00
        .BYTE $06,$04,$0E,$03,$01,$03,$0E,$04
        .BYTE $0B,$0C,$0F,$01,$0F,$0C,$0B,$00
        .BYTE $01,$0F,$0C,$0B,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$0B,$0C,$0F,$01
        .BYTE $02,$08,$07,$0D,$03,$0E,$06,$04
        .BYTE $05,$0D,$01,$0D,$05,$00,$00,$00
        .BYTE $02,$08,$0A,$07,$01,$07,$0A,$08
a2A00   .BYTE $C0,$C4,$C8,$CC
f2A04   .BYTE $D0,$D4,$D8,$DC
f2A08   .BYTE $81,$87,$88,$8A,$82,$8A,$88,$87
        .BYTE $08,$F8,$08,$F8,$08,$F8,$08,$F8
        .BYTE $08,$F8,$08,$F8,$08,$F8,$08,$F8
f2A20   .BYTE $08,$0F,$09,$0F,$0A,$08,$08,$08
f2A28   .BYTE $08,$08,$08,$08,$08,$08,$08,$08
        .BYTE $08,$08,$08,$08,$08,$08,$08,$08
a2A38   .BYTE $09
a2A39   .BYTE $0D,$0A
a2A3B   .BYTE $0B,$08,$0F
a2A3E   .BYTE $09
a2A3F   .BYTE $09
f2A40   .BYTE $08,$0E,$0A,$0C,$0D,$0B,$0F,$09
        .BYTE $00,$20,$40,$60,$80,$A0,$C0,$E0
        .BYTE $0F,$0F,$0F,$0F,$0F,$DF,$0B,$0B
        .BYTE $09,$08,$09,$0B,$0B,$09,$08,$B9
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$0B,$0B,$0B,$0B,$0B,$0B
        .BYTE $0B,$0B,$0B,$0B,$0B,$0B,$0B,$03
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$0B,$09,$09,$09,$09,$D9,$00
        .BYTE $09,$09,$09,$09,$09,$09,$09,$09
        .BYTE $09,$09,$09,$09,$09,$09,$0B,$0B
        .BYTE $0B,$03,$0B,$0B,$0B,$0B,$0B,$0B
        .BYTE $0B,$0B,$0B,$EF,$0F,$0B,$0F
a2AAF   .BYTE $EF,$08,$F8,$08,$F8,$0F,$0F,$0F
        .BYTE $EF,$00,$00,$0B,$0B,$0B,$EB,$0B
        .BYTE $09,$09,$08,$09,$D9,$00,$0F,$0F
        .BYTE $0F,$EF,$00,$00,$00,$00,$0F,$FF
        .BYTE $0B,$0B,$0B,$EB,$00,$09,$09,$09
        .BYTE $E9,$09,$09,$09,$E9,$09,$09,$09
        .BYTE $E9,$00,$0B,$0B,$0B,$EB,$0F,$0F
        .BYTE $07,$0B,$0B,$0B,$EB,$00,$00,$00
        .BYTE $00,$09,$09,$09,$09,$E1,$00,$00
        .BYTE $0F,$0F,$0F,$00,$0B,$0B,$0B,$EB
        .BYTE $00,$FF,$01,$0D,$22,$02,$0E,$23
        .BYTE $03,$0F,$24,$04,$10,$25,$01,$11
        .BYTE $26,$02,$12,$27,$01,$13,$28,$02
        .BYTE $14,$23,$05,$15,$29,$06,$16,$2A
        .BYTE $07,$17,$2B,$08,$18,$23,$01,$19
        .BYTE $2C,$08,$1A,$23,$09,$1B,$2D,$0A
        .BYTE $1C,$10,$01,$1D,$2C,$01,$1E,$2E
        .BYTE $01,$1F,$2F,$02,$0E,$30,$07,$1F
        .BYTE $26,$08,$20,$27,$07,$0D,$31,$08
        .BYTE $21,$32,$07,$1F,$2F,$08,$36,$42
        .BYTE $01,$37,$22,$08,$38,$23,$0A,$39
        .BYTE $2F,$0A,$0E,$30,$53,$53,$43,$0A
        .BYTE $0E,$23,$34,$3A,$44,$0A,$3B,$45
        .BYTE $0A,$0E,$31,$53,$53,$27,$07,$0D
        .BYTE $30,$07,$0D,$31,$0A,$0E,$46,$02
        .BYTE $12,$53,$07,$3C,$47,$0A,$0E,$48
        .BYTE $07,$3D,$49,$02,$3E,$30,$01,$3F
        .BYTE $2E,$35,$40,$2D,$08,$41,$10,$0A
        .BYTE $0E,$4A,$0A,$0E,$4B,$0A,$0E,$4C
        .BYTE $0A,$4D,$2F,$0A,$14,$30,$0A,$4E
        .BYTE $2D,$0A,$12,$10,$09,$4F,$52,$0A
        .BYTE $50,$27,$53,$53,$53,$53,$53,$51
        .BYTE $53,$51,$51,$0A,$30,$51,$54,$56
        .BYTE $58,$55,$57,$59,$5A,$5D,$60,$5B
        .BYTE $5E,$61,$5C,$5F,$62,$63,$66,$69
        .BYTE $64,$67,$6A,$65,$68,$6B
f2BCD   .BYTE $01,$07,$0D,$13,$19,$1F,$25,$2B
        .BYTE $31,$34,$37,$3D,$01,$43,$3D,$49
        .BYTE $4F,$55,$58,$5B,$61,$67,$6D,$6D
        .BYTE $70,$49,$79,$7F,$85,$88,$8E,$91
        .BYTE $67,$97,$9D,$A3,$A9,$AC,$AF,$B2
        .BYTE $00,$B5,$BB,$C4,$00,$A9
f2BFB   .BYTE $04,$0A,$10,$16,$1C,$22,$28,$2E
        .BYTE $16,$04,$3A,$16,$40,$04,$46,$4C
        .BYTE $52,$58,$00,$5E,$64,$6A,$6D,$3A
        .BYTE $73,$76,$7C,$82,$22,$8B,$5E,$94
        .BYTE $8E,$9A,$A0,$A6,$00,$00,$00,$00
        .BYTE $00,$B8,$BE,$C7,$00,$A9
f2C29   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$3A,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $5E,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$C1,$CA,$00,$00
f2C57   .BYTE $08,$0F,$0F,$0F,$0F,$0F,$0F,$0F
        .BYTE $0F,$0F,$08,$08,$09,$09,$09,$09
        .BYTE $09,$09,$09,$09,$09,$09,$09,$09
        .BYTE $08,$08,$08,$09,$09,$09,$08,$09
        .BYTE $08,$09,$09,$09,$09,$09,$09,$09
        .BYTE $09,$08,$08,$08,$09,$09,$09,$09
        .BYTE $09,$09,$08,$08,$08,$09,$08,$09
        .BYTE $08,$08,$08,$08,$08,$08,$08,$08
        .BYTE $08,$08,$08,$08,$08,$08,$08,$08
        .BYTE $08,$08,$08,$08,$09,$09,$09,$09
        .BYTE $09,$09,$08,$08,$08,$09,$09,$09
        .BYTE $08,$08,$08,$08,$08,$08,$08,$08
f2CB7   .BYTE $29,$28,$01,$00
f2CBB   .BYTE $00,$00,$00,$00
f2CBF   .BYTE $D8,$F0,$F0,$D8,$F0,$D8,$F0,$D8
        .BYTE $D8,$F0,$D8,$F0,$D8,$F0,$F0,$E4
        .BYTE $E4
f2CD0   .BYTE $5C,$5C,$5C,$71,$71,$86,$86,$97
        .BYTE $9B,$9B,$B0,$B0,$C5,$C5,$C5,$5C
        .BYTE $C5
f2CE1   .BYTE $61,$62,$63,$64,$65,$66,$67,$68
        .BYTE $69,$6A,$6B,$6C,$60,$6D,$63,$6E
        .BYTE $6E
f2CF2   .BYTE $00,$00,$00,$02,$02,$02,$02,$02
        .BYTE $02,$02,$02,$02,$00,$00,$00,$00
        .BYTE $00
f2D03   .BYTE $02,$1F,$0E,$0E
p2D07   .BYTE $0B,$01,$01,$12,$01,$09,$0B,$01
        .BYTE $1E,$13,$01,$26,$01,$01,$0F,$FF
        .BYTE $FF,$04,$09,$11,$0A,$15,$15,$24
        .BYTE $18,$0F,$24,$0F,$0A,$16,$0E,$FF
        .BYTE $04,$06,$0A,$15,$15,$24,$1D,$12
        .BYTE $16,$0E,$24,$11,$0E,$1B,$18,$0E
        .BYTE $1C,$FF,$04,$07,$1D,$18,$0D,$0A
        .BYTE $22,$1C,$24,$11,$0E,$1B,$18,$0E
        .BYTE $1C,$FF,$04,$04,$19,$15,$0A,$22
        .BYTE $0E,$1B,$24,$18,$17,$0E,$24,$1B
        .BYTE $0E,$0A,$0D,$22,$FF,$04,$04,$19
        .BYTE $15,$0A,$22,$0E,$1B,$24,$1D,$20
        .BYTE $18,$24,$1B,$0E,$0A,$0D,$22,$FF
        .BYTE $14,$06,$19,$18,$1C,$12,$1D,$12
        .BYTE $1F,$0E,$24,$19,$11,$0A,$1C,$0E
        .BYTE $FF,$14,$06,$17,$0E,$10,$0A,$1D
        .BYTE $12,$1F,$0E,$24,$19,$11,$0A,$1C
        .BYTE $0E,$FF
f2D91   .BYTE $14,$05
a2D93   .BYTE $2D
a2D94   .BYTE $01,$25,$24,$2D,$2D,$2D,$06,$08
        .BYTE $00,$00,$00,$24,$0A,$0E,$0B,$FF
        .BYTE $04,$0C,$16,$18,$1B,$19,$11,$0E
        .BYTE $1E,$1C,$FF,$14,$01,$0B,$22,$24
        .BYTE $0A,$17,$0D,$1B,$0E,$20,$24,$0B
        .BYTE $1B,$0A,$22,$0B,$1B,$18,$18,$14
        .BYTE $FF,$14,$02,$0F,$1B,$18,$16,$24
        .BYTE $10,$1B,$0A,$0F,$1D,$10,$18,$15
        .BYTE $0D,$24,$15,$1D,$0D,$25,$FF,$14
        .BYTE $04,$19,$1B,$0E,$1C,$1C,$24,$0F
        .BYTE $12,$1B,$0E,$24,$1D,$18,$24,$19
        .BYTE $15,$0A,$22,$FF
f2DF0   .BYTE $00,$12,$25,$3D,$52,$65,$7D,$92
f2DF8   .BYTE $2E,$2E,$2E,$2E,$2E,$2E,$2E,$2E
        .BYTE $04,$01,$01,$25,$24,$0D,$0E,$19
        .BYTE $15,$18,$22,$24,$1C,$11,$12,$19
        .BYTE $25,$FF,$04,$01,$02,$25,$24,$1B
        .BYTE $0E,$19,$15,$0A,$0C,$0E,$24,$1C
        .BYTE $11,$12,$19,$25,$FF,$04,$01,$03
        .BYTE $25,$24,$0C,$18,$16,$16,$12,$1C
        .BYTE $1C,$12,$18,$17,$24,$1C,$22,$1C
        .BYTE $1D,$0E,$16,$25,$FF,$04,$01,$04
        .BYTE $25,$24,$12,$17,$1C,$1D,$0A,$15
        .BYTE $15,$24,$1C,$22,$1C,$1D,$0E,$16
        .BYTE $25,$FF,$04,$01,$05,$25,$24,$1C
        .BYTE $0C,$1B,$0A,$19,$24,$1C,$22,$1C
        .BYTE $1D,$0E,$16,$25,$FF,$04,$01,$06
        .BYTE $25,$24,$0C,$18,$16,$16,$12,$1C
        .BYTE $1C,$12,$18,$17,$24,$20,$0E,$0A
        .BYTE $19,$18,$17,$25,$FF,$04,$01,$07
        .BYTE $25,$24,$12,$17,$1C,$1D,$0A,$15
        .BYTE $15,$24,$20,$0E,$0A,$19,$18,$17
        .BYTE $25,$FF,$04,$01,$08,$25,$24,$1C
        .BYTE $0C,$1B,$0A,$19,$24,$20,$0E,$0A
        .BYTE $19,$18,$17,$25,$FF,$14,$01,$17
        .BYTE $18,$24,$1E,$17,$12,$1D,$1C,$24
        .BYTE $1A,$1E,$0E,$1E,$0E,$0D,$25,$FF
        .BYTE $14,$01,$17,$18,$24,$1E,$17,$12
        .BYTE $1D,$1C,$24,$1B,$0E,$0A,$0D,$22
        .BYTE $25,$FF,$14,$01,$1E,$17,$12,$1D
a2ED0   .BYTE $1C,$24,$0A,$1F,$0A,$12,$15,$0A
        .BYTE $0B,$15,$0E,$25,$FF,$14,$01,$1E
        .BYTE $17,$12,$1D
a2EE3   .BYTE $1C,$24,$19,$1B,$0E,$1C,$0E,$17
        .BYTE $1D,$25,$FF,$14,$01,$17,$18,$24
        .BYTE $1E,$17,$12,$1D,$1C,$24,$12,$17
        .BYTE $1C,$1D,$0A,$15,$15,$0E,$0D,$25
        .BYTE $FF,$14,$01,$11,$1E,$15,$15,$1C
        .BYTE $24,$0F,$18,$1B,$24,$1C,$0A,$15
        .BYTE $0E,$25,$FF,$14,$01,$17,$0E,$20
        .BYTE $24,$11,$1E,$15,$15,$24,$1C,$0E
        .BYTE $15,$0E,$0C,$1D,$0E,$0D,$25,$FF
        .BYTE $14,$01,$1E,$17,$0D,$0E,$1B,$24
        .BYTE $0C,$18,$17,$1C,$1D,$1B,$1E,$0C
        .BYTE $1D,$12,$18,$17,$25,$FF,$14,$01
        .BYTE $1E,$17,$12,$1D,$24
a2F48   .BYTE $25
a2F49   .BYTE $25
a2F4A   .BYTE $00
a2F4B   .BYTE $00,$24,$1B,$0E,$0A,$0D,$22,$25
        .BYTE $FF,$14,$01,$0C,$1E,$1B,$1B,$0E
        .BYTE $17,$1D,$24,$1C,$11,$12,$19,$24
        .BYTE $12,$1C,$24,$0F,$1E,$15,$15,$25
        .BYTE $FF,$14,$01,$1E,$17,$12,$1D,$24
        .BYTE $0C,$18,$16,$16,$12,$1C,$1C,$12
        .BYTE $18,$17,$0E,$0D,$25,$FF,$14,$01
        .BYTE $1E,$17,$12,$1D,$24,$12,$17,$1C
        .BYTE $1D,$0A,$15,$15,$0E,$0D,$25,$FF
        .BYTE $14,$01,$1E,$17,$12,$1D,$24,$1C
        .BYTE $0C,$1B,$0A,$19,$19,$0E,$0D,$25
        .BYTE $FF,$14,$01,$1E,$17,$12,$1D,$1C
        .BYTE $24,$0F,$18,$1B,$24,$1C,$0A,$15
        .BYTE $0E,$25,$FF,$14,$01,$18,$1B,$0D
        .BYTE $0E,$1B,$24,$0B,$18,$18,$14,$24
        .BYTE $12,$1C,$24,$0F,$1E,$15,$15,$25
        .BYTE $FF,$14,$01,$1E,$17,$12,$1D,$24
        .BYTE $1D,$18,$18,$24,$0E,$21,$19,$0E
        .BYTE $17,$1C,$12,$1F,$0E,$25,$FF,$14
        .BYTE $01,$1E,$17,$12,$1D,$24
a2FE9   .BYTE $25
a2FEA   .BYTE $25
a2FEB   .BYTE $00
a2FEC   .BYTE $00,$25,$FF,$14,$01,$1E,$17,$12
        .BYTE $1D,$24
a2FF6   .BYTE $25
a2FF7   .BYTE $25
a2FF8   .BYTE $00
a2FF9   .BYTE $00,$24,$0A,$1D,$24
p2FFE   .BYTE $00,$00,$00,$00,$00,$00,$24,$10
        .BYTE $25,$FF,$14,$01,$17,$18,$24,$16
        .BYTE $18,$1B,$0E,$24,$1E,$17,$12,$1D
        .BYTE $1C,$25,$FF,$14,$01,$24,$FF
f301D   .BYTE $08,$00,$00,$00,$00,$00,$00,$00
f3025   .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
f302D   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
f3035   .BYTE $FF
f3036   .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF
f303D   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
f3045   .BYTE $08,$17,$19,$1A,$19,$16,$16,$14
f304D   .BYTE $FF,$3B,$34,$39,$34,$37,$37,$36
f3055   .BYTE $39,$3B,$38,$2A
f3059   .BYTE $FF
f305A   .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF
f306E   .BYTE $FF
f306F   .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF
f3083   .BYTE $00
f3084   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00
f3098   .BYTE $00
f3099   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00
f30AD   .BYTE $09,$0B,$0C,$0E,$08,$0E,$0C,$0B
f30B5   .BYTE $00,$10,$25,$50,$75,$00,$50,$00
        .BYTE $50,$00,$00,$50,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$01
f30D5   .BYTE $00,$00,$00,$00,$00,$01,$01,$02
        .BYTE $02,$04,$05,$07,$10,$15,$20,$25
        .BYTE $30,$40,$50,$75,$00,$00,$50,$00
        .BYTE $00,$00,$50,$00,$00,$00,$00,$00
f30F5   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$01,$02,$02,$03
        .BYTE $04,$05,$07,$10,$15,$20,$25,$00
f3115   .BYTE $14,$16,$1A,$1C
f3119   .BYTE $07,$01,$01,$01,$01,$01,$07,$0A
        .BYTE $07,$01,$01,$01,$01,$01,$07,$0A
        .BYTE $07,$01,$01,$01,$01,$01,$07,$0A
        .BYTE $07,$01,$01,$01,$01,$01,$0F,$0C
        .BYTE $0B,$00,$0B,$0C,$0F
f313E   .BYTE $08,$07,$01,$01,$01,$07,$0A,$08
        .BYTE $08,$07,$01,$01,$01,$07,$0A,$08
        .BYTE $08,$07,$01,$01,$01,$07,$0A,$08
        .BYTE $0A,$07,$01,$01,$01,$0F,$0C,$0B
        .BYTE $00,$00,$00,$0B,$0C
f3163   .BYTE $02,$08,$07,$01,$07,$0A,$08,$02
        .BYTE $08,$0A,$07,$01,$07,$0A,$08,$02
        .BYTE $08,$0A,$07,$01,$07,$0A,$08,$02
        .BYTE $08,$0A,$07,$01,$0F,$0C,$0B,$00
        .BYTE $00,$00,$00,$00,$0B
f3188   .BYTE $00,$00,$00,$09,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$0B
        .BYTE $00,$08,$FF
f31AB   .BYTE $11,$11,$11,$12,$12,$15,$16,$15
        .BYTE $12,$12,$11,$11,$11
f31B8   .BYTE $81,$87,$8D,$81,$87,$00,$07,$08
f31C0   .BYTE $01
f31C1   .BYTE $02,$07,$08,$01,$07,$09,$04,$02
        .BYTE $07,$01,$08,$07,$04,$08,$02
f31D0   .BYTE $00,$08,$0C,$08,$00,$F8,$F4,$F8
f31D8   .BYTE $E8,$F0,$00,$10,$18,$10,$00,$F0
p31E0   .BYTE $20,$42,$D0,$A2,$00,$BD,$2A,$05
        .BYTE $9D,$00,$07,$E8,$D0,$F7,$A9,$02
        .BYTE $85,$0E,$A9,$01,$85,$0F,$20,$18
        .BYTE $C1,$A9,$90,$85,$04,$60,$A5,$04
        .BYTE $30,$FC,$C9,$02,$90,$03,$20,$2C
        .BYTE $C1,$60,$00,$F0,$00,$08
f320E   .BYTE $00,$00,$00,$00,$00,$00
p3214   .BYTE $00,$01,$00,$00,$0A,$0D,$16,$00
        .BYTE $02,$00,$00,$19,$11,$2D,$00,$03
        .BYTE $00,$00,$22,$0A,$14,$00,$03,$50
        .BYTE $00,$0A,$13,$17,$00,$04,$00,$00
        .BYTE $1C,$17,$2D,$00,$04,$50,$00,$1B
        .BYTE $16,$11,$00,$05,$00,$00,$1C,$1B
        .BYTE $1D,$00,$05,$50,$00,$1B,$20,$18
        .BYTE $00,$06,$00,$00,$18,$20,$15,$00
        .BYTE $06,$80,$00,$0A,$0E,$0B
p325A   .BYTE $00,$01,$00,$00,$0A,$0D,$16,$00
        .BYTE $02,$00,$00,$19,$11,$2D,$00,$03
        .BYTE $00,$00,$22,$0A,$14,$00,$03,$50
        .BYTE $00,$0A,$13,$17,$00,$04,$00,$00
        .BYTE $1C,$17,$2D,$00,$04,$50,$00,$1B
        .BYTE $16,$11,$00,$05,$00,$00,$1C,$1B
        .BYTE $1D,$00,$05,$50,$00,$1B,$20,$18
        .BYTE $00,$06,$00,$00,$18,$20,$15,$00
        .BYTE $06,$80,$00,$0A,$0E,$0B
f32A0   .BYTE $00,$20,$40,$60,$80,$A0,$C0,$E0
        .BYTE $00,$20,$40,$60,$80,$A0,$C0,$E0
        .BYTE $00,$20,$40,$60,$80,$A0,$C0,$E0
        .BYTE $00,$20,$40,$60,$80,$A0,$C0,$E0
f32C0   .BYTE $BC,$BC,$BC,$BC,$BC,$BC,$BC,$BC
        .BYTE $BD,$BD,$BD,$BD,$BD,$BD,$BD,$BD
        .BYTE $BE,$BE,$BE,$BE,$BE,$BE,$BE,$BE
        .BYTE $BF,$BF,$BF,$BF,$BF,$BF,$BF,$BF
f32E0   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
f32E8   .BYTE $D8,$D8,$D8,$D8,$D8,$D8,$D8,$D8
p32F0   .BYTE $01,$80,$0B,$F5,$F6,$F7,$F8,$F9
        .BYTE $FA,$FB,$FC,$FD,$FE,$FF,$04,$12
        .BYTE $32,$32,$04,$32,$32,$D2,$13,$33
        .BYTE $33,$05,$33,$33,$D3,$13,$33,$33
        .BYTE $05,$33,$33,$D3,$14,$34,$34,$06
        .BYTE $34,$34,$D4,$07,$12,$32,$32,$04
        .BYTE $32,$32,$D2,$13,$33,$33,$05,$33
        .BYTE $33,$D3,$13,$33,$33,$05,$33,$33
        .BYTE $D3,$07,$05,$05,$01,$05,$05,$88
        .BYTE $13,$33,$33,$05,$33,$33,$D3,$13
        .BYTE $33,$33,$05,$33,$33,$D3,$14,$34
        .BYTE $34,$06,$34,$34,$D4,$01,$5E,$00
        .BYTE $00,$00,$00,$00,$DE,$03,$18,$05
        .BYTE $D8,$19,$03,$D9,$1A,$3A,$DA,$03
        .BYTE $00,$9E,$08,$07,$87,$00,$BE,$01
        .BYTE $1F,$05,$BF,$03,$0C,$2C,$CC,$0D
        .BYTE $02,$CD,$0E,$2E,$CE,$04,$2A,$29
        .BYTE $C9,$0A,$02,$CA,$0B,$2B,$CB,$12
        .BYTE $05,$D2,$01,$5F,$00,$00,$00,$00
        .BYTE $00,$DF,$08,$EE,$EF,$F0,$F1,$F2
        .BYTE $F3,$F4,$EA,$03,$0F,$2F,$CF,$10
        .BYTE $02,$D0,$11,$31,$D1,$03
f339E   .BYTE $15,$35,$D5,$16,$02,$D6,$17,$37
        .BYTE $D7,$03,$1B,$3B,$DB,$1C,$02,$DC
        .BYTE $1D,$3D,$DD,$05,$12,$32,$D2,$80
        .BYTE $80,$80,$14,$34,$D4,$03,$13,$2C
        .BYTE $D3,$0D,$02,$CD,$13,$2E,$D3,$03
        .BYTE $27,$2F,$C7,$10,$02,$D0,$28,$31
        .BYTE $C8,$01,$E1,$01,$E2,$03,$13,$33
        .BYTE $D3,$13,$33,$D3,$13,$33,$D3,$06
        .BYTE $00,$00,$00,$5E,$5E,$DE,$00,$00
        .BYTE $5E,$12,$04,$52,$DE,$00,$5E,$12
        .BYTE $32,$04,$32,$52,$DE,$5E,$12,$32
        .BYTE $32,$04,$32,$32,$52,$DE,$12,$32
        .BYTE $32,$32,$04,$32,$32,$32,$D2,$13
        .BYTE $01,$05,$05,$01,$05,$05,$01,$D3
        .BYTE $01,$13,$05,$33,$33,$33,$33,$33
        .BYTE $05,$D3,$07,$12,$32,$32,$32,$D2
        .BYTE $13,$33,$33,$33,$D3,$13,$33,$33
        .BYTE $33,$D3,$13,$33,$33,$33,$D3,$13
        .BYTE $33,$33,$33,$D3,$13,$33,$33,$33
        .BYTE $D3,$14,$34,$34,$34,$D4,$03
f343D   .BYTE $21,$24,$A6,$22,$09,$AD,$23,$25
        .BYTE $B0,$00,$09,$0C,$03,$05,$0C,$0D
        .BYTE $04,$0A,$07,$0A,$0A,$0C,$07,$0C
        .BYTE $07,$07,$0C,$0C,$02,$0A,$08,$FF
        .BYTE $0B,$09,$0E,$09,$FF,$09,$0C,$03
        .BYTE $05,$0C,$10,$04,$0A,$07,$0A,$0A
        .BYTE $0F,$07,$0C,$07,$07,$0C,$0F,$03
        .BYTE $0A,$08,$00,$07,$0A,$0F,$07,$09
        .BYTE $00,$11,$0A,$0F,$11,$09,$FF,$0B
        .BYTE $09,$0E,$09,$0B,$0C,$0E,$0C,$FF
        .BYTE $09,$0C,$03,$05,$0C,$15,$02,$0A
        .BYTE $10,$04,$0A,$07,$0A,$0A,$14,$07
        .BYTE $0C,$07,$07,$0C,$0F,$07,$0C,$14
        .BYTE $03,$0A,$08,$00,$07,$0A,$0F,$07
        .BYTE $09,$00,$11,$0A,$0F,$11,$09,$FF
        .BYTE $0B,$09,$0E,$09,$0B,$0C,$0E,$0C
        .BYTE $0B,$11,$0E,$11,$FF,$09,$0C,$03
        .BYTE $05,$0C,$18,$03,$0A,$10,$04,$0A
        .BYTE $07,$0A,$0A,$17,$07,$0C,$0F,$07
        .BYTE $0C,$07,$07,$0C,$17,$03,$0A,$08
        .BYTE $00,$07,$0A,$0F,$07,$09,$00,$11
        .BYTE $0A,$0F,$11,$09,$00,$07,$12,$0F
        .BYTE $07,$11,$00,$11,$12,$0F,$11,$11
        .BYTE $FF,$0B,$09,$0E,$09,$0B,$0C,$0E
        .BYTE $0C,$0B,$11,$0E,$11,$0B,$14,$0E
        .BYTE $14,$FF,$09,$0C,$03,$05,$0C,$18
        .BYTE $03,$0A,$10,$04,$0A,$07,$0A,$0A
        .BYTE $17,$07,$0C,$0F,$07,$0C,$07,$07
        .BYTE $0C,$17,$03,$0A,$08,$18,$07,$0A
        .BYTE $0F,$07,$09,$08,$11,$0A,$0F,$11
        .BYTE $09,$0E,$07,$12,$0F,$07,$11,$0C
        .BYTE $11,$12,$0F,$11,$11,$FF,$0B,$09
        .BYTE $0E,$09,$0B,$0C,$0E,$0C,$0B,$11
        .BYTE $0E,$11,$0B,$14,$0E,$14,$FF
f354C   .BYTE $15,$15,$1B,$1B,$1B
f3551   .BYTE $47,$62,$8D,$C2,$07
f3556   .BYTE $34,$34,$34,$34,$35
a355B   .BYTE $14
a355C   .BYTE $0C
a355D   .BYTE $23,$0F,$0C,$22,$17,$0B,$21,$15
        .BYTE $09,$1B,$16,$09,$21,$16,$09,$22
        .BYTE $16,$09,$23,$16,$09,$24,$16,$09
        .BYTE $25,$16,$09,$26,$16,$09,$27,$FF
        .BYTE $FF
f357E   .BYTE $00,$28,$50,$01,$29,$51,$02,$2A
        .BYTE $52
f3587   .BYTE $0E,$0E,$0D,$0D,$0D
f358C   .BYTE $01,$03,$05,$07,$07
f3591   .BYTE $FF,$01,$01,$03,$03
f3596   .BYTE $08,$18,$28,$38,$3F
f359B   .BYTE $02,$03,$03,$04
f359F   .BYTE $04
f35A0   .BYTE $3F,$3F,$2F,$3F,$2F,$3F,$1B,$2F
        .BYTE $1B,$2F,$06,$1B
a35AC   .BYTE $06
a35AD   .BYTE $06
f35AE   .BYTE $00,$03,$06,$09,$0C,$0F,$12,$15
        .BYTE $01,$04,$07,$0A,$0D,$10,$13,$16
        .BYTE $18,$1B,$1E,$21,$24,$27,$2A,$2D
        .BYTE $19,$1C,$1F,$22,$25,$28,$2B,$2E
f35CE   .BYTE $01,$AB,$23,$82,$4D,$7B,$94,$E3
        .BYTE $A2,$35,$DD,$6A,$12,$BA,$FE,$46
        .BYTE $EC,$8B,$0B,$B5,$3B,$D4,$5E,$C9
        .BYTE $29,$52,$9D,$61,$C3,$1C,$F2,$73
f35EE   .BYTE $80,$81,$82,$83,$84,$85,$86,$87
        .BYTE $88,$8F,$9E,$9F,$A0,$A1,$A2,$A3
        .BYTE $A4,$A5,$A6,$A8,$A9,$AA,$AB,$AF
        .BYTE $BE,$C1,$C4,$D3,$D4,$D6,$D8,$DA
        .BYTE $DC,$DE,$E0,$E2,$E4,$E8,$EA,$EC
        .BYTE $EF,$F0,$F1,$F2,$F3,$F4,$F5,$F6
        .BYTE $FF
f361F   .BYTE $00,$05,$00,$00
f3623   .BYTE $00,$00,$00,$CA,$CB,$CC,$CD,$CE
        .BYTE $CF,$00,$00,$00,$00,$00,$D2,$C9
        .BYTE $C1,$C3,$C5,$C7,$D1,$D4,$00,$00
        .BYTE $D2,$D3,$D3,$C8,$C0,$C2,$C4,$C6
        .BYTE $D0,$D3,$D3,$D4
p3647   .BYTE $84,$03,$80,$0A,$30,$84,$04,$80
        .BYTE $08,$90,$20,$80,$0A,$30,$84,$03
        .BYTE $A0,$08,$90,$08,$A0,$08,$90,$08
        .BYTE $80,$0A,$30,$84,$04,$80,$0A,$A0
        .BYTE $10,$80,$05,$30,$84,$04,$80,$0A
        .BYTE $A0,$20,$80,$0A,$30,$84,$04,$80
        .BYTE $08,$90,$10,$80,$0A,$30,$84,$04
        .BYTE $80,$0A,$A0,$08,$0C,$80,$14,$84
        .BYTE $05,$80,$0A,$30,$84,$04,$80,$07
        .BYTE $90,$08,$80,$0F,$30,$84,$04,$80
        .BYTE $08,$08,$80,$04,$08,$80,$03,$08
        .BYTE $80,$02,$0C,$80,$1E,$84,$02,$80
        .BYTE $02,$04,$80,$03,$04,$80,$04,$04
        .BYTE $30,$84,$03,$20,$00,$20,$00,$20
        .BYTE $80,$02,$20,$80,$02,$20,$80,$03
        .BYTE $80,$03,$20,$80,$04,$20,$80,$04
        .BYTE $20,$30,$84,$04,$80,$0A,$0C,$A0
        .BYTE $10,$84,$03,$90,$04,$04,$90,$04
        .BYTE $80,$0A,$30,$84,$03,$80,$08,$90
        .BYTE $08,$94,$02,$90,$1E,$30,$84,$04
        .BYTE $80,$0A,$88,$07,$A0,$10,$84,$04
        .BYTE $80,$03,$90,$03,$80,$14,$30,$84
        .BYTE $04,$80,$09,$10,$00,$10,$00,$10
        .BYTE $00,$10,$00,$10,$00,$20,$00,$20
        .BYTE $00,$20,$00,$20,$00,$20,$00,$20
        .BYTE $00,$20,$00,$20,$00,$20,$00,$20
        .BYTE $00,$10,$00,$10,$00,$10,$00,$10
        .BYTE $00,$10,$80,$0A,$30,$84,$04,$80
        .BYTE $0A,$A0,$08,$80,$05,$0C,$A0,$10
        .BYTE $00,$14,$84,$05,$80,$0F,$30,$84
        .BYTE $04,$80,$08,$30,$00,$30
f373D   .BYTE $60,$58,$50,$48,$40,$38,$30,$28
        .BYTE $68,$60,$50,$48,$40,$38,$30,$20
        .BYTE $70,$68,$60,$50,$40,$30,$20,$18
        .BYTE $78,$70,$68,$60,$40,$20,$18,$10
        .BYTE $78,$80,$88,$90,$C0,$F0,$F8,$00
        .BYTE $88,$90,$98,$A0,$C0,$E0,$E8,$F0
        .BYTE $88,$90,$98,$A8,$C0,$D8,$E8,$F0
        .BYTE $90,$98,$A0,$B0,$C0,$D0,$E0,$E8
        .BYTE $98,$A0,$B0,$B8,$C0,$C8,$D0,$E0
        .BYTE $98,$A0,$B0,$B8,$C0,$C8,$D0,$E0
        .BYTE $A0,$A8,$B0,$B8,$C0,$C8,$D0,$D8
f3795   .BYTE $60,$50,$40,$18,$08,$00,$F0,$00
        .BYTE $60,$60,$20,$F0,$E0,$D0,$E0,$F0
        .BYTE $60,$50,$30,$E0,$C8,$A0,$B0,$C8
        .BYTE $70,$60,$40,$20,$20,$A0,$A0,$D0
        .BYTE $60,$40,$40,$20,$00,$80,$B0,$D0
        .BYTE $70,$40,$48,$30,$48,$B0,$B0,$D0
        .BYTE $78,$60,$58,$50,$48,$60,$A8,$D0
        .BYTE $78,$60,$50,$60,$68,$90,$A0,$D0
        .BYTE $80,$78,$70,$78,$80,$90,$C0,$D0
        .BYTE $88,$80,$80,$80,$80,$90,$C0,$D0
        .BYTE $90,$90,$90,$90,$90,$A0,$B0,$E0
f37ED   .BYTE $78,$78,$70,$70,$68,$60,$50,$38
        .BYTE $80,$80,$88,$90,$A0,$90,$60,$30
        .BYTE $60,$80,$A0,$C8,$E0,$A0,$50,$30
        .BYTE $80,$A0,$C8,$C8,$E0,$A0,$60,$38
        .BYTE $80,$A0,$C8,$E0,$00,$80,$50,$30
        .BYTE $90,$A0,$C8,$E8,$F0,$60,$48,$38
        .BYTE $A0,$B0,$B0,$10,$10,$60,$30,$28
        .BYTE $80,$90,$C0,$F0,$10,$30,$28,$18
        .BYTE $90,$98,$B0,$D8,$08,$10,$20,$08
        .BYTE $98,$A0,$A8,$C0,$D0,$F0,$00,$F8
        .BYTE $A0,$A0,$B0,$C8,$D0,$E0,$E8,$F0
f3845   .BYTE $FF,$60,$A0,$B0,$90,$B8,$F8,$40
        .BYTE $80,$E8,$80,$C0,$00,$80,$80,$50
        .BYTE $D0,$F8,$80,$E0,$00,$00,$80,$A0
        .BYTE $FE,$80,$00,$00,$00,$80,$80,$50
f3865   .BYTE $00,$00,$D0,$C0,$B0,$C0,$00,$A0
        .BYTE $A0,$00,$E0,$00,$50,$00,$00,$00
        .BYTE $E8,$00,$00,$00,$00,$FF,$A0,$00
        .BYTE $00,$D0,$00,$00,$50,$00,$00,$00
f3885   .BYTE $00,$80,$00,$00,$00,$00,$00,$C8
        .BYTE $D0,$FF,$FF,$F4,$F0,$C8,$F0,$F0
        .BYTE $00,$00,$90,$00,$00,$00,$00,$00
        .BYTE $00,$FF,$00,$00,$00,$00,$00,$00
f38A5   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$F0,$C8,$F0,$F0
f38C5   .BYTE $00,$F8,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$F8
        .BYTE $00,$00,$D0,$FF,$FF,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$F8
f38E5   .BYTE $00,$00,$E0,$F0,$FF,$FF,$FF,$F0
        .BYTE $F4,$00,$00,$00,$00,$F8,$F8,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$F8,$F8,$00
f3905   .BYTE $1C,$0B,$11,$0D,$0E,$0C,$16,$0E
        .BYTE $0C,$1C,$1C,$17,$1F,$12,$1C,$0C
        .BYTE $0F,$0E,$1B,$0E,$1B,$1C,$1B,$1C
        .BYTE $0D
f391E   .BYTE $0C,$0A,$0B,$15,$0C,$0E,$1C,$0D
        .BYTE $0D,$10,$1B,$0F,$19,$0C,$0D,$19
        .BYTE $20
f392F   .BYTE $20,$16,$0F,$0F,$0F,$0E,$0E,$1B
f3937   .BYTE $5C,$92,$C8,$FE,$5C,$92,$C8,$FC
        .BYTE $71,$71,$71,$71,$B2,$B2,$B2
        .BYTE $B2    ;JAM 
s3947   LDA f7900,X
        STA a1A
        LDA f7A00,X
        STA a1B
        LDY aB4
        CPY #$19
        BCC b395A
        JMP j39E5

b395A   LDA f6EAD,Y
        STA a1D
        LDA f6EDF,Y
        CLC 
        ADC aB5
        STA a1C
        BCC b396B
        INC a1D
b396B   LDY #$00
        LDA (p1A),Y
        BEQ j39E5
        STA a20
        CLC 
        LDA a1A
        ADC #$01
        STA a1A
        BCC b397E
        INC a1B
b397E   LDA a1C
        STA a14
        LDA a1D
        STA a15
b3986   LDA (p1A),Y
        STA a0F
        AND #$7F
        BEQ b39B6
        STA a3998
        LDA (p14),Y
        BEQ b3997
        BPL b39B6
a3998   =*+$01
b3997   LDA #$00
        STA (p14),Y
        CMP #$60
        BCS b39B6
        TAX 
        LDA f2C57,X
        CMP #$08
        BEQ b39B6
        TAX 
        LDA a15
        CLC 
        ADC #$18
        STA a1F
        LDA a14
        STA a1E
        TXA 
        STA (p1E),Y
b39B6   LDA a14
        CLC 
        ADC #$28
        STA a14
        BCC b39C7
        INC a15
        LDA a15
        CMP #$C4
        BCS j39E5
b39C7   CLC 
        LDA a1A
        ADC #$01
        STA a1A
        BCC b39D2
        INC a1B
b39D2   LDA a0F
        BPL b3986
        CLC 
        LDA a1C
        ADC #$01
        STA a1C
        BCC b39E1
        INC a1D
b39E1   DEC a20
        BNE b397E
j39E5   RTS 

s39E6   LDX #<p32F0
        LDY #>p32F0
        STX a1A
        STY a1B
        LDX #$00
b39F0   LDA a1A
        STA f7900,X
        LDA a1B
        STA f7A00,X
        INX 
        BEQ b3A1C
        LDY #$00
        LDA (p1A),Y
        BEQ b39F0
        STA a20
b3A05   INY 
        LDA (p1A),Y
        BPL b3A05
        DEC a20
        BNE b3A05
        INY 
        TYA 
        CLC 
        ADC a1A
        STA a1A
        BCC b39F0
        INC a1B
        JMP b39F0

b3A1C   RTS 

s3A1D   LDX #<p8010
        LDY #>p8010
        STX a1A
        STY a1B
        LDY #$01
        LDX #$00
j3A29   LDA a1A
        STA f7900,X
        LDA a1B
        STA f7A00,X
        INX 
        BEQ b3A4F
        LDA (p1A),Y
        CLC 
        ADC a1A
        STA a1A
        BCC b3A41
        INC a1B
b3A41   CLC 
        LDA a1A
        ADC #$02
        STA a1A
        BCC b3A4C
        INC a1B
b3A4C   JMP j3A29

b3A4F   RTS 

s3A50   LDA #$00
        STA a3A56
a3A56   =*+$01
j3A55   LDY #$00
        BMI b3A74
        LDA (p12),Y
        BEQ b3A75
        BMI b3A7F
        TAX 
        INY 
        LDA (p12),Y
        STA aB4
        INY 
        LDA (p12),Y
        STA aB5
        INY 
        STY a3A56
        JSR s3947
        JMP j3A55

b3A74   RTS 

b3A75   TYA 
        CLC 
        ADC #$06
        STA a3A56
        JMP j3A55

b3A7F   INY 
        STY a3A90
        STY a3B
        LDA #$E0
        STA a3ABA
        LDA #$00
        STA a3AC5
a3A90   =*+$01
j3A8F   LDY #$00
        BMI b3AD6
        LDA (p12),Y
        BMI b3AD6
        INY 
        TAX 
        LDA f6EDF,X
        CLC 
        ADC (p12),Y
        STA a3ABC
        STA a1E
        LDA f6EAD,X
        ADC #$00
        STA a3ABD
        ADC #$18
        STA a1F
        INY 
        STY a3A90
        LDY #$03
b3AB6   LDX f2CB7,Y
a3ABA   =*+$01
        LDA #$E0
a3ABC   =*+$01
a3ABD   =*+$02
        STA pC000,X
        INC a3ABA
        DEY 
        BPL b3AB6
a3AC5   =*+$01
        LDX #$00
        LDA a1E
        STA f32E0,X
        LDA a1F
        STA f32E8,X
        INC a3AC5
        JMP j3A8F

b3AD6   RTS 

s3AD7   LDA #$00
        STA a03
b3ADB   JSR s6496
        JSR s65D0
        JSR s65E7
        JSR s669B
        INC a03
        LDA a03
        CMP #$10
        BCC b3ADB
        RTS 

s3AF0   LDX #$1F
        LDY #$00
b3AF4   LDA f7B20,X
        BEQ b3B03
        STA a1D
        LDA f7B00,X
        STA a1C
        TYA 
        STA (p1C),Y
b3B03   DEX 
        BPL b3AF4
        RTS 

s3B07   LDY #$9F
        LDA #$00
b3B0B   LDX fC0A0,Y
        CPX #$C0
        BCC b3B19
        CPX #$E0
        BCS b3B19
        STA fC0A0,Y
b3B19   LDX fC2F8,Y
        CPX #$C0
        BCC b3B27
        CPX #$E0
        BCS b3B27
        STA fC2F8,Y
b3B27   DEY 
        CPY #$FF
        BNE b3B0B
        LDY #$4F
b3B2E   STA fC398,Y
        DEY 
        BPL b3B2E
        RTS 

s3B35   LDX #<$D878
        LDY #>$D878
        STX a1C
        STY a1D
        LDA #$08
        LDX #$16
        JSR s6D05
        LDA #$03
        STA $0670
        LDX #<pC078
        LDY #>pC078
        STX a1C
        STY a1D
        LDA #$00
        LDX #$16
        JSR s6D05
        RTS 

s3B59   JSR s3AD7
        JSR s39E6
        LDA #$00
        STA a09
        STA a2E
        STA a2F
        STA a46
        STA a47
        STA a33
        STA a34
        STA a27
        STA a26
        LDA #$28
        STA a31
        JSR s644B
        JSR s3B35
        LDA #$6A
        JSR s6922
        JSR s66B2
        LDA #$CD
        STA aE3
        JSR s49C5
        JSR s3D31
        LDA #$40
        STA a6790
        JSR s677B
        LDA #$CD
        STA aE4
b3B9B   JSR s10A5
        LDA a26
        BPL b3B9B
        LDA #$1C
        STA aE5
        LDA #$FF
        STA a2F
        STA a2E
        STA a47
        STA a46
j3BB0   JSR s10A5
        LDA a46
        SEC 
        SBC #$10
        STA a46
        BCS b3BBE
        DEC a47
b3BBE   LDX a2E
        DEX 
        BPL b3BC8
        STX a2E
        JMP j3BB0

b3BC8   JSR s10A5
        LDA a09
        CLC 
        ADC #$03
        CMP #$38
        BCS b3BD9
        STA a09
        JMP b3BC8

b3BD9   JSR s3AF0
        LDA #$00
        JSR s6922
        JSR s48D6
        JSR s3B07
        JSR s644B
        JSR s536C
        JSR s5C4A
        LDX #<p7000
        LDY #>p7000
        STX aB2
        STY aB3
        LDX #<pC400
        LDY #>pC400
        STX aB0
        STY aB1
        LDX #$04
        JSR s6E7C
        LDX #$3F
b3C07   LDA f78C0,X
        STA fBB00,X
        DEX 
        BPL b3C07
        LDX #$00
b3C12   LDA fBB00,X
        STA fCE00,X
        DEX 
        BNE b3C12
        LDX #<pC05E
        LDY #>pC05E
        STX a1C
        STY a1D
        LDX #$23
j3C25   LDY #$0B
b3C27   LDA f3623,X
        STA (p1C),Y
        DEX 
        BMI b3C40
        DEY 
        BPL b3C27
        CLC 
        LDA a1C
        ADC #$28
        STA a1C
        BCC b3C3D
        INC a1D
b3C3D   JMP j3C25

b3C40   LDX #$03
        LDY #$2B
        LDA #$06
b3C46   STA $D862,Y
        STA $D862,X
        DEY 
        DEX 
        BPL b3C46
a3C51   =*+$01
        LDA #$18
        STA a0C
        RTS 

s3C55   CMP #$05
        BCC b3C5B
        LDA #$00
b3C5B   STA a08
        TAY 
        LDA f3596,Y
        STA a82
        LDA f358C,Y
        STA a5B
        LDA f3591,Y
        STA a5C
        LDA f359B,Y
        STA a8F
        LDA f3587,Y
        STA a43
        EOR #$FF
        CLC 
        ADC #$02
        STA a57
        LDA f3551,Y
        STA a39
        LDA f3556,Y
        STA a3A
        LDA f354C,Y
        STA a3C
        CPY #$04
        BEQ b3C94
        JSR s4823
b3C94   JSR s3D15
        LDY #$04
        LDA (p39),Y
        INY 
        TAX 
        INX 
        LDA f6EAD,X
        STA a6201
        LDA f6EDF,X
        CLC 
        ADC (p39),Y
        BCC b3CB0
        INC a6201
        CLC 
b3CB0   ADC #$03
        STA a6200
        BCC b3CBA
        INC a6201
b3CBA   LDA #$00
        STA a75
        STA a76
        LDA #$FF
        STA a53
        STA a54
        LDA a08
        CMP #$04
        BEQ b3CEC
        LDX #$07
b3CCE   LDA #$FF
        STA f3035,X
        LDA f301D,X
        STA f302D,X
        LDA #$08
        STA f2A28,X
        DEX 
        BPL b3CCE
        LDX #$03
        LDA #$FF
b3CE5   STA f2CBB,X
        DEX 
        BPL b3CE5
        RTS 

b3CEC   LDX #$07
b3CEE   LDA f3045,X
        STA f302D,X
        LDA #$08
        STA f2A28,X
        LDA f304D,X
        STA f3035,X
        TAY 
        LDA f1DC4,Y
        STA f303D,X
        DEX 
        BPL b3CEE
        LDX #$03
b3D0B   LDA f3055,X
        STA f2CBB,X
        DEX 
        BPL b3D0B
        RTS 

s3D15   LDY #$04
        LDA (p39),Y
        CLC 
        ADC #$01
        STA a3E
        INY 
        LDA (p39),Y
        ADC #$01
        STA a3D
        LDA #$01
        STA a19
        LDA a8F
        CLC 
        ADC #$02
        STA a74
        RTS 

s3D31   LDX a3E
        LDA f6EC6,X
        STA a40
        LDA f6EDF,X
        CLC 
        ADC a3D
        STA a3F
        BCC b3D44
        INC a40
b3D44   RTS 

s3D45   LDY #$00
        LDA #$0F
        STA (p3F),Y
        RTS 

s3D4C   LDA a26
        LSR 
        AND #$07
        TAY 
        LDA f30AD,Y
        LDY #$00
        STA (p3F),Y
s3D59   LDA a30
        BEQ b3D8D
        BMI b3DB3
        CMP #$0D
        BCC b3D66
        JMP j3DF1

b3D66   TAY 
        CLC 
        ADC #$02
        STA a30
        LDA f35A0,Y
        STA aC9D1
        STA aC9D6
        LDA f359F,Y
        STA aC9D2
        STA aC9D5
        LDA #$BC
        STA $0290,Y
        DEY 
        LDA #$B8
b3D86   STA $0290,Y
        DEY 
        BPL b3D86
        RTS 

b3D8D   LDA a26
        AND #$01
        BNE b3DE9
        LDA $0290
        CLC 
        ADC #$01
        AND #$07
        ORA #$B0
        STA $0290
        LDA a35AD
        STA aC9D1
        STA aC9D6
        LDA a35AC
        STA aC9D2
        STA aC9D5
        RTS 

b3DB3   LDA a26
        AND #$01
        BEQ b3DE9
        INC a30
        INC $028B
        LDA $028B
        BMI b3DD3
        CMP #$04
        BCS b3DCE
        ADC #$BC
        STA $029B
        BNE b3DD3
b3DCE   LDA #$00
        STA $029B
b3DD3   LDX #$0A
b3DD5   INC $0280,X
        LDA $0280,X
        BMI b3DE6
        CMP #$04
        BCS b3DEA
        ADC #$B8
        STA $0290,X
b3DE6   DEX 
        BPL b3DD5
b3DE9   RTS 

b3DEA   LDA #$00
        STA $0290,X
        BEQ b3DE6
j3DF1   LDA #$F7
        STA a30
        LDA a35AD
        STA aC9D1
        STA aC9D6
        LDA a35AC
        STA aC9D2
        STA aC9D5
        LDY #$0B
b3E09   LDA $D41B    ;Oscillator 3 Output
        ORA #$FC
        STA $0280,Y
        DEY 
        BPL b3E09
        RTS 

s3E15   LDA #$05
        STA $0670
        LDA a6EB0
        STA a1D
        LDA a6EE2
        STA a1C
        LDA #$04
        STA a20
b3E28   LDY a20
        LDA f1A04,Y
        LDX #$01
        JSR s6D05
        DEC a20
        BPL b3E28
        LDA a6EC9
        STA a1D
        LDA a6EE2
        STA a1C
        LDX #$02
        LDA #$09
        JSR s6D05
        LDA a6EC0
        STA a1D
        LDA a6EF2
        STA a1C
        LDA #$04
        STA a20
b3E55   LDY a20
        LDA f1A04,Y
        LDX #$01
        JSR s6D05
        DEC a20
        BPL b3E55
        LDA a6ED9
        STA a1D
        LDA a6EF2
        STA a1C
        LDX #$02
        LDA #$09
        JSR s6D05
        LDX #$1F
b3E76   LDA f7B20,X
        BEQ b3E90
        STA a3E86
        LDA f7B00,X
        STA a3E85
a3E85   =*+$01
a3E86   =*+$02
        LDA pC000
        BEQ b3E90
        BMI b3E90
        LDA #$00
        STA f7B20,X
b3E90   DEX 
        BPL b3E76
        RTS 

s3E94   LDY a48
        BMI b3E9F
a3E99   =*+$01
        LDA #$00
        BEQ b3EA0
        DEC a3E99
b3E9F   RTS 

b3EA0   LDA f1A0A,Y
        CMP #$FF
        BCC b3EAA
        STA a48
        RTS 

b3EAA   STA a3E99
        LDX f1A60,Y
        LDA f1AB7,X
        STA a1A
        LDA f1AB8,X
        STA a1B
        INC a48
        CPX #$08
        BNE b3F3B
s3EC0   LDX #$2D
a3EC3   =*+$01
        LDA #$0A
        SEC 
        SBC #$0A
        BEQ b3ECD
        ADC #$0A
        BPL b3ECF
b3ECD   LDX #$01
b3ECF   STX a2D93
        STA a2D94
        DEC a3EC3
        BNE b3EDF
        LDA #$0A
        STA a3EC3
b3EDF   LDY #$00
        LDA #$2D
        STA a3F01
        STA a3F1A
        LDX #$06
b3EEB   LDA (p61),Y
        LSR 
        LSR 
        LSR 
        LSR 
        BEQ b3F00
        STA f2D91,X
        LDA #$00
        STA a3F01
        STA a3F1A
        BEQ b3F05
a3F01   =*+$01
b3F00   LDA #$2D
        STA f2D91,X
b3F05   INX 
        LDA (p61),Y
        AND #$0F
        BEQ b3F19
        STA f2D91,X
        LDA #$00
        STA a3F01
        STA a3F1A
        BEQ b3F1E
a3F1A   =*+$01
b3F19   LDA #$2D
        STA f2D91,X
b3F1E   INY 
        INX 
        CPX #$0E
        BCC b3EEB
        INX 
b3F25   LDA (p61),Y
        STA f2D91,X
        INY 
        INX 
        CPX #$12
        BCC b3F25
        CLC 
        LDA a61
        ADC #$07
        STA a61
        BCC b3F3B
        INC a62
b3F3B   JSR s3F43
        RTS 

s3F3F   STX a1A
        STY a1B
s3F43   LDY #$00
        LDA (p1A),Y
        STA aB4
        INY 
        LDA (p1A),Y
        BEQ b3F5F
        STA a20
        LDA #<p2400
        STA aB5
        LDA #>p2400
        STA aB6
b3F58   JSR s6E25
        DEC a20
        BNE b3F58
b3F5F   LDX a1A
        LDY a1B
        JSR s6DE8
        LDA #$24
        STA aB6
j3F6A   LDA aB5
        CMP #$28
        BCS b3F76
        JSR s6E25
        JMP j3F6A

b3F76   RTS 

s3F77   JSR s10DE
        JSR s3AF0
        JSR s402A
        LDA #$6A
        JSR s6922
        LDA #$00
        LDX a0C
b3F89   STA f7D00,X
        DEX 
        BPL b3F89
        JSR s10E3
        JSR s54B1
        LDA #$00
        STA a33
        STA a34
        STA a2F
        STA a46
        STA a47
        STA a6790
        LDA #$80
        STA a2E
        JSR s3D15
        JSR s10DE
        JSR s3AD7
        LDA #$CE
        STA aE3
        JSR s644B
        JSR s66B2
        LDA #$36
        STA a09
        LDA #$CE
        STA aE4
b3FC3   JSR s10A5
        LDA a09
        SEC 
        SBC #$03
        STA a09
        BNE b3FC3
        JSR s677B
b3FD2   JSR s10A5
        LDA a2E
        SEC 
        SBC #$01
        STA a2E
        BEQ b3FFD
        CMP #$2D
        BEQ b3FF2
        BCS b3FD2
        LDA a46
        SEC 
        SBC #$10
        STA a46
        BCS b3FD2
        DEC a47
        JMP b3FD2

b3FF2   LDX #<$02D0
        LDY #>$02D0
        STX a46
        STY a47
        JMP b3FD2

b3FFD   LDA #$00
        STA a26
        STA a46
b4003   JSR s10A5
        LDA a18
        BEQ b400E
        LDA a26
        BPL b4003
b400E   JSR s6A31
        JSR s4015
        RTS 

s4015   LDA #$08
        STA a20
b4019   JSR s6CD7
        LDY #$02
p4020   =*+$02
        JSR s6D74
        LDA a18
        BEQ s4015
        DEC a20
        BNE b4019
        RTS 

s402A   LDX #<pC05E
        LDY #>pC05E
        STX a1C
        STY a1D
        LDX #$23
j4034   LDY #$0B
        LDA #$00
b4038   STA (p1C),Y
        DEX 
        BMI b404E
        DEY 
        BPL b4038
        CLC 
        LDA a1C
        ADC #$28
        STA a1C
        BCC b404B
        INC a1D
b404B   JMP j4034

b404E   LDX #$03
        LDY #$2B
        LDA #$08
b4054   STA $D862,Y
        STA $D862,X
        DEY 
        DEX 
        BPL b4054
        LDX #$00
        LDA #$FF
b4062   STA fCE00,X
        DEX 
        BNE b4062
        RTS 

s4069   LDA a7E
        BEQ b406F
        DEC a7E
b406F   LDA a18
        BNE b4077
        LDA a2A
        EOR #$01
b4077   STA a41
        LDA a18
        STA a2A
        BEQ b408A
        LDA a42A8
        BEQ b408F
        DEC a42A8
        JMP b408F

b408A   LDA #$07
        STA a42A8
b408F   LDY a19
        BMI b4103
        LDA a18
        BNE b40DD
        CPY #$00
        BEQ b409F
        CPY #$03
        BNE b40A5
b409F   LDA a16
        ORA a17
        BEQ b40DD
a40A6   =*+$01
b40A5   LDA #$16
        BEQ b40B3
        DEC a40A6
        CPY #$00
        BEQ b40DC
        JMP j40E2

b40B3   LDA a19
        CMP #$04
        BNE b40BC
        JSR s459E
b40BC   LDA a16
        ORA a17
        BEQ b40DC
        LDA a81
        BEQ b40CE
        LDA #$00
        STA a81
        LDA #$B1
        STA aE3
b40CE   LDA #$80
        STA a19
        LDA #$16
        STA a40A6
        LDA #$01
        STA a4104
b40DC   RTS 

b40DD   LDA #$16
        STA a40A6
j40E2   CPY #$07
        BCS b40DC
        LDA f40F5,Y
        STA a40F3
        LDA f40FC,Y
        STA a40F4
a40F3   =*+$01
a40F4   =*+$02
        JMP j428F

f40F5   .BYTE $8F,$99,$D4,$E4,$BD,$42,$45
f40FC   .BYTE $42,$43,$43,$44,$43,$45,$45
a4104   =*+$01
b4103   LDA #$01
        BNE b4149
        LDX a3D
        LDY a3E
        STX a14
        STY a15
        JSR s4260
        BEQ b4118
        CMP #$0A
        BCC b4121
b4118   JSR s4260
        BEQ b4149
        CMP #$0A
        BCS b4149
b4121   LDY #$01
        CMP #$01
        BNE b4129
        LDY #$08
b4129   STY a4104
        JSR s3D45
        LDX a14
        LDY a15
        STX a3D
        STY a3E
        JSR s3D31
        LDA a42
        CMP #$03
        BEQ b4152
        CMP #$02
        BEQ b415E
        CMP #$09
        BEQ b415E
        RTS 

b4149   LDA a4104
        BEQ b4151
        DEC a4104
b4151   RTS 

b4152   LDA #$01
        STA a19
        LDA a8F
        CLC 
        ADC #$02
        STA a74
        RTS 

b415E   LDY #$01
        LDA (p39),Y
        CLC 
        ADC #$01
        CMP a3E
        BEQ b417E
        BCS b4187
        LDY #$01
        LDA a08
        CMP #$03
        BCC b4197
        LDA a3D
        CMP #$0D
        BCC b4197
        LDY #$03
        JMP b4197

b417E   LDA #$00
        STA a19
        LDA #$28
        STA a31
        RTS 

b4187   LDY #$00
        LDA a08
        CMP #$03
        BCC b4197
        LDA a3D
        CMP #$0D
        BCC b4197
        LDY #$02
b4197   STY a07
        LDX f2CBB,Y
        STX a4A
        LDA a42
        CMP #$09
        BNE b41BF
        LDA a7D0C
        BNE b41BA
j41A9   LDA #$04
        STA a19
        LDA #$00
        STA a4B
        JSR s4550
        LDX a4A
        INX 
        JMP j4219

b41BA   LDA #$06
        STA a19
        RTS 

b41BF   LDA a3E
        ASL 
        ASL 
        ASL 
        ADC #$29
        STA a52
        LDA a3D
        ASL 
        ASL 
        ADC #$08
        STA a51
        LDA #$00
        STA a4B
        LDA f1E3C,X
        BIT a6E98
        BEQ b4213
        BIT a6E99
        BNE b41E7
        BIT a6E9A
        BNE b41FC
        RTS 

b41E7   STA a49
        LDA f1E78,X
        LSR 
        LSR 
        STA a80
        JSR s4250
        LDA #$03
        STA a19
        LDA #$00
        STA a81
        RTS 

b41FC   LDA a7D0C
        BEQ b420E
        LDA a6E
        CMP a07
        BNE b420E
        LDA #$04
        STA a19
        INX 
        BNE j4219
b420E   LDA #$05
        STA a19
        RTS 

b4213   LDA #$02
        STA a19
        LDX a4A
j4219   LDA f1E3C,X
        STA a49
        JSR s4250
        LDY f1EF0,X
        LDA f1F4C,Y
        LSR 
        LSR 
        LSR 
        AND #$0E
        STA a4F
        LDA f1F6C,Y
        STA a60
        LDX f1F2C,Y
        STX a50
        LDA f1F8C,Y
        STA a80
        LDA f1F4C,Y
        AND #$8F
        BEQ b4247
        STA a2500,X
b4247   LDA #$00
        STA a4C
        LDA #$06
        STA a32
        RTS 

s4250   TXA 
        SEC 
        SBC aA6
        CLC 
        ADC #$05
        BEQ b425B
        BPL b425D
b425B   LDA #$01
b425D   STA a74
        RTS 

s4260   LDA a17
        BEQ b426C
        CLC 
        ADC a14
        STA a14
        JMP j4273

b426C   LDA a16
        CLC 
        ADC a15
        STA a15
j4273   LDX a15
        LDA f6EAD,X
        STA a428B
        LDA f6EDF,X
        CLC 
        ADC a14
        STA a428A
        BCC b4289
        INC a428B
a428A   =*+$01
a428B   =*+$02
b4289   LDA pC000
        STA a42
        RTS 

j428F   LDA a16
        ORA a17
        BNE b42A0
        LDA a18
        BNE b42A0
        DEC a31
        BNE b42AC
        INC a25
        RTS 

b42A0   LDA #$28
        STA a31
        JMP b42AC

a42A8   =*+$01
j42A7   LDA #$06
        BEQ b42AC
        RTS 

b42AC   LDY a2F
        LDA a2E
        LDX a17
        BEQ b42BF
        BMI b42F7
        SEC 
        SBC a43
        BCS b42FD
        DEY 
        JMP b42FD

b42BF   LDX a34
        BMI b42CD
        BNE b431E
        LDX a33
        CPX #$70
        BCC b42D3
        BCS b431E
b42CD   LDX a33
        CPX #$90
        BCC b431E
b42D3   CPY #$00
        BEQ b42E7
        BPL b431E
        CMP #$C0
        BCC b431E
        ADC #$02
        BCC b431E
        LDA #$00
        LDY #$00
        BEQ b431E
b42E7   CMP #$00
        BEQ b431E
        CMP #$40
        BCS b431E
        SBC #$02
        BCS b431E
        LDA #$00
        BEQ b431E
b42F7   CLC 
        ADC a43
        BCC b42FD
        INY 
b42FD   CPY #$00
        BMI b4316
        CPY #$01
        BCS b431C
        CMP a43
        BCS b431E
        LDA #$00
        BEQ b431E
b430D   CMP a57
        BCC b431E
        LDA #$00
        TAY 
        BEQ b431E
b4316   CPY #$FF
        BCS b430D
        LDY #>$FF00
b431C   LDA #<$FF00
b431E   STA a2E
        STY a2F
        LDY a34
        LDA a33
        LDX a16
        BEQ b4335
        BMI b436D
        SEC 
        SBC a43
        BCS b4373
        DEY 
        JMP b4373

b4335   LDX a2F
        BMI b4343
        BNE b4394
        LDX a2E
        CPX #$70
        BCC b4349
        BCS b4394
b4343   LDX a2E
        CPX #$90
        BCC b4394
b4349   CPY #$00
        BEQ b435D
        BPL b4394
        CMP #$C0
        BCC b4394
        ADC #$02
        BCC b4394
        LDA #$00
        LDY #$00
        BEQ b4394
b435D   CMP #$00
        BEQ b4394
        CMP #$40
        BCS b4394
        SBC #$02
        BCS b4394
        LDA #$00
        BEQ b4394
b436D   CLC 
        ADC a43
        BCC b4373
        INY 
b4373   CPY #$00
        BMI b438C
        CPY #$01
        BCS b4392
        CMP a43
        BCS b4394
        LDA #$00
        BEQ b4394
b4383   CMP a57
        BCC b4394
        LDA #$00
        TAY 
        BEQ b4394
b438C   CPY #$FF
        BCS b4383
        LDY #>$FF00
b4392   LDA #<$FF00
b4394   STA a33
        STY a34
        RTS 

        LDA a41
        BNE b43BA
        LDA a30
        BNE b43BA
        LDA a53
        SEC 
        SBC a82
        STA a53
        LDA a54
        SBC #$00
        BCS b43B2
        LDA #$00
        STA a53
b43B2   STA a54
        INC a30
        LDA #$29
        STA aE3
b43BA   JMP b42AC

        LDA #$07
        STA a4473
        LDA a4C
        BNE b4423
        LDA a4B
        BEQ b43CF
        DEC a4B
        JMP j4422

b43CF   LDA a41
        BEQ b43ED
        RTS 

        LDA #$07
        STA a4473
        LDA a4C
        BNE b4423
        LDA a4B
        BEQ b43E6
        DEC a4B
        JMP j42A7

b43E6   LDA a41
        BEQ b43ED
        JMP j42A7

b43ED   LDA a16
        CLC 
        ADC #$01
        ASL 
        ASL 
        ADC #$01
        ADC a17
        CMP #$05
        BEQ b43FE
        STA a32
b43FE   LDX a4A
        LDA f1E78,X
        STA a4B
        LDA a49
        BIT a6E99
        BEQ b442E
b440C   JSR s446E
        LDA a49
        AND #$E0
        CLC 
        ADC a4C
        STA a4C
        BEQ j4422
        LDA a49
        AND #$07
        STA a4D
        BEQ b440C
j4422   RTS 

b4423   LDA a4B
        BEQ b4429
        DEC a4B
b4429   DEC a4D
        BEQ b440C
        RTS 

b442E   BIT a6E95
        BEQ b445F
        LDX a32
        LDA f1D16,X
        STA a4C
        BEQ j4422
        JSR s446E
        LDA a49
        BIT a6E96
        BEQ b445A
        LDA a4C
        CLC 
        ADC #$20
        STA a4C
        JSR s446E
        LDA a4C
        SEC 
        SBC #$40
        STA a4C
        JSR s446E
b445A   LDA #$00
        STA a4C
        RTS 

b445F   LDX a32
        LDA f1D21,X
        STA a4C
        BEQ j4422
        JSR s446E
        JMP b445A

s446E   LDA a52
        BEQ b447C
a4473   =*+$01
        LDX #$07
b4474   LDA f7D00,X
        BEQ b447D
        DEX 
        BPL b4474
b447C   RTS 

b447D   LDA #$03
        STA f7D00,X
        LDA a4F
        STA f7E60,X
        LDA a52
        SEC 
        SBC #$25
        LSR 
        LSR 
        LSR 
        LSR 
        STA f7898,X
        LDA a51
        SEC 
        SBC #$06
        LSR 
        LSR 
        LSR 
        STA f7890,X
        LDA a4C
        LSR 
        LSR 
        LSR 
        LSR 
        LSR 
        TAY 
        STA f7D20,X
        LDA f31D0,Y
        STA f7E20,X
        LDA f31D8,Y
        STA f7E40,X
        STY a44BD
        TXA 
        ORA a2D
        TAY 
a44BD   =*+$01
        LDA #$00
        ASL 
        ADC #$10
        STA f7CA0,Y
        LDA a60
        STA aE3
        LDA a53
        SEC 
        SBC a80
        STA a53
        LDA a54
        SBC #$00
        STA a54
        BCS b44DD
        LDA #$00
        STA a54
        STA a53
b44DD   DEX 
        BMI b447C
        STX a4473
        RTS 

        LDA a4B
        BEQ b44ED
        DEC a4B
        JMP j453B

b44ED   LDA a16
        ORA a17
        BNE b452F
        LDA a18
        BNE b452F
        LDA a81
        CMP #$01
        BNE b4501
        LDX #$9A
        STX aE3
b4501   CMP a80
        BCS b450E
        ADC #$01
        CMP a54
        BCS b4533
        STA a81
        RTS 

b450E   LDA #$00
        STA a81
        LDA #$D4
        STA aE3
        LDA a54
        SEC 
        SBC a80
        BCS b4521
        LDA #$00
        STA a53
b4521   STA a54
        LDA a74
        STA a7E
        LDX a4A
        LDA f1E78,X
        STA a4B
        RTS 

b452F   LDA a81
        BEQ j453B
b4533   LDA #$B1
        STA aE3
        LDA a81
        STA a4B
j453B   LDA #$00
        STA a81
        JMP j42A7

        JMP j42A7

        LDA a7D0C
        BEQ b454D
        JMP j42A7

b454D   JMP j41A9

s4550   JSR s45E2
        LDA a07
        STA a6E
        LDX #$08
b4559   LDA f339E,X
        AND #$7F
        LDY f357E,X
        STA (p1C),Y
        DEX 
        BPL b4559
        LDA #$05
        STA a7D0C
        LDA a2D
        ORA #$0C
        TAY 
        LDA #$53
        STA f7CA0,Y
        LDA a3E
        ASL 
        ASL 
        ASL 
        ADC #$29
        STA f7C60,Y
        LDA a3D
        ASL 
        ASL 
        ASL 
        ADC #$10
        STA f7C20,Y
        LDA #$00
        STA f7D20,Y
        STA f7F60,Y
        STA f7B80,Y
        STA f7FA0,Y
        STA a6B
        LDA #$1C
        STA aE3
        RTS 

s459E   LDA a52
        SEC 
        SBC #$25
        LSR 
        LSR 
        LSR 
        CMP a3E
        BNE b45D1
        LDA a51
        SEC 
        SBC #$06
        LSR 
        LSR 
        CMP a3D
        BNE b45D1
        JSR s45E2
        LDX #$08
b45BA   LDA f343D,X
        AND #$7F
        LDY f357E,X
        STA (p1C),Y
        DEX 
        BPL b45BA
        LDA #$00
        STA a7D0C
        LDA #$19
        STA aE3
        RTS 

b45D1   LDX a35
        LDY a36
        STX a6F
        STY a70
        LDX a37
        LDY a38
        STX a71
        STY a72
        RTS 

s45E2   LDX a3E
        LDA f6EAC,X
        STA a1D
        LDA a3D
        SEC 
        SBC #$01
        CLC 
        ADC f6EDE,X
        STA a1C
        BCC b45F8
        INC a1D
b45F8   RTS 

s45F9   LDA a0E
        BIT a6E98
        BNE b461C
        LDX #$03
        CMP #$00
        BMI b4611
b4606   LDA $027C,X
        STA $0270,X
        DEX 
        BPL b4606
        BMI b4619
b4611   LDA #$00
b4613   STA $0270,X
        DEX 
        BPL b4613
b4619   JSR s48A3
b461C   LDA a0E
        AND #$40
        BNE b4642
        LDA a26
        AND #$03
        BNE b4642
        LDA a0E
        BMI b4635
        LDA aF2
        BEQ b4642
        SEC 
        SBC #$01
        BCS b463E
b4635   LDA aF2
        CMP #$0F
        BEQ b4642
        CLC 
        ADC #$01
b463E   STA aF2
        STA aF3
b4642   LDA a0E
        BIT a6E99
        BEQ b466C
        BIT a6E9A
        BNE b467A
        CMP #$00
        BPL b4658
        LDA #$02
        STA a5A
        BNE b467A
b4658   LDX #$03
b465A   LDA f233E,X
        AND #$0F
        ORA #$60
        STA fC05B,X
        STA fC06A,X
        DEX 
        BPL b465A
        BMI b467A
b466C   CMP #$00
        BMI b4676
        LDA #$01
        STA a5A
        BNE b467A
b4676   LDA #$00
        STA a5A
b467A   LDA a5A
        CLC 
        ADC #$01
s467F   LDY #$6D
        BIT a6E95
        BNE b4688
        LDY #$00
b4688   STY aC033
        LDY #$6D
        BIT a6E96
        BNE b4694
        LDY #$00
b4694   STY aC044
        RTS 

s4698   LDX #$00
b469A   LDA $0270,X
        CMP f361F,X
        BEQ b46A6
        BCS b46AD
        BCC b46B8
b46A6   INX 
        CPX #$04
        BCC b469A
        BCS b46B8
b46AD   LDX #$03
b46AF   LDA f361F,X
        STA $0270,X
        DEX 
        BPL b46AF
b46B8   LDX #$03
b46BA   LDA $0270,X
        STA $027C,X
        DEX 
        BPL b46BA
        RTS 

s46C4   LDX #$07
b46C6   LDY f3025,X
        BMI b472D
        BEQ b46DE
        CPY #$08
        BCS b46DE
        TXA 
        AND #$03
        STA a0F
        LDA a26
        AND #$03
        CMP a0F
        BNE b472D
b46DE   LDA f32A0,Y
        STA a46F5
        LDA f32C0,Y
        STA a46F6
        TXA 
        LSR 
        ROR 
        ROR 
        ROR 
        STA a46F8
        LDY #$1F
a46F5   =*+$01
a46F6   =*+$02
b46F4   LDA fBC00,Y
a46F8   =*+$01
        STA fCF00,Y
        DEY 
        BPL b46F4
        LDA f32E0,X
        STA a1C
        LDA f32E8,X
        STA a1D
        LDY f3025,X
        LDA f2A20,Y
        LDY #$00
        STA (p1C),Y
        INY 
        STA (p1C),Y
        LDY #$28
        STA (p1C),Y
        INY 
        STA (p1C),Y
        LDA f3025,X
        BEQ b4728
        CMP #$07
        BCS b4728
        ADC #$01
        BNE b472A
b4728   LDA #$FF
b472A   STA f3025,X
b472D   DEX 
        BPL b46C6
        RTS 

s4731   LDA f32A0,X
        STA a4758
        STA a4763
        LDA f32C0,X
        STA a4759
        STA a4764
        LDA f2A20,X
        AND #$07
        STA a256F
        LDY #$3E
        LDA #$00
b474F   STA $E000,Y
        DEY 
        BPL b474F
        LDX #$1F
a4758   =*+$01
a4759   =*+$02
b4757   LDA fBC00,X
        LDY f35AE,X
        EOR #$55
        STA a4769
a4763   =*+$01
a4764   =*+$02
        LDA fBC00,X
        AND #$55
        ASL 
a4769   =*+$01
        EOR #$00
        STA $E000,Y
        DEX 
        BPL b4757
        LDX #$01
        LDY a2D
        LDA #$80
b4776   STA f7CA0,Y
        LDA #$01
        STA f7D00,X
        LDA #$93
        STA f7C60,Y
        LDA #$34
        STA f7C20,Y
        LDA #$01
        STA f7D20,Y
        LDA #$6F
        INY 
        DEX 
        BPL b4776
        LDA #$14
        STA a355B
        LDX #<a355B
        LDY #>a355B
        STX a12
        STY a13
        JSR s3A50
        RTS 

s47A4   LDA (p39),Y
        ASL 
        ASL 
        ASL 
        ADC #$3A
        STA a47D3
        INY 
        LDA (p39),Y
        ASL 
        ASL 
        ASL 
        PHP 
        CLC 
        ADC #$24
        STA a47D8
        LDA #$00
        PLP 
        ROL 
        STA a47DD
        LDX #$02
        LDY a2D
b47C6   TXA 
        CLC 
        ADC #$1D
        STA f7CA0,Y
        LDA #$01
        STA f7D00,X
a47D3   =*+$01
        LDA #$93
        STA f7C60,Y
a47D8   =*+$01
        LDA #$34
        STA f7C20,Y
a47DD   =*+$01
        LDA #$00
        STA f7D20,Y
        INY 
        DEX 
        BPL b47C6
        RTS 

a47E7   =*+$01
s47E6   LDA #$00
        BEQ b47EE
        DEC a47E7
        RTS 

b47EE   LDA a54
        LSR 
        LSR 
        LSR 
        LSR 
        EOR #$FF
        CLC 
        ADC #$11
        STA a47E7
        LDY #$08
        CMP #$0D
        BCC b480E
        LDA a26
        AND #$70
        BNE b480E
        LDA #$15
        STA aE3
        LDY #$0A
a480F   =*+$01
b480E   LDA #$08
        CLC 
        ADC #$01
        AND #$07
        ORA #$08
        STA a480F
        STA f3025
        TAX 
        TYA 
        STA f2A20,X
        RTS 

s4823   LDA f3551,Y
        STA a1A
        LDA f3556,Y
        STA a1B
        LDX f358C,Y
b4830   LDA f301D,X
        STA f3025,X
        DEX 
        BPL b4830
        LDA f354C,Y
b483C   TAY 
        LDA (p1A),Y
        BMI b484B
        LDA #$00
        STA (p1A),Y
        TYA 
        CLC 
        ADC #$06
        BPL b483C
b484B   RTS 

s484C   LDA a6ECE
        STA a1D
        LDA a6EE7
        STA a1C
        LDA #$08
        LDX #$0B
        JSR s6D05
        LDA a6EB5
        STA a1D
        LDA a6EE7
        STA a1C
        LDA #$00
        LDX #$0B
        JSR s6D05
        JSR s61E2
        LDA #$00
        STA f7D00
        STA a7D01
        STA a7D02
        RTS 

s487D   LDA #$01
        STA a59
        LDY #$07
        JSR s4894
        JSR s48D6
        DEC a59
        LDY #$03
        JSR s4894
        JSR s48D6
        RTS 

s4894   LDX #$03
b4896   LDA f19FC,Y
        STA f21,X
        STA $0274,X
        DEY 
        DEX 
        BPL b4896
        RTS 

s48A3   LDA a59
        ORA #$02
        STA a59
        LDX #$03
b48AB   LDA f21,X
        STA $0278,X
        LDA $0270,X
        STA f21,X
        DEX 
        BPL b48AB
        JSR s48D6
        INY 
        LDA #$6B
        STA (p1C),Y
        INY 
        LDA #$6C
        STA (p1C),Y
        LDX #$03
b48C7   LDA $0278,X
        STA f21,X
        DEX 
        BPL b48C7
        LDA a59
        AND #$01
        STA a59
        RTS 

s48D6   LDX a59
        LDA a6EE1
        CLC 
        ADC f2D03,X
        STA a1C
        LDA a6EAF
        ADC #$00
        STA a1D
        LDA #$6A
        STA a0F
        LDY #$00
        LDX #$00
b48F0   LDA f21,X
        LSR 
        LSR 
        LSR 
        LSR 
        BEQ b491E
        ORA #$60
        STA (p1C),Y
        LDA #$60
        STA a0F
b4900   INY 
        CPY #$07
        BCC b4909
        LDA #$60
        STA a0F
b4909   LDA f21,X
        AND #$0F
        BEQ b4924
        ORA #$60
        STA (p1C),Y
        LDA #$60
        STA a0F
b4917   INY 
        INX 
        CPX #$04
        BCC b48F0
        RTS 

b491E   LDA a0F
        STA (p1C),Y
        BNE b4900
b4924   LDA a0F
        STA (p1C),Y
        BNE b4917
        RTS 

s492B   LDX #<a355B
        LDY #>a355B
        STX a12
        STY a13
        LDY a355C
        LDA f6EAD,Y
        STA a4954
        LDA f6EDF,Y
        CLC 
        ADC a355D
        STA a4953
        BCC b494B
        INC a4954
b494B   LDX #$08
        LDA #$00
b494F   LDY f357E,X
a4953   =*+$01
a4954   =*+$02
        STA pC000,Y
        DEX 
        BPL b494F
        JSR s3A50
        RTS 

s495C   LDA a59
        ASL 
        ASL 
        ADC #$03
        TAY 
        LDX #$03
b4965   LDA f21,X
        STA f19FC,Y
        DEY 
        DEX 
        BPL b4965
        SED 
        SEC 
        LDX #$03
b4972   LDA f21,X
        SBC $0274,X
        STA $0278,X
        DEX 
        BPL b4972
        CLC 
        LDX #$03
b4980   LDA $0278,X
        ADC $0270,X
        STA $0270,X
        DEX 
        BPL b4980
        BCC b4998
        LDA #$99
        LDX #$03
b4992   STA $0270,X
        DEX 
        BPL b4992
b4998   CLD 
        RTS 

s499A   SED 
        LDA f30B5,X
        CLC 
        ADC a24
        STA a24
        LDA f30D5,X
        ADC a23
        STA a23
        LDA f30F5,X
        ADC a22
        STA a22
        LDA a21
        ADC #$00
        CLD 
        BCS b49BB
        STA a21
        RTS 

b49BB   LDA #$99
        LDX #$03
b49BF   STA f21,X
        DEX 
        BPL b49BF
        RTS 

s49C5   LDX a39
        LDY a3A
        STX a12
        STY a13
        JSR s3A50
        LDX a5B
b49D2   LDA f302D,X
        STA f3025,X
        DEX 
        BPL b49D2
        JSR s46C4
        RTS 

s49DF   LDA a56
        BMI b4A1B
        BIT a6E9B
        BNE b4A2C
        LDX a16
        BEQ b49EF
        JMP j4B3E

b49EF   LDX a18
        BEQ b49FB
        LDX a17
        BEQ b4A2B
        LDX #$25
        STX aE4
b49FB   TAY 
        LDA f4A0B,Y
        STA a4A09
        LDA f4A13,Y
        STA a4A0A
a4A09   =*+$01
a4A0A   =*+$02
        JMP j4A95

f4A0B   .BYTE $95,$9A,$57,$EA,$D8,$6E,$05,$EA
f4A13   .BYTE $4A,$4A,$4B,$4C,$4D,$4E,$4F,$4F
b4A1B   LDA a18
        BEQ b4A2B
        LDA a16
        ORA a17
        BNE b4A2B
        LDA a56
        AND #$7F
        STA a56
b4A2B   RTS 

b4A2C   CMP #$40
        BEQ b4A49
        LDA a17
        BEQ b4A50
        LDA a56
        AND #$3F
        ORA #$80
        STA a56
        AND #$07
        LDX #$00
        STX a17
        LDX #$25
        STX aE4
        JMP b49FB

b4A49   LDA a18
        BNE b4A50
        INC a25
        RTS 

b4A50   LDA a16
        BEQ b4A2B
        CLC 
        ADC a56
        AND #$07
        STA a11
        TAY 
        ORA #$C0
        STA a56
        STA a507A
        LDA f2DF0,Y
        STA a1A
        LDA f2DF8,Y
        STA a1B
        JSR s3F43
        LDY a11
        LDA #$24
        STA aE3
j4A76   LDA f4A85,Y
        STA a4A83
        LDA f4A8D,Y
        STA a4A84
a4A83   =*+$01
a4A84   =*+$02
        JMP j5086

f4A85   .BYTE $86,$8E,$9F,$BD,$06,$40,$5E,$A7
f4A8D   .BYTE $50,$50,$50,$50,$51,$51,$51,$51
j4A95   LDA #$C0
        STA a56
        RTS 

        LDA a18
        BEQ b4ADE
        LDA a17
        CLC 
        ADC a5D
        AND #$03
        CMP a08
        BNE b4AAE
        CLC 
        ADC a17
        AND #$03
b4AAE   STA a5D
        TAY 
        JSR s4823
        JSR s484C
        LDY a5D
        LDA f3551,Y
        STA a12
        LDA f3556,Y
        STA a13
        JSR s3A50
        JSR s46C4
        LDA #<p1511
        STA a2FF6
        LDA #>p1511
        STA a2FF7
        LDY a5D
        LDX f3115,Y
        JSR s4C6E
        JMP j4B50

b4ADE   JSR s4C17
        BCC b4AF1
        LDX #$CC
        LDY #$2F
        JSR s3F3F
        LDA #$11
        STA aE3
        JMP j4B50

b4AF1   LDY #$06
b4AF3   JSR s4BEA
        BCS b4B08
        LDA f3036,Y
        BMI b4B05
        STA f3059,X
        LDA #$00
        STA f3083,X
b4B05   DEY 
        BPL b4AF3
b4B08   LDY #$03
b4B0A   JSR s4EF6
        BCS b4B1F
        LDA f2CBB,Y
        BMI b4B1C
        STA f306E,X
        LDA #$00
        STA f3098,X
b4B1C   DEY 
        BPL b4B0A
b4B1F   LDA a5D
        STA a08
        JSR s3C55
        LDY a5D
        LDX f3115,Y
        JSR s4C47
        LDX #$16
        LDY #$2F
        JSR s3F3F
        LDA #$26
        STA aE3
j4B39   LDA #$00
        STA a507A
j4B3E   JSR s484C
        JSR s49C5
j4B44   LDA a56
        ORA #$C0
        STA a56
        AND #$07
        TAY 
        JMP j4A76

j4B50   LDA a56
        ORA #$80
        STA a56
        RTS 

        LDA a5D
        BPL b4B5E
        JMP j4B44

b4B5E   LDA a18
        BEQ b4BA2
        LDA a17
        CLC 
        ADC a5D
        BMI b4B76
        CMP a5E
        BCC b4B76
        CMP a5F
        BCC b4B7B
        LDA a5E
        JMP b4B7B

b4B76   LDA a5F
        SEC 
        SBC #$01
b4B7B   STA a5D
        TAY 
        LDA f1D88,Y
        AND #$0F
        TAX 
        LDA f3905,X
        STA a2FF6
        LDA f391E,X
        STA a2FF7
        TXA 
        ORA #$10
        TAX 
        JSR s4731
        LDY a5D
        LDX f1D4C,Y
        JSR s4C6E
        JMP j4B50

b4BA2   JSR s4BF9
        BCC b4BB5
        LDX #$CC
        LDY #$2F
        JSR s3F3F
        LDA #$11
        STA aE3
        JMP j4B50

b4BB5   JSR s4BEA
        BCC b4BC8
        LDX #$B6
        LDY #$2F
        JSR s3F3F
        LDA #$11
        STA aE3
        JMP j4B50

b4BC8   LDA a5D
        STA f3059,X
        TAY 
        LDA f1D88,Y
        AND #$F0
        STA f3083,X
        LDX f1D4C,Y
        JSR s4C47
        LDX #$2B
        LDY #$2F
        JSR s3F3F
        LDA #$26
        STA aE3
        JMP j4B39

s4BEA   LDX #$00
b4BEC   LDA f3059,X
        BMI b4BF7
        INX 
        CPX #$14
        BCC b4BEC
        RTS 

b4BF7   CLC 
        RTS 

s4BF9   LDA $0270
        BNE b4C06
        LDX a5D
        LDY f1D4C,X
        JMP j4C26

b4C06   CLC 
        RTS 

s4C08   LDA $0270
        BNE b4C15
        LDX a5D
        LDY f1E00,X
        JMP j4C26

b4C15   CLC 
        RTS 

s4C17   LDA $0270
        BNE b4C24
        LDX a5D
        LDY f3115,X
        JMP j4C26

b4C24   CLC 
        RTS 

j4C26   LDA f30F5,Y
        CMP $0271
        BCC b4C45
        BNE b4C44
        LDA f30D5,Y
        CMP $0272
        BCC b4C45
        BNE b4C44
        LDA f30B5,Y
        CMP $0273
        BCC b4C45
        BEQ b4C45
b4C44   RTS 

b4C45   CLC 
        RTS 

s4C47   SED 
        SEC 
        LDA $0273
        SBC f30B5,X
        STA $0273
        LDA $0272
        SBC f30D5,X
        STA $0272
        LDA $0271
        SBC f30F5,X
        STA $0271
        LDA $0270
        SBC #$00
        STA $0270
        CLD 
        RTS 

s4C6E   LDA #$28
        STA a11
        LDA #<p2FFE
        STA a4CDA
        LDA #>p2FFE
        STA a4CDB
        LDA f30F5,X
        LSR 
        LSR 
        LSR 
        LSR 
        JSR s4CD3
        LDA f30F5,X
        AND #$0F
        JSR s4CD3
        LDA f30D5,X
        LSR 
        LSR 
        LSR 
        LSR 
        JSR s4CD3
        LDA f30D5,X
        AND #$0F
        JSR s4CD3
        LDA f30B5,X
        LSR 
        LSR 
        LSR 
        LSR 
        JSR s4CD3
        LDA f30B5,X
        AND #$0F
        JSR s4CD3
        LDY a5D
        INY 
        TYA 
        LDY #$00
        SEC 
b4CB9   SBC #$0A
        INY 
        BCS b4CB9
        ADC #$0A
        DEY 
        BNE b4CC5
        LDY #$28
b4CC5   STY a2FF8
        STA a2FF9
        LDX #$EF
        LDY #$2F
        JSR s3F3F
        RTS 

s4CD3   BEQ b4CE5
        LDY #$00
        STY a11
a4CDA   =*+$01
a4CDB   =*+$02
j4CD9   STA p2FFE
        INC a4CDA
        BNE b4CE4
        INC a4CDB
b4CE4   RTS 

b4CE5   LDA a11
        JMP j4CD9

        LDA a5D
        BPL b4CF4
        JMP j4B44

b4CF1   JMP j4B3E

b4CF4   LDA a18
        BEQ b4D6A
        LDA a17
        CLC 
        ADC a5D
        BMI b4D09
        TAY 
        LDA f3059,Y
        BPL b4D13
        LDY #$00
        BEQ b4D13
b4D09   LDY #$14
b4D0B   DEY 
        BMI b4CF1
        LDA f3059,Y
        BMI b4D0B
b4D13   STY a5D
        LDX f3059,Y
        STX a20
        LDA f1D88,X
        AND #$0F
        TAX 
        LDA f3905,X
        STA a2F48
        LDA f391E,X
        STA a2F49
        TXA 
        ORA #$10
        STA a4D62
        LDA f3083,Y
        BEQ b4D41
        LDX #$2B
        LDY #$2F
        JSR s3F3F
        JMP j4D61

b4D41   LDY a20
        INY 
        TYA 
        LDY #$00
        SEC 
b4D48   SBC #$0A
        INY 
        BCS b4D48
        ADC #$0A
        DEY 
        BNE b4D54
        LDY #$28
b4D54   STY a2F4A
        STA a2F4B
        LDX #$41
        LDY #$2F
        JSR s3F3F
a4D62   =*+$01
j4D61   LDX #$00
        JSR s4731
        JMP j4B50

        RTS 

b4D6A   LDX a5D
        LDA f3083,X
        BNE b4D90
        LDY #$01
j4D73   CPY a5B
        BEQ b4D79
        BCS b4D82
b4D79   LDA f302D,Y
        BEQ b4D9E
        INY 
        JMP j4D73

b4D82   LDX #$54
        LDY #$2F
        JSR s3F3F
        LDA #$11
        STA aE3
        JMP j4B50

b4D90   LDX #$2B
        LDY #$2F
        JSR s3F3F
        LDA #$11
        STA aE3
        JMP j4B50

b4D9E   LDA f3059,X
        STA f3035,Y
        STX a10
        TAX 
        LDA f1D88,X
        AND #$0F
        ORA #$10
        STA f302D,Y
        LDA f1DC4,X
        STA f303D,Y
        LDX a10
b4DB9   LDA f305A,X
        STA f3059,X
        LDA f3084,X
        STA f3083,X
        INX 
        CPX #$14
        BCC b4DB9
        LDX #$81
        LDY #$2F
        JSR s3F3F
        LDA #$26
        STA aE3
        JMP j4B39

        LDA a5D
        BPL b4DE2
        JMP j4B44

b4DDF   JMP j4B3E

b4DE2   LDX a18
        BEQ b4E51
        LDX #$07
j4DE8   CLC 
        ADC a17
        CMP #$01
        BCS b4DF3
        LDA a5B
        BNE b4DFB
b4DF3   CMP a5B
        BEQ b4DFB
        BCC b4DFB
        LDA #$01
b4DFB   TAY 
        LDA f302D,Y
        BEQ b4E03
        BPL b4E0A
b4E03   DEX 
        BEQ b4DDF
        TYA 
        JMP j4DE8

b4E0A   STY a5D
        TYA 
        ASL 
        ADC a3B
        TAY 
        JSR s47A4
        LDY a5D
        LDX f3035,Y
        STX a20
        LDA f1D88,X
        AND #$0F
        TAY 
        LDA f3905,Y
        STA a2FE9
        LDA f391E,Y
        STA a2FEA
        LDY a20
        INY 
        TYA 
        LDY #$00
        SEC 
b4E34   SBC #$0A
        INY 
        BCS b4E34
        ADC #$0A
        DEY 
        BNE b4E40
        LDY #$28
b4E40   STY a2FEB
        STA a2FEC
        LDX #$E2
        LDY #$2F
        JSR s3F3F
        JMP j4B50

        RTS 

b4E51   LDY a5D
        LDA #$00
        STA f302D,Y
        STA f3025,Y
        LDA #$FF
        STA f3035,Y
        LDX #$93
        LDY #$2F
        JSR s3F3F
        LDA #$26
        STA aE3
        JMP j4B39

        LDA a5D
        BPL b4E75
        JMP j4B44

b4E75   LDA a18
        BEQ b4EAE
        LDA a17
        CLC 
        ADC a5D
        BMI b4E8D
        CMP a5E
        BCC b4E8D
        CMP a5F
        BCC b4E92
        LDA a5E
        JMP b4E92

b4E8D   LDA a5F
        SEC 
        SBC #$01
b4E92   STA a5D
        TAY 
        LDA f1EB4,Y
        AND #$1F
        STA a355B
        JSR s492B
        LDY a5D
        JSR s5455
        LDX f1E00,Y
        JSR s4C6E
        JMP j4B50

b4EAE   JSR s4C08
        BCC b4EC1
        LDX #$CC
        LDY #$2F
        JSR s3F3F
        LDA #$11
        STA aE3
        JMP j4B50

b4EC1   JSR s4EF6
        BCC b4ED4
        LDX #$B6
        LDY #$2F
        JSR s3F3F
        LDA #$11
        STA aE3
        JMP j4B50

b4ED4   LDA a5D
        STA f306E,X
        TAY 
        LDA f1EB4,Y
        AND #$E0
        STA f3098,X
        LDX f1E00,Y
        JSR s4C47
        LDX #$2B
        LDY #$2F
        JSR s3F3F
        LDA #$26
        STA aE3
        JMP j4B39

s4EF6   LDX #$00
b4EF8   LDA f306E,X
        BMI b4F03
        INX 
        CPX #$14
        BCC b4EF8
        RTS 

b4F03   CLC 
        RTS 

        LDA a5D
        BPL b4F0F
        JMP j4B44

b4F0C   JMP j4B3E

b4F0F   LDA a18
        BEQ b4F78
        LDA a17
        CLC 
        ADC a5D
        BMI b4F24
        TAY 
        LDA f306E,Y
        BPL b4F2E
        LDY #$00
        BEQ b4F2E
b4F24   LDY #$14
b4F26   DEY 
        BMI b4F0C
        LDA f306E,Y
        BMI b4F26
b4F2E   STY a5D
        LDX f306E,Y
        STX a20
        LDA f1EB4,X
        AND #$1F
        STA a355B
        LDA f3098,Y
        BEQ b4F4C
        LDX #$2B
        LDY #$2F
        JSR s3F3F
        JMP j4F71

b4F4C   TXA 
        TAY 
        JSR s5455
        LDY a20
        INY 
        TYA 
        LDY #$00
        SEC 
b4F58   SBC #$0A
        INY 
        BCS b4F58
        ADC #$0A
        DEY 
        BNE b4F64
        LDY #$28
b4F64   STY a2F4A
        STA a2F4B
        LDX #$41
        LDY #$2F
        JSR s3F3F
j4F71   JSR s492B
        JMP j4B50

        RTS 

b4F78   LDX a5D
        LDA f3098,X
        BNE b4FA9
        LDA a5C
        BMI b4F9B
        LDY a3C
        LDA #$00
        STA a4FBD
j4F8A   LDA (p39),Y
        BMI b4F9B
        BEQ b4FB7
        TYA 
        CLC 
        ADC #$06
        TAY 
        INC a4FBD
        JMP j4F8A

b4F9B   LDX #$54
        LDY #$2F
        JSR s3F3F
        LDA #$11
        STA aE3
        JMP j4B50

b4FA9   LDX #$2B
        LDY #$2F
        JSR s3F3F
        LDA #$11
        STA aE3
        JMP j4B50

b4FB7   STX a10
        LDA f306E,X
a4FBD   =*+$01
        LDX #$00
        STA f2CBB,X
        TAX 
        LDA f1EB4,X
        AND #$1F
        STA (p39),Y
        LDX a10
b4FCB   LDA f306F,X
        STA f306E,X
        LDA f3099,X
        STA f3098,X
        INX 
        CPX #$14
        BCC b4FCB
        LDX #$81
        LDY #$2F
        JSR s3F3F
        LDA #$26
        STA aE3
        JMP j4B39

        LDA a5D
        BPL b4FF4
        JMP j4B44

b4FF1   JMP j4B3E

b4FF4   LDX a18
        BEQ b505E
        LDX #$03
j4FFA   CLC 
        ADC a17
        BPL b5003
        LDA a5C
        BNE b500B
b5003   CMP a5C
        BEQ b500B
        BCC b500B
        LDA #$00
b500B   STA a5D
        TAY 
        LDA a3C
j5010   CPY #$00
        BEQ b501B
        CLC 
        ADC #$06
        DEY 
        JMP j5010

b501B   TAY 
        LDA (p39),Y
        BNE b5028
        DEX 
        BMI b4FF1
        LDA a5D
        JMP j4FFA

b5028   STY a505F
        INY 
        JSR s47A4
        LDY a5D
        LDA f2CBB,Y
        STA a20
        TAY 
        JSR s5455
        LDY a20
        INY 
        TYA 
        LDY #$00
        SEC 
b5041   SBC #$0A
        INY 
        BCS b5041
        ADC #$0A
        DEY 
        BNE b504D
        LDY #$28
b504D   STY a2FEB
        STA a2FEC
        LDX #$E2
        LDY #$2F
        JSR s3F3F
        JMP j4B50

        RTS 

a505F   =*+$01
b505E   LDY #$00
        LDA #$00
        STA (p39),Y
        LDY a5D
        LDA #$FF
        STA f2CBB,Y
        LDX #$93
        LDY #$2F
        JSR s3F3F
        LDA #$26
        STA aE3
        JMP j4B39

a507A   =*+$01
s5079   LDA #$00
        BEQ b5080
        JSR s3F3F
b5080   LDA #$FF
        STA a507A
        RTS 

j5086   LDX #$DB
        LDY #$2D
        JSR s3F3F
        RTS 

        LDX #$04
        LDY #$2F
        JSR s5079
        LDA a08
        CLC 
        ADC #$01
        AND #$03
        STA a5D
        RTS 

        LDA a5E
        CMP a5F
        BCC b50B1
        LDX #$08
        LDY #$30
        JSR s5079
        LDA #$FF
        STA a5D
        RTS 

b50B1   LDX #$A4
        LDY #$2F
        JSR s5079
        LDA a5E
        STA a5D
        RTS 

        LDX #$00
        STX a5D
b50C1   LDA f3059,X
        BMI b50CE
        LDA f3083,X
        BEQ b50E6
        INX 
        BPL b50C1
b50CE   CPX #$00
        BEQ b50DA
        LDX #$B8
        LDY #$2E
        JSR s5079
        RTS 

b50DA   LDX #$A5
        LDY #$2E
        JSR s5079
        LDA #$FF
        STA a5D
        RTS 

b50E6   LDA #$28
        STA a2ED0
        INX 
b50EC   LDA f3059,X
        BMI b50FE
        LDA f3083,X
        BEQ b50F9
        INX 
        BPL b50EC
b50F9   LDA #$1C
        STA a2ED0
b50FE   LDX #$CA
        LDY #$2E
        JSR s5079
        RTS 

        LDY #$00
        LDX a5B
j510A   CPX #$01
        BCC b511B
        LDA f302D,X
        BEQ b5117
        STX a5130
        INY 
b5117   DEX 
        JMP j510A

b511B   LDA #$28
        CPY #$01
        BEQ b5125
        BCC b5134
        LDA #$1C
b5125   STA a2EE3
        LDX #$DD
        LDY #$2E
        JSR s5079
a5130   =*+$01
        LDA #$02
        STA a5D
        RTS 

b5134   LDX #$EE
        LDY #$2E
        JSR s5079
        LDA #$FF
        STA a5D
        RTS 

        LDA a5E
        CMP a5F
        BCC b5152
        LDX #$08
        LDY #$30
        JSR s5079
        LDA #$FF
        STA a5D
        RTS 

b5152   LDX #$A4
        LDY #$2F
        JSR s5079
        LDA a5E
        STA a5D
        RTS 

        LDX #$00
        STX a5D
b5162   LDA f306E,X
        BMI b516F
        LDA f3098,X
        BEQ b5187
        INX 
        BPL b5162
b516F   CPX #$00
        BEQ b517B
        LDX #$B8
        LDY #$2E
        JSR s5079
        RTS 

b517B   LDX #$A5
        LDY #$2E
        JSR s5079
        LDA #$FF
        STA a5D
        RTS 

b5187   LDA #$28
        STA a2ED0
        INX 
b518D   LDA f306E,X
        BMI b519F
        LDA f3098,X
        BEQ b519A
        INX 
        BPL b518D
b519A   LDA #$1C
        STA a2ED0
b519F   LDX #$CA
        LDY #$2E
        JSR s5079
        RTS 

        LDA #$FF
        STA a5D
        LDX #$00
        STX a51CC
        LDY a3C
b51B2   LDA (p39),Y
        BMI b51C9
        BEQ b51C1
        INC a51CC
        LDA a5D
        BPL b51C1
        STX a5D
b51C1   INX 
        TYA 
        CLC 
        ADC #$06
        TAY 
        BPL b51B2
b51C9   LDA #$28
a51CC   =*+$01
        LDX #$00
        CPX #$01
        BEQ b51D5
        BCC b51E0
        LDA #$1C
b51D5   STA a2EE3
        LDX #$DD
        LDY #$2E
        JSR s5079
        RTS 

b51E0   LDX #$EE
        LDY #$2E
        JSR s5079
        RTS 

s51E8   STX a51F3
        STY a51F4
        LDY #$00
        LDX #$00
a51F3   =*+$01
a51F4   =*+$02
b51F2   LDA f1FB0,Y
        BEQ b51FF
        STA a51FB
a51FB   =*+$01
        STX a02
        INY 
        BPL b51F2
b51FF   RTS 

s5200   STX a12
        STY a13
        LDY #$00
b5206   LDA (p12),Y
        STA a521A
        INY 
        LDA (p12),Y
        STA a521B
        INY 
        LDA (p12),Y
        BEQ b5222
        TAX 
        LDA #$00
a521A   =*+$01
a521B   =*+$02
b5219   STA f19FC,X
        DEX 
        BPL b5219
        INY 
        BPL b5206
b5222   RTS 

s5223   STX a12
        STY a13
        LDY #$00
b5229   LDA (p12),Y
        STA a523D
        INY 
        LDA (p12),Y
        STA a523E
        ORA a523D
        BEQ b5242
        INY 
        LDA (p12),Y
a523D   =*+$01
a523E   =*+$02
        STA $D020    ;Border Color
        INY 
        BPL b5229
b5242   RTS 

s5243   LDA a26
        CMP #$45
        BCS b52B1
        LSR 
        BCS b52B1
        TAY 
        LDA f3188,Y
        BEQ b52B1
        BMI b5284
        STA a526D
        LDX #<$D91C
        LDY #>$D91C
        STX a1A
        STY a1B
        LDX #$0C
b5261   LDY f31AB,X
b5264   LDA (p1A),Y
        AND #$0F
        CMP #$08
        BEQ b5270
a526D   =*+$01
        LDA #$09
        STA (p1A),Y
b5270   DEY 
        BPL b5264
        DEX 
        BMI b52B1
        LDA a1A
        CLC 
        ADC #$28
        STA a1A
        BCC b5261
        INC a1B
        JMP b5261

b5284   LDX #<pC11B
        LDY #>pC11B
        STX a5298
        STY a5299
        LDX #$0C
b5290   LDY f31AB,X
        INY 
        INY 
        LDA #$00
a5298   =*+$01
a5299   =*+$02
b5297   STA pC000,Y
        DEY 
        BPL b5297
        DEX 
        BMI b52B1
        LDA a5298
        CLC 
        ADC #$28
        STA a5298
        BCC b5290
        INC a5299
        JMP b5290

b52B1   LDA a26
        CMP #$49
        BCS b52CD
        LSR 
        BCS b52CD
        TAY 
        LDA f3119,Y
        STA $069F
        LDA f313E,Y
        STA $069A
        LDA f3163,Y
        STA $0691
b52CD   RTS 

s52CE   LDA #$00
        STA a76
        STA a75
        LDX a5B
b52D6   LDY f3035,X
        LDA f302D,X
        CMP #$11
        BEQ b52E8
        CMP #$12
        BEQ b52E8
j52E4   DEX 
        BPL b52D6
        RTS 

b52E8   LDA a54
        LSR 
        LSR 
        LSR 
        LSR 
        STA a0F
        CLC 
        ADC f303D,X
        CMP f1DC4,Y
        BCS b5306
        STA f303D,X
        LDA a54
        SEC 
        SBC a0F
        STA a54
        JMP j52E4

b5306   LDA a54
        SBC f1DC4,Y
        CLC 
        ADC f303D,X
        STA a54
        LDA f1DC4,Y
        STA f303D,X
        JMP j52E4

s531A   LDA f7900,X
        STA a1A
        STA a5348
        LDA f7A00,X
        STA a1B
        STA a5349
        LDY #$00
        LDA (p1A),Y
        TAY 
        STY a11
        BEQ b533B
        DEY 
        LDA #$00
b5336   STA (p1C),Y
        DEY 
        BPL b5336
b533B   LDY #$01
        LDA (p1A),Y
        BEQ b535F
        STA a20
        LDX #$02
        LDY a11
a5348   =*+$01
a5349   =*+$02
b5347   LDA p8010,X
        STA (p1C),Y
        INX 
        INY 
        CPY #$3F
        BCS b535F
        DEC a20
        BNE b5347
        LDA #$00
b5358   STA (p1C),Y
        INY 
        CPY #$3F
        BCC b5358
b535F   RTS 

s5360   LDY #$3E
b5362   LDA (p1A),Y
        ORA (p1C),Y
        STA (p1C),Y
        DEY 
        BPL b5362
        RTS 

s536C   JSR s3A1D
        LDX #<$E000
        LDY #>$E000
        STX a1C
        STY a1D
        LDA a6A
        AND #$80
        STA a5396
        TAX 
        ORA #$7F
        STA a5398
b5384   JSR s531A
        CLC 
        LDA a1C
        ADC #$40
        STA a1C
        BCC b5392
        INC a1D
b5392   INC a5396
a5396   =*+$01
        LDX #$00
a5398   =*+$01
        CPX #$7F
        BCC b5384
        LDX #<$E040
        LDY #>$E040
        STX a1A
        STY a1B
        LDX #<$E080
        LDY #>$E080
        STX a1C
        STY a1D
        LDX #$07
b53AD   JSR s5360
        CLC 
        LDA a1C
        ADC #$40
        STA a1C
        BCC b53BB
        INC a1D
b53BB   DEX 
        BNE b53AD
        LDA #$00
        STA a10
b53C2   LDA #$00
        STA a1A
        LDX a10
        LDA f35EE,X
        CMP #$FF
        BEQ b53E0
        LSR 
        ROR a1A
        LSR 
        ROR a1A
        ORA #$C0
        STA a1B
        JSR s53E1
        INC a10
        BPL b53C2
b53E0   RTS 

s53E1   LDA #$00
        STA a53F2
        LDA #$3C
        STA a53F6
        LDA #$0A
        STA a20
b53EF   LDX #$03
a53F2   =*+$01
b53F1   LDY #$00
        LDA (p1A),Y
a53F6   =*+$01
        LDY #$3C
        STA (p1A),Y
        INC a53F2
        INC a53F6
        DEX 
        BNE b53F1
        LDA a53F6
        SEC 
        SBC #$06
        STA a53F6
        DEC a20
        BNE b53EF
        RTS 

s5410   LDA f7CA0,X
        STA f7CA0,Y
        STA a541A
a541A   =*+$01
        LDA a2A00
        BEQ b543C
        STA a542D
        AND #$07
        STA a5429
        AND a26
a5429   =*+$01
        CMP #$07
        BNE b543C
a542D   =*+$01
        LDA #$00
        BMI b543D
        LSR 
        LSR 
        LSR 
        BEQ b544B
        CLC 
        ADC a541A
        STA f7CA0,Y
b543C   RTS 

b543D   SEC 
        ROR 
        SEC 
        ROR 
        SEC 
        ROR 
        CLC 
        ADC a541A
        STA f7CA0,Y
        RTS 

b544B   LDA #$00
        LDX a0F
        STA f7D00,X
        LDX a10
        RTS 

s5455   LDA f1E3C,Y
        BIT a6E98
        BNE b549E
        BIT a6E99
        BNE b546A
        AND #$03
        ORA #$10
        TAX 
        BNE b547C
        RTS 

b546A   BIT a6E9A
        BNE b5475
        BIT a6E9B
        BNE b5495
        RTS 

b5475   LDX #$16
        AND #$07
        BNE b547C
        INX 
b547C   LDA f3905,X
        STA a2FF6
        STA a2FE9
        STA a2F48
        LDA f391E,X
        STA a2FF7
        STA a2FEA
        STA a2F49
        RTS 

b5495   LDX #$14
        AND #$07
        BNE b547C
        INX 
        BNE b547C
b549E   BIT a6E99
        BNE b54A9
        BIT a6E9A
        BNE b54AD
        RTS 

b54A9   LDX #$18
        BNE b547C
b54AD   LDX #$12
        BNE b547C
s54B1   LDY a2C
        LDX a2D
        STX a2C
        STY a2D
        STX a10
        STY a11
        LDA #$00
        STA a0F
j54C1   LDX a0F
        LDY f7D00,X
        CPY #$13
        BCS b5547
        LDA f54D9,Y
        STA a54D7
        LDA f54EB,Y
        STA a54D8
a54D7   =*+$01
a54D8   =*+$02
        JMP b5547

f54D9   .BYTE $47,$5B,$96,$D6,$AE,$91,$A7,$C6
        .BYTE $C6,$C6,$C6,$06,$45,$59,$4D,$62
        .BYTE $38,$7A
f54EB   .BYTE $55,$55,$55,$55,$5F,$56,$57,$57
        .BYTE $57,$57,$57,$5A,$B3,$B2,$5A,$59
        .BYTE $5A,$55
j54FD   LDA f7C60,Y
        CMP #$22
        BCC b5547
        CMP #$F6
        BCS b5547
        LSR 
        TAX 
        TYA 
        LDY $0100,X
        BMI b5544
        INX 
        LDY $0100,X
        BMI b5544
        INX 
        LDY $0100,X
        BMI b5544
        INX 
        BMI b5547
        LDY $0100,X
        BMI b5544
        INX 
        BMI b5547
        LDY $0100,X
        BMI b5544
        INX 
        BMI b5547
        LDY $0100,X
        BMI b5544
        INX 
        BMI b5547
        LDY $0100,X
        BMI b5544
        INX 
        BMI b5547
        LDY $0100,X
        BPL b5547
b5544   STA $0100,X
b5547   INC a10
        INC a11
        INC a0F
        LDA a0F
        CMP a0C
        BCS b5556
        JMP j54C1

b5556   LDA #$00
        STA a44
        RTS 

        LDX a10
        LDY a11
        LDA f7CA0,X
        STA f7CA0,Y
        LDA f7C60,X
        STA f7C60,Y
        LDA f7C20,X
        STA f7C20,Y
        LDA f7D20,X
        STA f7D20,Y
        JMP j54FD

        LDX a10
        LDY a11
        JSR s5410
        LDA f7C60,X
        STA f7C60,Y
        LDA f7C20,X
        STA f7C20,Y
        LDA f7D20,X
        STA f7D20,Y
        JMP j54FD

        LDY a11
        LDX a10
        LDA f7D20,X
        STA f7D20,Y
        LDA f7CA0,X
        STA f7CA0,Y
        LDA f7B80,X
        CLC 
        ADC a46
        STA f7B80,Y
        LDA a47
        ADC f7C20,X
        STA f7C20,Y
        LDA f7D20,X
        ADC a2F
        STA f7D20,Y
        BEQ b55CD
        LDA f7C20,Y
        BMI b55CD
        CMP #$60
        BCC b55CD
        JMP j5616

b55CD   LDA f7C60,X
        STA f7C60,Y
        JMP j54FD

        LDX a0F
        LDY a11
        DEC f7E60,X
        BEQ b5613
        LDA a52
        BEQ b5613
        CLC 
        ADC f7E40,X
        STA f7C60,Y
        CMP #$25
        BCC b5613
        CMP #$F6
        BCS b5613
        LDA a51
        CLC 
        ADC f7E20,X
        ROL 
        STA f7C20,Y
        LDA #$00
        ROL 
        STA f7D20,Y
        BEQ b560B
        LDA f7C20,Y
        CMP #$50
        BCS b5613
b560B   LDX a10
        JSR s5410
        JMP j54FD

b5613   JMP j5616

j5616   LDX a0F
        LDA #$00
        STA f7D00,X
        JMP b5547

s5620   LDY a0F
        LDA f7D20,Y
        STA a5637
        STA a5641
        SEC 
        SBC #$40
        STA a5665
        STA a566F
        LDY a11
a5637   =*+$01
        LDA f2600
        CLC 
        ADC f7B80,X
        STA f7B80,Y
a5641   =*+$01
        LDA f2700
        BMI b5656
        ADC f7C20,X
        STA f7C20,Y
        LDA f7D20,X
        ADC #$00
        STA f7D20,Y
        JMP j5664

b5656   ADC f7C20,X
        STA f7C20,Y
        LDA f7D20,X
        ADC #$FF
        STA f7D20,Y
a5665   =*+$01
j5664   LDA f2600
        CLC 
        ADC f7FA0,X
        STA f7FA0,Y
a566F   =*+$01
        LDA f2700
        BMI b5682
        ADC f7C60,X
        STA f7C60,Y
        LDA f7F60,X
        ADC #$00
        STA f7F60,Y
        RTS 

b5682   ADC f7C60,X
        STA f7C60,Y
        LDA f7F60,X
        ADC #$FF
        STA f7F60,Y
        RTS 

        LDA a19
        CMP #$04
        BNE b56F1
        LDA a16
        CLC 
        ADC #$01
        ASL 
        SEC 
        ROL 
        ADC a17
        STA a6C
        CMP #$05
        BEQ b56F1
        TAX 
        LDA f1D16,X
        AND #$F8
        STA a6D
        LDA a6B
        AND #$07
        BNE b56BC
        LDA a6D
        STA a6B
        JMP j5709

b56BC   LDA a6B
        AND #$F8
        CMP a6D
        BEQ j5709
        EOR #$80
        CMP a6D
        BEQ b5723
        EOR #$80
        SEC 
        SBC a6D
        BMI b56E1
        LDA a26
        AND #$01
        BEQ b5741
        LDA a6B
        SEC 
        SBC #$08
        STA a6B
        JMP b5741

b56E1   LDA a26
        AND #$01
        BEQ b5741
        LDA a6B
        CLC 
        ADC #$08
        STA a6B
        JMP b5741

b56F1   LDA a26
        AND #$07
        CMP #$01
        BNE b5741
        LDA a6B
        AND #$07
        BEQ b5741
        LDA a6B
        SEC 
        SBC #$01
        STA a6B
        JMP b5741

j5709   LDA a26
        AND #$01
        CMP #$01
        BNE b5741
        LDA a6B
        AND #$07
        CMP #$05
        BCS b5741
        LDA a6B
        CLC 
        ADC #$01
        STA a6B
        JMP b5741

b5723   LDA a26
        AND #$03
        CMP #$01
        BNE b5741
        LDA a6B
        AND #$07
        BEQ b573B
        LDA a6B
        SEC 
        SBC #$01
        STA a6B
        JMP b5741

b573B   LDA a6B
        EOR #$81
        STA a6B
b5741   LDA a6B
        STA a7D2C
        LDX a10
        JSR s5620
        JSR s5410
        LDA f7F60,Y
        BNE b577D
        LDA f7D20,Y
        CMP #$02
        BCS b577D
        LSR 
        LDA f7C20,Y
        ROR 
        STA a5769
        LDA a19
        CMP #$04
        BNE b5774
a5769   =*+$01
        LDA #$00
        STA a51
        LDA f7C60,Y
        STA a52
        JMP j54FD

b5774   JSR s5825
        JMP j54FD

b577A   JMP b5547

b577D   LDA a19
        CMP #$04
        BNE b579B
        LDA #$00
        STA a52
        JSR s5A9B
        LDA #$00
        STA a87
        LDX a0F
        LDA f7D00,X
        BNE b577A
        LDA #$05
        STA a19
        BNE b577A
b579B   JSR s5825
        JSR s5A9B
        LDA #$00
        STA a87
        BEQ b577A
        LDX a10
        JSR s5620
        JSR s5410
        JSR sB44D
        LDX a0F
        JSR s5B2E
        JSR s5A89
        BCS b57C3
        LDA #$00
        STA a87
        JMP j54FD

b57C3   JMP b5547

        LDX a10
        LDY a11
        LDA f7CA0,X
        STA f7CA0,Y
        LDY a0F
        LDA f7E20,Y
        SEC 
        SBC #$01
        BEQ b57E0
        STA f7E20,Y
        JMP b5547

b57E0   LDA f7D00,Y
        CMP #$07
        BEQ b57EB
        CMP #$0A
        BNE b5814
b57EB   TYA 
        ASL 
        TAX 
        LDA (p76,X)
        INC f76,X
        BNE b57F6
        INC f77,X
b57F6   STA a57FF
        AND #$7F
        STA f7E40,Y
a57FF   =*+$01
        LDA #$00
        BMI b5809
        LDA #$01
        STA f7E20,Y
        BNE b5814
b5809   LDA (p76,X)
        STA f7E20,Y
        INC f76,X
        BNE b5814
        INC f77,X
b5814   LDA f7D00,Y
        CLC 
        ADC #$05
        STA f7D00,Y
        LDA f78A0,Y
        STA aE3
        JMP b5547

s5825   LDX #$00
        LDA a35
        SEC 
        SBC a6F
        STA a5858
        LDA a36
        SBC a70
        STA a5860
        BPL b5839
        DEX 
b5839   STX a5868
        LDX #$00
        LDA a37
        SEC 
        SBC a71
        STA a5871
        LDA a38
        SBC a72
        STA a5879
        BPL b5850
        DEX 
b5850   STX a5881
        LDA f7B80,Y
        CLC 
a5858   =*+$01
        ADC #$00
        STA f7B80,Y
        LDA f7C20,Y
a5860   =*+$01
        ADC #$00
        STA f7C20,Y
        LDA f7D20,Y
a5868   =*+$01
        ADC #$00
        STA f7D20,Y
        LDA f7FA0,Y
        CLC 
a5871   =*+$01
        ADC #$00
        STA f7FA0,Y
        LDA f7C60,Y
a5879   =*+$01
        ADC #$00
        STA f7C60,Y
        LDA f7F60,Y
a5881   =*+$01
        ADC #$00
        STA f7F60,Y
        RTS 

s5886   LDX #$00
        LDA a35
        CLC 
        ADC a63
        STA a63
        PHP 
        LDA a36
        BPL b5895
        DEX 
b5895   STX a589F
        ADC a64
        STA a64
        LDA a65
a589F   =*+$01
        ADC #$00
        BMI b58AB
        CMP a78
        BCC b58B1
        SBC a79
        JMP b58B1

b58AB   CMP a77
        BCS b58B1
        ADC a79
b58B1   STA a65
        LDA #$18
        PLP 
        BCC b58BA
        LDA #$38
b58BA   STA a5FB7
        LDX #$00
        LDA a37
        CLC 
        ADC a66
        STA a66
        PHP 
        LDA a38
        BPL b58CC
        DEX 
b58CC   STX a58D6
        ADC a67
        STA a67
        LDA a68
a58D6   =*+$01
        ADC #$00
        BMI b58E2
        CMP a78
        BCC b58E8
        SBC a79
        JMP b58E8

b58E2   CMP a77
        BCS b58E8
        ADC a79
b58E8   STA a68
        LDA #$18
        PLP 
        BCC b58F1
        LDA #$38
b58F1   STA a5FD8
        LDA a68
        BMI b58FE
        CMP #$02
        BCS b5940
        BCC b5902
b58FE   CMP #$FF
        BNE b5940
b5902   LDA a65
        BMI b590C
        CMP #$02
        BCS b5940
        BCC b5910
b590C   CMP #$FF
        BNE b5940
b5910   LDA a58
        BNE b594B
        LDA #$04
        STA a7D08
        LDA #$08
        STA a58
        ORA a2D
        TAY 
        LDA #$AC
        STA f7CA0,Y
        LDA a64
        STA f7C20,Y
        LDA a65
        STA f7D20,Y
        LDA a67
        STA f7C60,Y
        LDA a68
        STA f7F60,Y
        LDA #$00
        STA a7C
        JMP b594B

b5940   LDA a58
        BEQ b594B
        LDA #$00
        STA a58
        STA a7D08
b594B   LDA a26
        AND #$0F
        JSR s5DAF
        JSR s5E92
        TXA 
        ORA #$10
        JSR s5DAF
        JSR s5E92
        JSR s5F11
        RTS 

        LDY a0F
        LDA f7E00,Y
        BPL b597D
        CMP #$FF
        BEQ b597D
        AND #$1F
        ORA a2C
        TAX 
        LDA #$FF
        STA f7E00,Y
        JSR s5620
        JMP j5985

b597D   LDX a10
        JSR s5620
        JSR s5410
j5985   JSR s5C7A
        LDY a11
        JSR sB44D
        LDX a0F
        LDA f7E60,X
        CMP #$E0
        BNE b599B
        LDA #$5F
        STA f7CA0,Y
b599B   DEC f7E60,X
        BNE b59AA
        LDA #$0B
        STA f7D00,X
        LDA #$7A
        STA f7CA0,Y
b59AA   LDA f7E00,X
        BMI b59B4
        LDA #$0A
        STA f7E00,X
b59B4   JSR s5B2E
        JSR s5A9B
        BCS b5A03
        LDX a0F
        LDA a7E
        BNE b59DB
        LDA a87
        BNE b59DB
        LDA a7A
        BEQ b59FE
        CMP #$60
        BCC b59D8
        CMP #$B8
        BCC b59FE
        CMP #$C0
        BCS b59FE
        BCC b59DB
b59D8   JSR sB4A4
b59DB   LDA f7E60,X
        CMP #$E0
        BCS b59FE
        LDA #$00
        STA f7E60,X
        STA a87
        LDA #$0B
        STA f7D00,X
        LDA #$72
        LDY a11
        STA f7CA0,Y
        LDX #$0E
        JSR s499A
        LDA #$5D
        STA aE3
b59FE   LDY a11
        JMP j54FD

b5A03   JMP b5547

        LDX a10
        JSR s5620
        JSR s5410
        JSR sB44D
        LDA f7F60,Y
        BNE b5A26
        LDA f7D20,Y
        BEQ b5A29
        CMP #$02
        BCS b5A26
        LDA f7C20,Y
        CMP #$50
        BCC b5A29
b5A26   JMP j5616

b5A29   LDX a0F
        LDA f7D20,X
        AND #$07
        BEQ b5A35
        DEC f7D20,X
b5A35   JMP j54FD

        LDX a10
        JSR s5620
        JSR s5410
        LDX a0F
        DEC f7E60,X
        BEQ b5A4A
        JMP j54FD

b5A4A   JMP j5616

        LDY a0F
        LDA f7E00,Y
        BPL b5A62
        AND #$1F
        ORA a2C
        STA f7E00,Y
        TAX 
        JSR s5620
        JMP j5A7B

b5A62   LDX a10
        JSR s5620
        JSR s5410
        LDX a0F
        LDA f7E60,X
        BEQ j5A7B
        DEC f7E60,X
        BNE j5A7B
        LDA #$E5
        STA f7CA0,Y
j5A7B   JSR sB44D
        JSR s5A89
        BCS b5A86
        JMP j54FD

b5A86   JMP b5547

s5A89   LDA #$00
        STA a7A
        LDA f7F60,Y
        BNE b5A99
        LDA f7D20,Y
        CMP #$02
        BCC b5A9A
b5A99   SEC 
b5A9A   RTS 

s5A9B   LDA #$00
        STA a7A
        LDA f7D20,Y
        BMI b5AAE
        CMP #$02
        BCC b5AB8
        CMP #$04
        BCC b5AB2
        BCS b5B17
b5AAE   CMP #$FD
        BCC b5B17
b5AB2   LDA f7F60,Y
        JMP j5B20

b5AB8   LSR 
        LDA f7C20,Y
        ROR 
        SEC 
        SBC #$06
        LSR 
        LSR 
        CMP #$28
        BCC b5ACD
        LDA f7F60,Y
        BEQ b5B15
        BNE j5B20
b5ACD   STA a5AEE
        LDA f7F60,Y
        BNE j5B20
        LDA f7C60,Y
        SEC 
        SBC #$25
        LSR 
        LSR 
        LSR 
        CMP #$19
        BCS b5B2C
        TAX 
        LDA f6EAD,X
        STA a5AF9
        LDA f6EDF,X
        CLC 
a5AEE   =*+$01
        ADC #$00
        STA a5AF8
        BCC b5AF7
        INC a5AF9
a5AF8   =*+$01
a5AF9   =*+$02
b5AF7   LDA pC000
        STA a7A
        TXA 
        LSR 
        TAX 
        LDA $0220,X
        STA a5B0E
        LDA a5AEE
        LSR 
        TAX 
        LDA $0200,X
a5B0E   =*+$01
        AND #$00
        BEQ b5B15
        LDA a74
        STA a87
b5B15   CLC 
        RTS 

b5B17   LDX a0F
        LDA #$00
        STA f7D00,X
        SEC 
        RTS 

j5B20   BMI b5B28
        CMP #$04
        BCC b5B2C
        BCS b5B17
b5B28   CMP #$FD
        BCC b5B17
b5B2C   SEC 
        RTS 

s5B2E   LDA a26
a5B31   =*+$01
        AND #$00
        STA a5B3C
        TXA 
        AND a5B31
        AND #$1F
a5B3C   =*+$01
        CMP #$00
        BNE b5B80
        LDA f7E80,X
        AND #$F8
        STA a86
        LDA f7D20,X
        AND #$F8
        CMP a86
        BEQ b5B66
        SEC 
        SBC a86
        BMI b5B5D
        LDA f7D20,X
        SEC 
        SBC #$08
        JMP j5B63

b5B5D   LDA f7D20,X
        CLC 
        ADC #$08
j5B63   STA f7D20,X
b5B66   LDA f7E80,X
        AND #$07
        STA a86
        LDA f7D20,X
        AND #$07
        CMP a86
        BEQ b5B80
        BCS b5B7D
        INC f7D20,X
        BNE b5B80
b5B7D   DEC f7D20,X
b5B80   RTS 

s5B81   STY a5BC2
        LDY a11
        LDA f7F60,Y
        BNE b5BB2
        LDA f7D20,Y
        CMP #$02
        BCS b5BB2
        ROR 
        LDA f7C20,Y
        ROR 
        CMP #$AC
        BCS b5BB2
        LSR 
        AND #$78
        STA a5BAA
        LDA f7C60,Y
        LSR 
        LSR 
        LSR 
        LSR 
        LSR 
a5BAA   =*+$01
        ORA #$00
        TAY 
        LDA f373D,Y
        JMP j5BC1

b5BB2   LDA f7D20,Y
        TAX 
        LDA f7F60,Y
        TAY 
        TXA 
        JSR sB17D
        LDA f201B,Y
a5BC2   =*+$01
j5BC1   LDY #$00
        RTS 

s5BC4   STY a5C05
        LDY a11
        LDA f7F60,Y
        BNE b5BF5
        LDA f7D20,Y
        CMP #$02
        BCS b5BF5
        ROR 
        LDA f7C20,Y
        ROR 
        CMP #$AC
        BCS b5BF5
        LSR 
        AND #$78
        STA a5BED
        LDA f7C60,Y
        LSR 
        LSR 
        LSR 
        LSR 
        LSR 
a5BED   =*+$01
        ORA #$00
        TAY 
        LDA f3795,Y
        JMP j5C04

b5BF5   LDA f7D20,Y
        TAX 
        LDA f7F60,Y
        TAY 
        TXA 
        JSR sB17D
        LDA f201B,Y
a5C05   =*+$01
j5C04   LDY #$00
        RTS 

s5C07   STY a5C48
        LDY a11
        LDA f7F60,Y
        BNE b5C38
        LDA f7D20,Y
        CMP #$02
        BCS b5C38
        ROR 
        LDA f7C20,Y
        ROR 
        CMP #$AC
        BCS b5C38
        LSR 
        AND #$78
        STA a5C30
        LDA f7C60,Y
        LSR 
        LSR 
        LSR 
        LSR 
        LSR 
a5C30   =*+$01
        ORA #$00
        TAY 
        LDA f37ED,Y
        JMP j5C47

b5C38   LDA f7D20,Y
        TAX 
        LDA f7F60,Y
        TAY 
        TXA 
        JSR sB17D
        LDA f201B,Y
a5C48   =*+$01
j5C47   LDY #$00
        RTS 

s5C4A   LDX #<p3647
        LDY #>p3647
        STX a1A
        STY a1B
        LDX #$00
b5C54   LDA a1A
        STA f7900,X
        LDA a1B
        STA f7A00,X
        LDY #$00
b5C60   LDA (p1A),Y
        CMP #$30
        BEQ b5C6B
        INY 
        BPL b5C60
        BMI b5C79
b5C6B   TYA 
        ADC a1A
        STA a1A
        BCC b5C74
        INC a1B
b5C74   INX 
        CPX #$11
        BCC b5C54
b5C79   RTS 

s5C7A   LDY a0F
        LDA f7E00,Y
        BMI b5CE8
        TAX 
        LDA $D41B    ;Oscillator 3 Output
        CMP f3845,X
        BCC b5CBD
        BEQ b5CBD
        CMP f3865,X
        BCC b5C93
        BNE b5C96
b5C93   JMP j5D5A

b5C96   CMP f3885,X
        BCC b5CBE
        BEQ b5CBE
        CMP f38A5,X
        BCC b5CD2
        BEQ b5CD2
        CMP f38C5,X
        BCC b5CC8
        BEQ b5CC8
        CMP f38E5,X
        BCC b5CDC
        BEQ b5CDC
        LDA $D41B    ;Oscillator 3 Output
        AND #$F8
        ORA f7860,Y
        STA f7E80,Y
b5CBD   RTS 

b5CBE   JSR s5BC4
        ORA f7860,Y
        STA f7E80,Y
        RTS 

b5CC8   JSR s5B81
        ORA f7860,Y
        STA f7E80,Y
        RTS 

b5CD2   JSR s5C07
        ORA f7860,Y
        STA f7E80,Y
        RTS 

b5CDC   JSR s5B81
        EOR #$80
        ORA f7860,Y
        STA f7E80,Y
        RTS 

b5CE8   TYA 
        ASL 
        TAX 
        LDA f7E20,Y
        BNE b5D1A
        LDA (p76,X)
        CMP #$30
        BEQ b5D3D
        INC f76,X
        BNE b5CFC
        INC f77,X
b5CFC   STA a5D05
        AND #$7F
        STA f7E40,Y
a5D05   =*+$01
        LDA #$00
        BMI b5D0F
        LDA #$01
        STA f7E20,Y
        BNE b5D1A
b5D0F   LDA (p76,X)
        STA f7E20,Y
        INC f76,X
        BNE b5D1A
        INC f77,X
b5D1A   LDA f7E20,Y
        SEC 
        SBC #$01
        STA f7E20,Y
        LDA f7E40,Y
        BEQ b5D3C
        BIT a6E9A
        BNE b5D63
        BIT a6E99
        BNE b5D6D
        BIT a6E98
        BNE b5D77
        BIT a6E97
        BNE b5D8D
b5D3C   RTS 

b5D3D   LDX f7BE0,Y
        LDA f2119,X
        AND #$1F
        CMP #$12
        BCC b5D56
        CMP #$15
        BCS b5D56
        LDX $D41B    ;Oscillator 3 Output
        CPX aAA
        BCS b5D56
        LDA #$17
b5D56   STA f7E00,Y
        RTS 

j5D5A   LDA f7E80,Y
        AND #$F8
        STA f7E80,Y
        RTS 

b5D63   LDA f7E80,Y
        SEC 
        SBC #$08
        STA f7E80,Y
        RTS 

b5D6D   LDA f7E80,Y
        CLC 
        ADC #$08
        STA f7E80,Y
        RTS 

b5D77   BIT a6E97
        BNE j5D5A
        LDA f7E80,Y
        AND #$07
        BEQ b5D3C
        LDA f7E80,Y
        SEC 
        SBC #$01
        STA f7E80,Y
        RTS 

b5D8D   LDA f7E80,Y
        AND #$07
        CMP f7860,Y
        BEQ b5D3C
        BCS b5DA3
        LDA f7E80,Y
        CLC 
        ADC #$01
        STA f7E80,Y
        RTS 

b5DA3   LDA f7E80,Y
        AND #$F8
        ORA f7860,Y
        STA f7E80,Y
        RTS 

s5DAF   TAX 
        LDA a26
        AND #$70
        BNE b5DDB
        LDA f7EC0,X
        BEQ b5DDB
        LDY f7F60,X
        BEQ b5DC8
        TYA 
        ORA #$80
        STA a8C
        LDA f7EC0,X
b5DC8   SEC 
        SBC a6A
        STA f7EC0,X
        BNE b5DDB
        TYA 
        ORA a2D
        TAY 
        LDA #$A2
        STA f7CA0,Y
        INC a7D
b5DDB   LDA f7EE0,X
        CLC 
        ADC a64
        LDA f7F00,X
        ADC a65
        STA a1C
        BMI b5DFE
        CMP #$02
        BCC b5E12
        LDA f7F20,X
        CLC 
        ADC a67
        LDA f7F40,X
        ADC a68
        STA a1D
        JMP j5E2B

b5DFE   CMP #$FF
        BCS b5E12
        LDA f7F20,X
        CLC 
        ADC a67
        LDA f7F40,X
        ADC a68
        STA a1D
        JMP j5E2B

b5E12   LDA f7F20,X
        CLC 
        ADC a67
        LDA f7F40,X
        ADC a68
        STA a1D
        BMI b5E27
        CMP #$02
        BCC b5E3A
        BCS j5E2B
b5E27   CMP #$FF
        BCS b5E3A
j5E2B   LDA f7F60,X
        BEQ b5E39
        TAY 
        LDA #$00
        STA f7D00,Y
        STA f7F60,X
b5E39   RTS 

b5E3A   LDY f7F60,X
        BNE b5E39
        LDY #$08
        LDA f7D00,Y
        BEQ b5E47
        INY 
b5E47   LDA #$04
        STA f7D00,Y
        TXA 
        STA f7E20,Y
        TYA 
        STA f7F60,X
        ORA a2D
        TAY 
        LDA f7EC0,X
        BEQ b5E66
        LSR 
        LSR 
        LSR 
        LSR 
        LSR 
        CLC 
        ADC #$81
        BNE b5E68
b5E66   LDA #$A8
b5E68   STA f7CA0,Y
        LDA f7EE0,X
        CLC 
        ADC a64
        STA f7C20,Y
        LDA f7F00,X
        ADC a65
        STA f7D20,Y
        LDA f7F20,X
        CLC 
        ADC a67
        STA f7C60,Y
        LDA f7F40,X
        ADC a68
        STA f7F60,Y
        LDA #$00
        STA a7C
        RTS 

s5E92   LDA a26
        BIT a6E99
        BNE b5F10
        AND #$0F
        CMP #$0F
        BNE b5ED5
        LDA a65
        CLC 
        ADC #$10
        CMP #$20
        BCS b5ED5
        STA a5EBA
        AND #$07
        EOR #$FF
        SEC 
        ADC #$07
        TAY 
        LDA f6E9D,Y
        STA a5ED1
a5EBA   =*+$01
        LDA #$00
        ASL 
        AND #$F0
        STA a5ECB
        LDA a68
        CLC 
        ADC #$08
        CMP #$10
        BCS b5ED5
a5ECB   =*+$01
        ORA #$00
        TAY 
        LDA fBB00,Y
a5ED1   =*+$01
        AND #$FF
        STA fBB00,Y
b5ED5   LDA f7EC0,X
        BEQ b5F10
        LDA a1C
        CLC 
        ADC #$10
        CMP #$20
        BCS b5F10
        STA a5EF5
        AND #$07
        EOR #$FF
        SEC 
        ADC #$07
        TAY 
        LDA f6E9D,Y
        STA a5F0C
a5EF5   =*+$01
        LDA #$00
        ASL 
        AND #$F0
        STA a5F06
        LDA a1D
        CLC 
        ADC #$08
        CMP #$10
        BCS b5F10
a5F06   =*+$01
        ORA #$00
        TAY 
        LDA fBB00,Y
a5F0C   =*+$01
        AND #$FF
        STA fBB00,Y
b5F10   RTS 

s5F11   LDA a26
        BIT a6E99
        BEQ b5F4B
        AND #$0F
        TAY 
        LDA fBB00,Y
        STA fCE00,Y
        LDA fBB10,Y
        STA fCE10,Y
        LDA fBB20,Y
        STA fCE20,Y
        LDA fBB30,Y
        STA fCE30,Y
        LDA f78C0,Y
        STA fBB00,Y
        LDA f78D0,Y
        STA fBB10,Y
        LDA f78E0,Y
        STA fBB20,Y
        LDA f78F0,Y
        STA fBB30,Y
b5F4B   RTS 

s5F4C   LDA #$00
        STA a7D
        LDX #$1F
b5F52   LDY f7EC0,X
        LDA f7D80,X
        STA f7EE0,X
        LDA f7DA0,X
        SEC 
        SBC #$50
        BPL b5F6B
        CMP a77
        BCS b5F71
        LDY #$00
        BEQ b5F71
b5F6B   CMP a78
        BCC b5F71
        LDY #$00
b5F71   STA f7F00,X
        LDA f7DC0,X
        STA f7F20,X
        LDA f7DE0,X
        SEC 
        SBC #$36
        BPL b5F8A
        CMP a77
        BCS b5F90
        LDY #$00
        BEQ b5F90
b5F8A   CMP a78
        BCC b5F90
        LDY #$00
b5F90   STA f7F40,X
        LDA #$00
        STA f7F60,X
        TYA 
        STA f7EC0,X
        BNE b5FA0
        INC a7D
b5FA0   LDA f7B40,X
        STA f7EA0,X
        DEX 
        BPL b5F52
        LDA #$00
        STA a58
        RTS 

        LDX a10
        LDY a11
        JSR s5410
        LDA a36
a5FB7   CLC 
        BMI b5FC8
        ADC f7C20,X
        STA f7C20,Y
        LDA f7D20,X
        ADC #$00
        JMP j5FD3

b5FC8   ADC f7C20,X
        STA f7C20,Y
        LDA f7D20,X
        ADC #$FF
j5FD3   STA f7D20,Y
        LDA a38
a5FD8   CLC 
        BMI b5FE9
        ADC f7C60,X
        STA f7C60,Y
        LDA f7F60,X
        ADC #$00
        JMP j5FF4

b5FE9   ADC f7C60,X
        STA f7C60,Y
        LDA f7F60,X
        ADC #$FF
j5FF4   STA f7F60,Y
        JSR s6127
        BCC b5FFF
        JMP j6090

b5FFF   LDA #$00
        STA a87
        LDA a58
        BNE b601B
        LDA a1E
        CMP #$B8
        BCC b6011
        CMP #$C0
        BCC b6037
b6011   LDA a1F
        CMP #$B8
        BCC b601B
        CMP #$C0
        BCC b6037
b601B   LDA a7A
        BEQ b606B
        CMP #$60
        BCC b609B
        CMP #$E0
        BCS b609B
        LDX #$00
        STX a7C
        LDX a58
        BNE b608D
        CMP #$B8
        BCC b608D
        CMP #$C0
        BCS b608D
b6037   LDX a0F
        LDA f7E20,X
        TAX 
        LDA a6A
        BPL b6044
        JMP j60EB

b6044   LDA f7EC0,X
        BEQ b608D
        LDA a0F
        STA a8C
        LDA f7EC0,X
        SEC 
        SBC a8F
        STA f7EC0,X
        STA a6081
        BEQ b6068
        BCC b6068
        LDA a55
        CMP #$FF
        BEQ b608D
        INC a55
        JMP j6093

b6068   JMP j610B

b606B   LDX #$00
        STX a7C
        LDX a58
        BNE b608D
        LDX a0F
        LDA f7E20,X
        TAX 
        LDA f7EC0,X
        BEQ b608D
        BNE b6082
a6081   =*+$01
j6080   LDA #$00
b6082   LSR 
        LSR 
        LSR 
        LSR 
        LSR 
        CLC 
        ADC #$81
        STA f7CA0,Y
b608D   JMP j54FD

j6090   JMP b5547

j6093   LDX #$1F
        JSR s499A
        JMP j6080

b609B   LDA a7C
        BNE b608D
        STY a7C
        LDA #$10
        STA aE3
        LDA a69
        LSR 
        LSR 
        JSR s61A4
        LDA a2F
        BEQ b60BC
        BMI b60C2
b60B2   LDA #<$FFA0
        STA a2E
        LDA #>$FFA0
        STA a2F
        BNE b60CA
b60BC   LDA a2E
        BEQ b60CA
        BNE b60B2
b60C2   LDA #<p60
        STA a2E
        LDA #>p60
        STA a2F
b60CA   LDA a34
        BEQ b60DA
        BMI b60E0
b60D0   LDA #<$FFA0
        STA a33
        LDA #>$FFA0
        STA a34
        BNE b608D
b60DA   LDA a33
        BEQ b608D
        BNE b60D0
b60E0   LDA #<p60
        STA a33
        LDA #>p60
        STA a34
        JMP b608D

j60EB   LDA f7EC0,X
        BEQ b608D
        LDA a0F
        STA a8C
        LDA f7EC0,X
        CLC 
        ADC a8F
        STA f7EC0,X
        STA a6081
        BCS j610B
        LDA a55
        BEQ b608D
        DEC a55
        JMP j6093

j610B   LDA #$00
        STA f7EC0,X
        LDA #$A2
        STA f7CA0,Y
        INC a7D
        INC aA5
        LDX #$0A
        JSR s499A
        LDA #$6E
        STA aE3
        STA aE4
        JMP b608D

s6127   LDA #$00
        STA a7A
        STA a1E
        STA a1F
        LDA f7D20,Y
        CMP #$02
        BCS b61A2
        LSR 
        LDA f7C20,Y
        ROR 
        SEC 
        SBC #$06
        LSR 
        LSR 
        CMP #$28
        BCC b614B
        LDA f7F60,Y
        BEQ b619E
        BNE b61A2
b614B   STA a616D
        LDA f7F60,Y
        BNE b61A2
        LDA f7C60,Y
        SEC 
        SBC #$2D
        LSR 
        LSR 
        LSR 
        CMP #$17
        BCS b619E
        TAX 
        LDY #$00
        LDA f6EAD,X
        STA a13
        LDA f6EDF,X
        CLC 
a616D   =*+$01
        ADC #$00
        STA a12
        BCC b6174
        INC a13
b6174   LDA (p12),Y
        STA a1E
        LDY #$28
        LDA (p12),Y
        STA a7A
        LDY #$50
        LDA (p12),Y
        STA a1F
        LDA $0221,X
        LDX a616D
        AND $0200,X
        BEQ b619E
        LDX #$FF
b6191   INX 
        LSR 
        BCC b6191
        LDA #$00
        STA f7D00,X
        LDA a74
        STA a87
b619E   LDY a11
        CLC 
        RTS 

b61A2   SEC 
        RTS 

s61A4   STA a61B1
        CMP a75
        BEQ b61B0
        BCS b61BB
        LDA a75
        SEC 
a61B1   =*+$01
b61B0   SBC #$00
        STA a75
        LDA #$0F
        STA aE4
        LDA #$00
        RTS 

b61BB   SEC 
        SBC a75
        STA a61D2
        SBC #$03
        BPL b61C7
        LDA #$00
b61C7   STA a61E0
        LDA #$00
        STA a75
        LDA a54
        SEC 
a61D2   =*+$01
        SBC #$00
        BCS b61D9
        LDA #$00
        STA a53
b61D9   STA a54
        LDA #$28
        STA aE4
a61E0   =*+$01
        LDA #$00
        RTS 

s61E2   LDX #$19
        LDY #$00
b61E6   LDA f7B20,X
        BEQ b61F7
        STA a61F6
        LDA f7B00,X
        STA a61F5
a61F5   =*+$01
a61F6   =*+$02
        STY pC000
b61F7   DEX 
        BPL b61E6
        LDX #$0B
b61FC   LDA $0290,X
a6200   =*+$01
a6201   =*+$02
        STA pC000,X
        DEX 
        BPL b61FC
        LDA a2E
        ASL 
        STA a35
        LDA a2F
        ROL 
        STA a36
        LDA a35
        CLC 
        ADC a2E
        STA a1C
        LDA a36
        ADC a2F
        STA a1D
        LDA a33
        ASL 
        STA a37
        LDA a34
        ROL 
        STA a38
        LDA a37
        CLC 
        ADC a33
        STA a1A
        LDA a38
        ADC a34
        STA a1B
        LDX #$06
j6235   LDA f7D93,X
        CLC 
        ADC a1C
        STA f7D93,X
        LDA f7DB3,X
        ADC a1D
        STA f7DB3,X
        CMP #$D0
        BCC b624F
        ADC #$9F
        JMP j6255

b624F   CMP #$A0
        BCC b6268
        SBC #$A0
j6255   STA f7DB3,X
        LDA $D41B    ;Oscillator 3 Output
        LSR 
        CMP #$68
        BCC b6262
        SBC #$40
b6262   STA f7DF3,X
        LDA f7DB3,X
b6268   LSR 
        ROR a0F
        LSR 
        ROR a0F
        STA a10
        LDA f7DD3,X
        CLC 
        ADC a1A
        STA f7DD3,X
        LDA f7DF3,X
        ADC a1B
        STA f7DF3,X
        BPL b6289
        CLC 
        ADC #$68
        JMP j628F

b6289   CMP #$68
        BCC b62A1
        SBC #$68
j628F   STA f7DF3,X
        LDA $D41B    ;Oscillator 3 Output
        CMP #$A0
        BCC b629B
        SBC #$80
b629B   STA f7DB3,X
        LDA f7DF3,X
b62A1   STA a11
        LSR 
        LSR 
        TAY 
        LDA f6EDF,Y
        CLC 
        ADC a10
        STA a14
        STA f7B13,X
        LDA f6EAD,Y
        ADC #$00
        STA a15
        STA f7B33,X
        LDY #$00
        LDA (p14),Y
        BNE b62D5
        LDA a11
        ASL a0F
        ROL 
        ASL a0F
        ROL 
        AND #$0F
        ORA #$A0
        STA (p14),Y
        DEX 
        BEQ b62E0
        JMP j6235

b62D5   LDA #$00
        STA f7B33,X
        DEX 
        BEQ b62E0
        JMP j6235

b62E0   LDX #$08
j62E2   LDA f7D8B,X
        CLC 
        ADC a35
        STA f7D8B,X
        LDA f7DAB,X
        ADC a36
        STA f7DAB,X
        CMP #$D0
        BCC b62FC
        ADC #$9F
        JMP j6302

b62FC   CMP #$A0
        BCC b6315
        SBC #$A0
j6302   STA f7DAB,X
        LDA $D41B    ;Oscillator 3 Output
        LSR 
        CMP #$68
        BCC b630F
        SBC #$40
b630F   STA f7DEB,X
        LDA f7DAB,X
b6315   LSR 
        ROR a0F
        LSR 
        ROR a0F
        STA a10
        LDA f7DCB,X
        CLC 
        ADC a37
        STA f7DCB,X
        LDA f7DEB,X
        ADC a38
        STA f7DEB,X
        BPL b6336
        CLC 
        ADC #$68
        JMP j633C

b6336   CMP #$68
        BCC b634E
        SBC #$68
j633C   STA f7DEB,X
        LDA $D41B    ;Oscillator 3 Output
        CMP #$A0
        BCC b6348
        SBC #$80
b6348   STA f7DAB,X
        LDA f7DEB,X
b634E   STA a11
        LSR 
        LSR 
        TAY 
        LDA f6EDF,Y
        CLC 
        ADC a10
        STA a14
        STA f7B0B,X
        LDA f6EAD,Y
        ADC #$00
        STA a15
        STA f7B2B,X
        LDY #$00
        LDA (p14),Y
        BNE b6382
        LDA a11
        ROL a0F
        ROL 
        ROL a0F
        ROL 
        AND #$0F
        ORA #$90
        STA (p14),Y
        DEX 
        BEQ b638D
        JMP j62E2

b6382   LDA #$00
        STA f7B2B,X
        DEX 
        BEQ b638D
        JMP j62E2

b638D   ASL a35
        ROL a36
        ASL a35
        ROL a36
        ASL a37
        ROL a38
        ASL a37
        ROL a38
        LDX #$0B
j639F   LDA f7D80,X
        CLC 
        ADC a2E
        STA f7D80,X
        LDA f7DA0,X
        ADC a2F
        STA f7DA0,X
        CMP #$D0
        BCC b63B9
        ADC #$9F
        JMP j63BF

b63B9   CMP #$A0
        BCC b63D2
        SBC #$A0
j63BF   STA f7DA0,X
        LDA $D41B    ;Oscillator 3 Output
        LSR 
        CMP #$68
        BCC b63CC
        SBC #$40
b63CC   STA f7DE0,X
        LDA f7DA0,X
b63D2   LSR 
        ROR a0F
        LSR 
        ROR a0F
        STA a10
        LDA f7DC0,X
        CLC 
        ADC a33
        STA f7DC0,X
        LDA f7DE0,X
        ADC a34
        STA f7DE0,X
        BPL b63F3
        CLC 
        ADC #$68
        JMP j63F9

b63F3   CMP #$68
        BCC b640B
        SBC #$68
j63F9   STA f7DE0,X
        LDA $D41B    ;Oscillator 3 Output
        CMP #$A0
        BCC b6405
        SBC #$80
b6405   STA f7DA0,X
        LDA f7DE0,X
b640B   STA a11
        LSR 
        LSR 
        TAY 
        LDA f6EDF,Y
        CLC 
        ADC a10
        STA a14
        STA f7B00,X
        LDA f6EAD,Y
        ADC #$00
        STA a15
        STA f7B20,X
        LDY #$00
        LDA (p14),Y
        BNE b643F
        LDA a11
        ROL a0F
        ROL 
        ROL a0F
        ROL 
        AND #$0F
        ORA #$80
        STA (p14),Y
        DEX 
        BMI b644A
        JMP j639F

b643F   LDA #$00
        STA f7B20,X
        DEX 
        BMI b644A
        JMP j639F

b644A   RTS 

s644B   LDX #$1F
a644E   =*+$01
b644D   LDA p0900
        INC a644E
        EOR $D41B    ;Oscillator 3 Output
        CMP #$A0
        BCC b645C
        SBC #$80
b645C   STA f7DA0,X
        LDA #$00
        STA f7B20,X
a6465   =*+$01
        LDA p0900
        INC a6465
        EOR $D41B    ;Oscillator 3 Output
        LSR 
        CMP #$68
        BCC b6474
        SBC #$40
b6474   STA f7DE0,X
        DEX 
        BPL b644D
        LDX #$0F
        LDA #$00
b647E   STA $0290,X
        DEX 
        BPL b647E
        STA a30
        RTS 

s6487   PHA 
        ROR 
        ORA #$AA
        STA a0F
        PLA 
        ROL 
        ORA #$55
        AND a0F
        EOR #$FF
        RTS 

s6496   LDX a03
        LDA a2500,X
        BPL b64B1
a649E   =*+$01
        LDA #$FE
        ROR 
        ROR a649E
        ROR 
        ROR a649E
a64A8   =*+$01
        LDA #$AA
        ROR 
        ROR a64A8
        ROR 
        ROR a64A8
b64B1   LDA a649E
        LDX #$06
b64B6   STA $F000,X
        STA $F008,X
        STA $F010,X
        STA $F018,X
        STA $F020,X
        STA $F028,X
        STA $F030,X
        STA $F038,X
        STA $F081,X
        STA $F089,X
        STA $F091,X
        STA $F099,X
        STA $F0A1,X
        STA $F0A9,X
        STA $F0B1,X
        STA $F0B9,X
        DEX 
        BPL b64B6
        LDA a64A8
        STA $F007
        STA $F00F
        STA $F017
        STA $F01F
        STA $F027
        STA $F02F
        STA $F037
        STA $F03F
        STA $F080
        STA $F088
        STA $F090
        STA $F098
        STA $F0A0
        STA $F0A8
        STA $F0B0
        STA $F0B8
        LDX a03
        LDA a2500,X
        AND #$40
        BEQ b653B
        LDX #$1F
b6527   LDA f2840,X
        ROR 
        ROR f2800,X
        ROR f2840,X
        ROR 
        ROR f2800,X
        ROR f2840,X
        DEX 
        BPL b6527
b653B   LDX #$1F
b653D   LDA f2800,X
        JSR s6487
        ORA $F000,X
        AND f2800,X
        STA $F000,X
        LDA f2840,X
        JSR s6487
        ORA $F020,X
        AND f2840,X
        STA $F020,X
        DEX 
        BPL b653D
        LDX #$3F
        LDY #$7F
b6562   LDA $F000,X
        STA $F000,Y
        DEY 
        DEX 
        BPL b6562
        LDX #$1F
b656E   LDA f2940,X
        ROR 
        ROR f2880,X
        ROR f28C0,X
        ROR f2900,X
        ROR f2940,X
        ROR 
        ROR f2880,X
        ROR f28C0,X
        ROR f2900,X
        ROR f2940,X
        DEX 
        BPL b656E
        LDX #$1F
b6590   LDA f2880,X
        JSR s6487
        ORA $F000,X
        AND f2880,X
        STA $F000,X
        LDA f28C0,X
        JSR s6487
        ORA $F020,X
        AND f28C0,X
        STA $F020,X
        LDA f2900,X
        JSR s6487
        ORA $F040,X
        AND f2900,X
        STA $F040,X
        LDA f2940,X
        JSR s6487
        ORA $F060,X
        AND f2940,X
        STA $F060,X
        DEX 
        BPL b6590
        RTS 

s65D0   LDA #$00
        STA a1C
        LDA a03
        AND #$0F
        ORA #$E0
        STA a1D
        LDY #$7F
b65DE   LDA $F000,Y
        STA (p1C),Y
        DEY 
        BPL b65DE
        RTS 

s65E7   LDX a03
        LDA a2500,X
        AND #$40
        BEQ b6606
        LDX #$1F
b65F2   LDA f2860,X
        ROR 
        ROR f2820,X
        ROR f2860,X
        ROR 
        ROR f2820,X
        ROR f2860,X
        DEX 
        BPL b65F2
b6606   LDX #$1F
b6608   LDA f2820,X
        JSR s6487
        ORA $F080,X
        AND f2820,X
        STA $F080,X
        LDA f2860,X
        JSR s6487
        ORA $F0A0,X
        AND f2860,X
        STA $F0A0,X
        DEX 
        BPL b6608
        LDX #$3F
        LDY #$7F
b662D   LDA $F080,X
        STA $F080,Y
        DEY 
        DEX 
        BPL b662D
        LDX #$1F
b6639   LDA f2960,X
        ROR 
        ROR f28A0,X
        ROR f28E0,X
        ROR f2920,X
        ROR f2960,X
        ROR 
        ROR f28A0,X
        ROR f28E0,X
        ROR f2920,X
        ROR f2960,X
        DEX 
        BPL b6639
        LDX #$1F
b665B   LDA f28A0,X
        JSR s6487
        ORA $F080,X
        AND f28A0,X
        STA $F080,X
        LDA f28E0,X
        JSR s6487
        ORA $F0A0,X
        AND f28E0,X
        STA $F0A0,X
        LDA f2920,X
        JSR s6487
        ORA $F0C0,X
        AND f2920,X
        STA $F0C0,X
        LDA f2960,X
        JSR s6487
        ORA $F0E0,X
        AND f2960,X
        STA $F0E0,X
        DEX 
        BPL b665B
        RTS 

s669B   LDA #$80
        STA a1C
        LDA a03
        AND #$0F
        ORA #$E0
        STA a1D
        LDY #$7F
b66A9   LDA $F080,Y
        STA (p1C),Y
        DEY 
        BPL b66A9
        RTS 

s66B2   LDY #$27
b66B4   LDX #$03
b66B6   LDA f6EE3,X
        STA a14
        LDA f6EB1,X
        STA a15
        TYA 
        AND #$03
        STY a11
        TAY 
        TXA 
        CLC 
        ADC a2A00,Y
        STA a0F
        LDY a11
        LDA (p14),Y
        BNE b66D7
        LDA a0F
        STA (p14),Y
b66D7   LDA a6EF2,X
        STA a14
        LDA a6EC0,X
        STA a15
        TYA 
        AND #$03
        STY a11
        TAY 
        TXA 
        CLC 
        ADC f2A04,Y
        STA a0F
        LDY a11
        LDA (p14),Y
        BNE b66F8
        LDA a0F
        STA (p14),Y
b66F8   DEX 
        BPL b66B6
        DEY 
        BPL b66B4
        LDA #$6A
        LDX #$4F
b6702   STA fC398,X
        DEX 
        BPL b6702
        RTS 

s6709   LDA a2E
        CLC 
        ADC a03
        STA a03
        LSR 
        LSR 
        LSR 
        LSR 
        ORA #$E0
        STA a6743
        STA a674C
        STA a6755
        STA a675E
        STA a676D
        STA a6773
        LDA a09
        BEQ b6769
        CLC 
        ADC #$80
        STA a6745
        STA a674E
        STA a6757
        STA a6760
        LDX #$3F
b673D   TXA 
        AND #$07
        TAY 
a6743   =*+$02
        LDA $E000,X
a6745   =*+$01
        ORA f2980,Y
        STA fCE00,X
a674C   =*+$02
        LDA $E040,X
a674E   =*+$01
        ORA f2980,Y
        STA fCE40,X
a6755   =*+$02
        LDA $E080,X
a6757   =*+$01
        ORA f2980,Y
        STA fCE80,X
a675E   =*+$02
        LDA $E0C0,X
a6760   =*+$01
        ORA f2980,Y
        STA fCEC0,X
        DEX 
        BPL b673D
        RTS 

b6769   LDX #$7F
a676D   =*+$02
b676B   LDA $E000,X
        STA fCE00,X
a6773   =*+$02
        LDA $E080,X
        STA fCE80,X
        DEX 
        BPL b676B
        RTS 

s677B   LDX #$00
        LDY a2D
b677F   LDA f2CE1,X
        STA f7CA0,Y
        LDA f2CD0,X
        STA f7C60,Y
        LDA f2CBF,X
        CLC 
a6790   =*+$01
        ADC #$40
        STA f7C20,Y
        LDA #$00
        SBC #$00
        STA f7D20,Y
        LDA $02A6
        BNE b67A6
        LDA f2CF2,X
        JMP j67A8

b67A6   LDA #$02
j67A8   STA f7D00,X
        STA f7B80,Y
        INY 
        INX 
        CPX #$11
        BCC b677F
        LDA #$11
        STA a0C
        LDA #$01
        STA $D025    ;Sprite Multi-Color Register 0
        LDA #$05
        STA $D026    ;Sprite Multi-Color Register 1
        RTS 

s67C3   LDA a26
        AND #$1C
        LSR 
        LSR 
        TAY 
        LDA f2A08,Y
        STA a2568
        RTS 

s67D1   LDX #$1F
        LDY #$00
b67D5   LDA f7B20,X
        BEQ b67E6
        STA a67E5
        LDA f7B00,X
        STA a67E4
a67E4   =*+$01
a67E5   =*+$02
        STY pC000
b67E6   DEX 
        BPL b67D5
        LDX #$1F
j67EB   LDA f7B80,X
        BEQ b67F6
        DEC f7B80,X
        JMP j686C

b67F6   LDA a6A
        BEQ b67FF
        LDA f7EC0,X
        BEQ j686C
b67FF   LDY f7B40,X
        LDA f2600,Y
        CLC 
        ADC f7D80,X
        STA f7D80,X
        LDA f2700,Y
        ADC f7DA0,X
        STA f7DA0,X
        CMP #$A0
        BCS b6872
        LSR 
        ROR a0F
        LSR 
        ROR a0F
        STA a10
        TYA 
        SEC 
        SBC #$40
        TAY 
        LDA f2600,Y
        CLC 
        ADC f7DC0,X
        STA f7DC0,X
        LDA f2700,Y
        ADC f7DE0,X
        STA f7DE0,X
        CMP #$68
        BCS b6872
        STA a11
        LSR 
        LSR 
        TAY 
        LDA f6EDF,Y
        CLC 
        ADC a10
        STA a14
        STA f7B00,X
        LDA f6EAD,Y
        ADC #$00
        STA a15
        STA f7B20,X
        LDY #$00
        LDA (p14),Y
        BNE b6877
        LDA a11
        ASL a0F
        ROL 
        ASL a0F
        ROL 
        AND #$0F
        ORA f7B60,X
        STA (p14),Y
j686C   DEX 
        BMI b6882
        JMP j67EB

b6872   LDA #$00
        STA f7B40,X
b6877   LDA #$00
        STA f7B20,X
        DEX 
        BMI b6882
        JMP j67EB

b6882   RTS 

s6883   STA a69
        AND #$07
        TAY 
        LDA #$FB
        LDX a6A
        BEQ b6890
        LDA #$F9
b6890   STA a68F1
        AND #$02
        LSR 
        ADC #$01
        STA a68F4
        LDX #$1F
        LDA #$80
        STA a68DA
        LDA f2520,Y
        STA a0F
        LDA f2538,Y
        STA a10
b68AC   LDA f7EC0,X
        BEQ b68BB
a68B2   =*+$01
        LDA #$50
        STA f7DA0,X
a68B7   =*+$01
        LDA #$36
        STA f7DE0,X
b68BB   LDA #$A0
        STA f7B60,X
        LDA #$00
        STA f7D80,X
        STA f7DC0,X
        LDA f2530,Y
        BEQ b68D9
        LDA a6A
        BEQ b68F7
        LDA a0F
        AND #$F8
        ORA #$01
        BNE b68F9
a68DA   =*+$01
b68D9   LDA #$A0
        CLC 
        ADC #$10
        CMP #$B0
        BCC b68E4
        LDA #$80
b68E4   STA a68DA
        STA f7B60,X
        LDA f35CE,X
        CLC 
a68EF   =*+$01
        ADC #$00
a68F1   =*+$01
        AND #$FB
        CLC 
a68F4   =*+$01
        ADC #$02
        BCC b68F9
b68F7   LDA a0F
b68F9   STA f7B40,X
        CLC 
        ADC f2530,Y
        STA a0F
        LDA a10
        STA f7B80,X
        CLC 
        ADC f2548,Y
        STA a10
        DEX 
        BMI b6921
        CPX #$0F
        BNE b68AC
        LDA f2528,Y
        STA a0F
        LDA f2540,Y
        STA a10
        JMP b68AC

b6921   RTS 

s6922   LDX #$9F
b6924   LDY pC000,X
        BEQ b6935
        CPY #$6A
        BEQ b6935
        CPY #$80
        BCC b6938
        CPY #$B0
        BCS b6938
b6935   STA pC000,X
b6938   DEX 
        BNE b6924
        STA pC000
        LDX #$0C
b6940   STA pC05E,X
        DEX 
        BPL b6940
        RTS 

s6947   LDX #$07
        LDY a2D
b694B   LDA #$01
        STA f7D00,X
        LDA #$00
        STA f7D20,Y
        STA f7F60,Y
        LDA #$AD
        STA f7C20,Y
        LDA #$92
        STA f7C60,Y
        TXA 
        CLC 
        ADC #$10
        STA f7CA0,Y
        INY 
        DEX 
        BPL b694B
        LDA $D41B    ;Oscillator 3 Output
        AND #$38
        ORA #$07
        TAY 
        LDX #$07
b6977   LDA f29C0,Y
        STA f2510,X
        DEY 
        DEX 
        BPL b6977
        LDA a6A
        BEQ b698A
        LDA #$08
        STA a0C
        RTS 

b698A   LDA #$10
        STA a0C
        LDX #$08
        LDA a2D
        ORA #$08
        TAY 
b6995   LDA #$00
        STA f7D20,Y
        STA f7F60,Y
        LDA #$C9
        STA f7CA0,Y
        LDA #$11
        STA f7D00,X
        LDA f392F,X
        STA f7C20,Y
        LDA f3937,X
        STA f7C60,Y
        INY 
        INX 
        CPX #$10
        BCC b6995
        RTS 

s69BA   LDA a26
        AND #$01
        BNE b69D8
        LDA f2510
        STA a69D4
        LDX #$00
b69C8   LDA f2511,X
        STA f2510,X
        INX 
        CPX #$07
        BCC b69C8
a69D4   =*+$01
        LDA #$80
        STA a2517
b69D8   RTS 

s69D9   LDA #$7F
        STA $DC00    ;CIA1: Data Port Register A
        LDA $DC01    ;CIA1: Data Port Register B
        BMI b6A24
        JSR sA75A
        LDX a26
        LDY a27
        STX $02A0
        STY $02A1
b69F0   JSR s10D7
        JSR s6A52
        BPL b69F0
b69F8   JSR s10D7
        JSR s6A52
        BIT a6E98
        BEQ b6A25
        AND #$80
        BEQ b6A0B
        LDA a18
        BNE b69F8
b6A0B   JSR s10D7
        JSR s6A52
        BPL b6A0B
        LDA a18
        BEQ b6A0B
        LDX $02A0
        LDY $02A1
        STX a26
        STY a27
        JSR sA30E
b6A24   RTS 

b6A25   JSR s495C
        JSR s6A31
        JSR s402A
        JMP j0A9B

s6A31   LDX #<p7400
        LDY #>p7400
        STX aB2
        STY aB3
        LDX #<pC400
        LDY #>pC400
        STX aB0
        STY aB1
        LDX #$04
        JSR s6E7C
        LDX #$07
b6A48   LDA f31B8,X
        STA f2518,X
        DEX 
        BPL b6A48
        RTS 

s6A52   LDA #$FF
        STA a45
        STA $DC00    ;CIA1: Data Port Register A
        LDA $DC01    ;CIA1: Data Port Register B
        AND #$08
        BEQ b6A7A
        LDA #$7F
        STA $DC00    ;CIA1: Data Port Register A
        LDA $DC01    ;CIA1: Data Port Register B
        ORA #$7F
        STA a45
        LDA #$BF
        STA $DC00    ;CIA1: Data Port Register A
        LDA $DC01    ;CIA1: Data Port Register B
        ORA #$F7
        AND a45
        STA a45
b6A7A   LDA a45
        RTS 

s6A7D   LDA a26
        LSR 
        BCS b6A98
        LDX #$07
        LDA #$00
b6A86   STA $0200,X
        STA $0208,X
        STA $0210,X
        STA $0220,X
        STA $0228,X
        DEX 
        BPL b6A86
b6A98   LDA #$00
        ADC #$06
        TAX 
        LDA a6E95,X
        STA a7F
b6AA2   LDA f7D00,X
        BEQ b6ACE
        LDY f7D20,X
        LDA f6AB9,Y
        STA a6AB7
        LDA f6AC1,Y
        STA a6AB8
a6AB7   =*+$01
a6AB8   =*+$02
        JMP j6AD7

f6AB9   .BYTE $D7,$10 ;DCP f10,X
        .BYTE $54,$93 ;NOP $93,X
        .BYTE $DB,$1A,$5E ;DCP $5E1A,Y
f6AC1   =*+$01
        .BYTE $97,$6A ;SAX f6A,Y
        .BYTE $6B,$6B ;ARR #$6B
        .BYTE $6B,$6B ;ARR #$6B
        JMP (p6C6C)

j6AC9   LDA #$00
        STA f7D00,X
b6ACE   LSR a7F
        LSR a7F
        DEX 
        DEX 
        BPL b6AA2
        RTS 

j6AD7   LDY f7890,X
        LDA $0200,Y
        ORA a7F
        STA $0200,Y
        LDY f7898,X
        DEY 
        BMI b6B0D
        LDA $0220,Y
        ORA a7F
        STA $0220,Y
        DEY 
        BMI b6B0D
        LDA $0220,Y
        ORA a7F
        STA $0220,Y
        DEY 
        BMI b6B0D
        LDA $0220,Y
        ORA a7F
        STA $0220,Y
        TYA 
        STA f7898,X
        JMP b6ACE

b6B0D   JMP j6AC9

        LDY f7890,X
        INY 
        CPY #$15
        BCS b6B51
        LDA $0200,Y
        ORA a7F
        STA $0200,Y
        INY 
        CPY #$15
        BCS b6B51
        LDA $0200,Y
        ORA a7F
        STA $0200,Y
        TYA 
        STA f7890,X
        LDY f7898,X
        DEY 
        BMI b6B51
        LDA $0220,Y
        ORA a7F
        STA $0220,Y
        DEY 
        BMI b6B51
        LDA $0220,Y
        ORA a7F
        STA $0220,Y
        TYA 
        STA f7898,X
        JMP b6ACE

b6B51   JMP j6AC9

        LDY f7898,X
        LDA $0220,Y
        ORA a7F
        STA $0220,Y
        LDY f7890,X
        INY 
        CPY #$15
        BCS b6B90
        LDA $0200,Y
        ORA a7F
        STA $0200,Y
        INY 
        CPY #$15
        BCS b6B90
        LDA $0200,Y
        ORA a7F
        STA $0200,Y
        INY 
        CPY #$15
        BCS b6B90
        LDA $0200,Y
        ORA a7F
        STA $0200,Y
        TYA 
        STA f7890,X
        JMP b6ACE

b6B90   JMP j6AC9

        LDY f7890,X
        INY 
        CPY #$15
        BCS b6BD8
        LDA $0200,Y
        ORA a7F
        STA $0200,Y
        INY 
        CPY #$15
        BCS b6BD8
        LDA $0200,Y
        ORA a7F
        STA $0200,Y
        TYA 
        STA f7890,X
        LDY f7898,X
        INY 
        CPY #$0D
        BCS b6BD8
        LDA $0220,Y
        ORA a7F
        STA $0220,Y
        INY 
        CPY #$0D
        BCS b6BD8
        LDA $0220,Y
        ORA a7F
        STA $0220,Y
        TYA 
        STA f7898,X
        JMP b6ACE

b6BD8   JMP j6AC9

        LDY f7890,X
        LDA $0200,Y
        ORA a7F
        STA $0200,Y
        LDY f7898,X
        INY 
        CPY #$0D
        BCS b6C17
        LDA $0220,Y
        ORA a7F
        STA $0220,Y
        INY 
        CPY #$0D
        BCS b6C17
        LDA $0220,Y
        ORA a7F
        STA $0220,Y
        INY 
        CPY #$0D
        BCS b6C17
        LDA $0220,Y
        ORA a7F
        STA $0220,Y
        TYA 
        STA f7898,X
        JMP b6ACE

b6C17   JMP j6AC9

        LDY f7890,X
        DEY 
        BMI b6C5B
        LDA $0200,Y
        ORA a7F
        STA $0200,Y
        DEY 
        BMI b6C5B
        LDA $0200,Y
        ORA a7F
        STA $0200,Y
        TYA 
        STA f7890,X
        LDY f7898,X
        INY 
        CPY #$0D
        BCS b6C5B
        LDA $0220,Y
        ORA a7F
        STA $0220,Y
        INY 
        CPY #$0D
        BCS b6C5B
        LDA $0220,Y
        ORA a7F
        STA $0220,Y
        TYA 
        STA f7898,X
        JMP b6ACE

b6C5B   JMP j6AC9

        LDY f7898,X
        LDA $0220,Y
        ORA a7F
        STA $0220,Y
        LDY f7890,X
p6C6C   DEY 
        BMI b6C94
        LDA $0200,Y
        ORA a7F
        STA $0200,Y
        DEY 
        BMI b6C94
        LDA $0200,Y
        ORA a7F
        STA $0200,Y
        DEY 
        BMI b6C94
        LDA $0200,Y
        ORA a7F
        STA $0200,Y
        TYA 
        STA f7890,X
        JMP b6ACE

b6C94   JMP j6AC9

        LDY f7890,X
        DEY 
        BMI b6CD4
        LDA $0200,Y
        ORA a7F
        STA $0200,Y
        DEY 
        BMI b6CD4
        LDA $0200,Y
        ORA a7F
        STA $0200,Y
        TYA 
        STA f7890,X
        LDY f7898,X
        DEY 
        BMI b6CD4
        LDA $0220,Y
        ORA a7F
        STA $0220,Y
        DEY 
        BMI b6CD4
        LDA $0220,Y
        ORA a7F
        STA $0220,Y
        TYA 
        STA f7898,X
        JMP b6ACE

b6CD4   JMP j6AC9

s6CD7   LDX #$00
        LDY #$00
        LDA #$FF
        STA $DC00    ;CIA1: Data Port Register A
a6CE1   =*+$01
        LDA $DC00    ;CIA1: Data Port Register A
a6CE4   =*+$01
        AND $DC01    ;CIA1: Data Port Register B
        LSR 
        BCC b6CEF
        LSR 
        BCS b6CF1
        INY 
        BNE b6CF1
b6CEF   DEY 
        LSR 
b6CF1   STY a16
        LSR 
        BCC b6CFC
        LSR 
        BCS b6CFE
        INX 
        BNE b6CFE
b6CFC   DEX 
        LSR 
b6CFE   STX a17
        AND #$01
        STA a18
        RTS 

s6D05   STA a0D
j6D07   LDY #$27
b6D09   STA (p1C),Y
        DEY 
        BPL b6D09
        DEX 
        BEQ b6D21
        CLC 
        LDA a1C
        ADC #$28
        STA a1C
        BCC b6D1C
        INC a1D
b6D1C   LDA a0D
        JMP j6D07

b6D21   CLC 
        LDA a1C
        ADC #$28
        STA a1C
        BCC b6D2C
        INC a1D
b6D2C   RTS 

s6D2D   LDA #$FF
        STA $DC02    ;CIA1: Data Direction Register A
        LDA #$00
        STA $DC03    ;CIA1: Data Direction Register B
        LDA #$FE
        STA $DC00    ;CIA1: Data Port Register A
        LDA $DC01    ;CIA1: Data Port Register B
        AND #$78
        STA a0E
        LDA #$FD
        STA $DC00    ;CIA1: Data Port Register A
        LDA $DC01    ;CIA1: Data Port Register B
        AND #$80
        ORA a0E
        STA a0E
        LDA #$BF
        STA $DC00    ;CIA1: Data Port Register A
        LDA $DC01    ;CIA1: Data Port Register B
        AND #$10
        BNE b6D63
        LDA a0E
        AND #$7F
        STA a0E
b6D63   LDA #$FF
        STA $DC00    ;CIA1: Data Port Register A
        LDA $DC01    ;CIA1: Data Port Register B
        ORA #$E0
        EOR #$FF
        ORA a0E
        STA a0E
        RTS 

s6D74   DEX 
        BNE s6D74
        DEY 
        BNE s6D74
        RTS 

s6D7B   LDA #$08
        STA aF2
        STA a28
        STA a29
        RTS 

j6D84   JSR s6DE8
        LDA aAE
        CLC 
        ADC aBA
        STA aAE
        BCC b6D92
        INC aAF
b6D92   LDY #$00
        LDA (pAE),Y
        CMP #$FF
        BEQ b6DA1
        LDX aAE
        LDY aAF
        JMP j6D84

b6DA1   RTS 

        STX aAE
        STY aAF
        LDA #$7F
        STA a6E0B
        LDA #$80
        STA a6E19
        LDA #$00
        STA aBA
        LDA #$24
        STA aB6
        JSR s6E25
        LDY #$00
        LDX aB5
        LDA (pAE),Y
        AND #$7F
        JMP j6DCA

j6DC6   LDA (pAE),Y
        BMI b6DD1
j6DCA   INX 
        INY 
        BMI b6E24
        JMP j6DC6

b6DD1   LDY #$00
        CPX #$26
        BCC b6E08
        LDA #$01
        STA aB5
        LDA aB4
        ADC #$02
        CMP #$17
        BCS b6E24
        STA aB4
        JMP b6E08

s6DE8   STX aAE
        STY aAF
        LDA #$FF
        STA a6E0B
        STA a6E19
        LDY #$00
        LDA (pAE),Y
        STA aB4
        CMP #$17
        BCS b6E24
        INY 
        LDA (pAE),Y
        STA aB5
        CMP #$26
        BCS b6E24
        INY 
b6E08   LDA (pAE),Y
a6E0B   =*+$01
        AND #$FF
        JMP j6E13

j6E0F   LDY aBA
        LDA (pAE),Y
j6E13   INY 
        STY aBA
        BMI b6E24
a6E19   =*+$01
        CMP #$FF
        BCS b6E24
        STA aB6
        JSR s6E25
        JMP j6E0F

b6E24   RTS 

s6E25   LDY aB4
        LDA f6EAD,Y
        STA aB1
        LDA f6EDF,Y
        CLC 
        ADC aB5
        STA aB0
        BCC b6E38
        INC aB1
b6E38   LDA #$2B
        STA aB3
        LDX aB6
        LDA f2BCD,X
        BEQ b6E56
        JSR s6E57
        LDA f2BFB,X
        BEQ b6E56
        JSR s6E57
        LDA f2C29,X
        BEQ b6E56
        JSR s6E57
b6E56   RTS 

s6E57   STA aB2
        LDY #$00
        LDA (pB2),Y
        STA (pB0),Y
        INY 
        LDA (pB2),Y
        LDY #$28
        STA (pB0),Y
        LDY #$02
        LDA (pB2),Y
        LDY #$50
        STA (pB0),Y
        INC aB5
        CLC 
        LDA aB0
        ADC #$01
        STA aB0
        BCC b6E7B
        INC aB1
b6E7B   RTS 

s6E7C   LDY #$00
        JSR s6E89
        INC aB3
        INC aB1
        DEX 
        BNE s6E7C
        RTS 

s6E89   LDA (pB2),Y
        STA (pB0),Y
        DEY 
        BNE s6E89
        LDA (pB2),Y
        STA (pB0),Y
        RTS 

a6E95   .BYTE $01
a6E96   .BYTE $02
a6E97   .BYTE $04
a6E98   .BYTE $08
a6E99   .BYTE $10
a6E9A   .BYTE $20
a6E9B   .BYTE $40,$80
f6E9D   .BYTE $FE,$FD,$FB,$F7,$EF,$DF,$BF,$7F
f6EA5   .BYTE $01,$03,$07,$0F,$1F,$3F,$7F
f6EAC   .BYTE $FF
f6EAD   .BYTE $C0,$C0
a6EAF   .BYTE $C0
a6EB0   .BYTE $C0
f6EB1   .BYTE $C0,$C0,$C0,$C1
a6EB5   .BYTE $C1,$C1,$C1,$C1,$C1,$C2,$C2,$C2
        .BYTE $C2,$C2,$C2
a6EC0   .BYTE $C2,$C3,$C3,$C3,$C3,$C3
f6EC6   .BYTE $D8,$D8,$D8
a6EC9   .BYTE $D8,$D8,$D8,$D8,$D9
a6ECE   .BYTE $D9,$D9,$D9,$D9,$D9,$DA,$DA,$DA
        .BYTE $DA,$DA,$DA
a6ED9   .BYTE $DA,$DB,$DB,$DB,$DB
f6EDE   .BYTE $DB
f6EDF   .BYTE $00,$28
a6EE1   .BYTE $50
a6EE2   .BYTE $78
f6EE3   .BYTE $A0,$C8,$F0,$18
a6EE7   .BYTE $40,$68,$90,$B8,$E0,$08,$30,$58
        .BYTE $80,$A8,$D0
a6EF2   .BYTE $F8,$20,$48,$70,$98,$C0,$00,$28
        .BYTE $50,$78,$A0,$C8,$F0,$18,$40,$68
        .BYTE $90,$B8,$E0,$08,$30,$58,$80,$A8
        .BYTE $D0,$F8,$20,$48,$70,$98,$C0,$FD
        .BYTE $FB,$DF,$DF,$F7,$EF,$20,$20,$80
        .BYTE $10,$20,$80,$53,$46,$9D,$1D,$91
        .BYTE $11,$00,$FF,$00,$FF,$00,$FF,$00
        .BYTE $EF,$00,$FF,$00,$FF,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$20,$20
        .BYTE $20,$20,$19,$0F,$2C,$20,$04,$09
        .BYTE $12,$14,$19,$20,$12,$05,$2D,$03
        .BYTE $12,$01,$03,$0B,$05,$12,$2E,$20
        .BYTE $14,$08,$09,$13,$20,$10,$12,$07
        .BYTE $20,$09,$13,$20,$03,$0F,$04,$05
        .BYTE $04,$20,$0C,$09,$0B,$05,$20,$08
        .BYTE $05,$0C,$0C,$2E,$20,$20,$20,$20
        .BYTE $20,$20,$13,$09,$07,$0E,$05,$04
        .BYTE $3A,$20,$13,$08,$20,$28,$08,$14
        .BYTE $0C,$29,$20,$20,$20,$20,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00
p7000   .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $00,$15,$40,$3F,$C0,$15,$55,$6A
        .BYTE $00,$00,$40,$10,$E4,$24,$64,$64
        .BYTE $00,$04,$11,$4E,$32,$C6,$16,$66
        .BYTE $00,$00,$00,$40,$40,$40,$40,$40
        .BYTE $00,$01,$04,$13,$4C,$31,$C5,$19
        .BYTE $00,$00,$40,$90,$90,$90,$90,$90
        .BYTE $00,$55,$00,$FF,$00,$55,$55,$6A
        .BYTE $00,$40,$10,$E4,$24,$64,$64,$A4
        .BYTE $00,$55,$00,$FF,$00,$55,$55,$AA
        .BYTE $00,$40,$10,$E4,$24,$64,$64,$64
        .BYTE $AA,$55,$00,$FF,$00,$00,$00,$00
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $7F,$6A,$65,$64,$64,$64,$64,$64
        .BYTE $64,$64,$64,$64,$64,$64,$64,$64
        .BYTE $B6,$E6,$56,$06,$06,$06,$06,$06
        .BYTE $40,$40,$40,$40,$40,$40,$40,$40
        .BYTE $BF,$EA,$55,$00,$15,$6A,$7F,$6A
        .BYTE $64,$64,$64,$64,$A4,$E4,$90,$40
        .BYTE $BF,$EA,$55,$00,$15,$2A,$3F,$1A
        .BYTE $64,$64,$64,$A4,$E4,$14,$60,$64
        .BYTE $6D,$79,$65,$51,$55,$A9,$FD,$69
        .BYTE $90,$90,$90,$10,$60,$A4,$E4,$A4
        .BYTE $7F,$6A,$55,$40,$55,$AA,$FF,$6A
        .BYTE $E4,$A4,$54,$00,$00,$60,$64,$64
        .BYTE $7F,$6A,$55,$40,$55,$6A,$7F,$6A
        .BYTE $E4,$A4,$54,$00,$80,$50,$64,$64
        .BYTE $FF,$6A,$15,$05,$06,$06,$06,$06
        .BYTE $64,$64,$64,$B4,$E4,$90,$40,$40
        .BYTE $7F,$6A,$65,$80,$55,$2A,$7F,$6A
        .BYTE $7F,$6A,$65,$40,$95,$EA,$7F,$1A
        .BYTE $7F,$6A,$65,$40,$55,$6A,$7F,$6A
        .BYTE $E4,$A4,$54,$00,$00,$00,$00,$00
        .BYTE $E4,$A4,$54,$00,$40,$90,$90,$90
        .BYTE $64,$40,$55,$95,$EA,$7F,$1A,$05
        .BYTE $64,$64,$64,$A4,$E4,$A4,$90,$40
        .BYTE $06,$06,$55,$55,$AA,$FF,$6A,$15
        .BYTE $40,$40,$50,$64,$A4,$E4,$A4,$54
        .BYTE $65,$40,$55,$55,$AA,$FF,$6A,$15
        .BYTE $00,$00,$50,$64,$A4,$E4,$A4,$54
        .BYTE $05,$40,$55,$95,$EA,$7F,$1A,$05
        .BYTE $15,$01,$01,$01,$02,$03,$01,$00
        .BYTE $94,$90,$90,$90,$90,$90,$90,$50
        .BYTE $15,$00,$55,$55,$AA,$FF,$6A,$15
        .BYTE $65,$40,$55,$95,$EA,$7F,$1A,$05
        .BYTE $06,$06,$06,$06,$0A,$0E,$06,$01
        .BYTE $05,$00,$55,$55,$AA,$FF,$6A,$15
        .BYTE $65,$64,$64,$64,$A4,$E4,$64,$14
        .BYTE $64,$64,$64,$64,$A4,$E4,$64,$14
        .BYTE $64,$40,$55,$55,$AA,$FF,$6A,$15
        .BYTE $50,$00,$50,$64,$A4,$E4,$A4,$54
        .BYTE $00,$00,$00,$00,$55,$AA,$AA,$AA
        .BYTE $00,$40,$10,$E1,$20,$67,$60,$5D
        .BYTE $00,$55,$00,$FF,$00,$55,$55,$A6
        .BYTE $E4,$A4,$54,$00,$80,$90,$90,$90
        .BYTE $7F,$6A,$65,$64,$65,$66,$67,$64
        .BYTE $E4,$A4,$54,$00,$60,$64,$64,$64
        .BYTE $64,$64,$64,$40,$55,$6A,$7F,$6A
        .BYTE $41,$45,$56,$57,$56,$55,$65,$75
        .BYTE $A0,$D0,$80,$40,$00,$00,$00,$00
        .BYTE $7F,$6A,$65,$64,$64,$64,$64,$61
        .BYTE $7F,$6A,$65,$40,$55,$69,$7E,$6B
        .BYTE $64,$64,$64,$64,$A4,$E4,$54,$60
        .BYTE $7F,$6A,$55,$40,$95,$EA,$7F,$1A
        .BYTE $F7,$66,$16,$06,$06,$06,$06,$06
        .BYTE $E4,$A4,$54,$40,$40,$40,$40,$40
        .BYTE $50,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$40,$55,$95,$EA,$7F,$1A,$05
        .BYTE $69,$6D,$66,$67,$A5,$E4,$64,$14
        .BYTE $00,$40,$50,$54,$94,$E4,$64,$14
        .BYTE $64,$64,$64,$64,$A4,$E4,$A4,$54
        .BYTE $45,$55,$59,$6E,$BB,$E6,$50,$00
        .BYTE $A4,$24,$64,$64,$A4,$E4,$A4,$14
        .BYTE $66,$64,$64,$64,$A4,$E4,$64,$14
        .BYTE $64,$40,$55,$55,$AA,$FF,$AA,$55
        .BYTE $44,$51,$95,$E6,$7B,$1E,$05,$00
        .BYTE $64,$64,$A4,$E4,$90,$40,$00,$00
        .BYTE $64,$64,$44,$91,$D5,$19,$6E,$7B
        .BYTE $64,$64,$44,$51,$95,$E6,$77,$16
        .BYTE $FF,$6A,$15,$05,$16,$5B,$6E,$79
        .BYTE $64,$64,$64,$B4,$E4,$90,$40,$00
        .BYTE $00,$00,$50,$64,$A4,$E4,$64,$14
        .BYTE $64,$64,$55,$55,$AA,$FF,$6A,$15
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$01,$04,$03,$0C,$01,$05,$05
        .BYTE $00,$00,$40,$10,$E4,$24,$64,$64
        .BYTE $09,$05,$01,$01,$01,$01,$01,$11
        .BYTE $A4,$94,$90,$90,$90,$90,$90,$90
        .BYTE $45,$11,$55,$55,$AA,$FF,$6A,$15
        .BYTE $50,$04,$59,$59,$A9,$F9,$A9,$55
        .BYTE $01,$00,$03,$00,$02,$00,$01,$01
        .BYTE $54,$01,$FE,$02,$5A,$52,$56,$56
        .BYTE $00,$00,$40,$40,$40,$40,$40,$40
        .BYTE $02,$01,$15,$41,$15,$55,$55,$55
        .BYTE $5A,$5A,$55,$54,$55,$55,$55,$55
        .BYTE $40,$40,$40,$10,$44,$59,$59,$59
        .BYTE $59,$59,$59,$59,$AA,$FB,$69,$14
        .BYTE $56,$56,$56,$56,$AA,$FE,$AA,$55
        .BYTE $59,$59,$59,$59,$A9,$F9,$69,$15
        .BYTE $00,$05,$00,$0F,$00,$05,$05,$06
        .BYTE $00,$55,$00,$FF,$00,$55,$55,$AA
        .BYTE $00,$40,$10,$E4,$24,$64,$64,$64
        .BYTE $07,$06,$06,$06,$06,$06,$06,$16
        .BYTE $FF,$AA,$55,$40,$40,$40,$40,$41
        .BYTE $64,$64,$64,$64,$64,$64,$64,$64
        .BYTE $46,$16,$56,$9A,$EE,$39,$04,$00
        .BYTE $44,$41,$45,$49,$4E,$03,$00,$00
        .BYTE $64,$64,$64,$A4,$E4,$90,$40,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00

.include "sprites.asm"

pA000   STA a04
        STX a05
        STY a06
        CLD 
        LDX #<$066C
        LDY #>$066C
        STX $FFFA    ;NMI
        STY $FFFB    ;NMI
        LDA #$71
        STA $DD04    ;CIA2: Timer A: Low-Byte
        LDA #$0F
        STA $DD05    ;CIA2: Timer A: High-Byte
        LDA #$99
        STA $DD0E    ;CIA2: CIA Control Register A
        LDA a28
        CMP a29
        BEQ bA029
        JMP $0635

bA029   ADC #$03
        STA a28
        LDA a02
        SEC 
        SBC #$09
        BMI bA045
        TAY 
        LDA #$00
        STA a0B
        STA f7C21,Y
        LDA #$FF
        STA $D015    ;Sprite display Enable
        LDX #$07
        BNE bA057
bA045   LDA #$00
        STA f7C20
        STA a0B
        LDX a02
        DEX 
        BMI bA0B0
        LDA f6EA5,X
        STA $D015    ;Sprite display Enable
bA057   LDY $062D,X
        STY $04A3
        INY 
        STY $04A9
        LDY f7C00,X
        LDA f7D20,Y
        LSR 
        BCS bA073
        LDA $D010    ;Sprites 0-7 MSB of X coordinate
        AND f6E9D,X
        JMP $0479

bA073   LDA $D010    ;Sprites 0-7 MSB of X coordinate
        ORA a6E95,X
        STA $D010    ;Sprites 0-7 MSB of X coordinate
        LDA f7CA0,Y
        STA fC3F8,X
        STA $0486
        LDA a2500
        STA $D027,X  ;Sprite 0 Color
        BMI bA096
        LDA $D01C    ;Sprites Multi-Color Mode Select
        AND f6E9D,X
        JMP $049C

bA096   LDA $D01C    ;Sprites Multi-Color Mode Select
        ORA a6E95,X
        STA $D01C    ;Sprites Multi-Color Mode Select
        LDA f7C20,Y
        STA $D000    ;Sprite 0 X Pos
        LDA f7C60,Y
        STA $D001    ;Sprite 0 Y Pos
        DEX 
        BPL bA057
        BMI bA0B3
bA0B0   STA $D015    ;Sprite display Enable
bA0B3   LDX #<$052C
        LDY #>$052C
        STX $FFFE    ;IRQ
        STY $FFFF    ;IRQ
        LDX a0B
        LDA f7C20,X
        BEQ bA0D3
        STA $D012    ;Raster Position
        BNE bA0E7
        LDA $D011    ;VIC Control Register 1
        ASL 
        LDA $D012    ;Raster Position
        ROR 
        STA a28
bA0D3   LDA #$90
        STA $D011    ;VIC Control Register 1
        LDA #$00
        STA $D012    ;Raster Position
        LDX #<$05CF
        LDY #>$05CF
        STX $FFFE    ;IRQ
        STY $FFFF    ;IRQ
bA0E7   LDA #$08
        STA $0542
        LDA #$01
        STA $D019    ;VIC Interrupt Request Register (IRR)
        STA a0A
        LDA #$0F
        STA $D021    ;Background Color 0
        LDA #$0C
        STA $D022    ;Background Color 1, Multi-Color Register 0
        LDA #$0B
        STA $D023    ;Background Color 2, Multi-Color Register 1
        LDA #$FC
        STA $D030    ;C128: Switch to FAST-Mode
        JSR sA30B
        LDA a01
        AND #$10
        BEQ bA11B
        LDA a01
        ORA #$20
        STA a01
        STA $051C
        BNE bA125
bA11B   LDA #$00
        BEQ bA125
        LDA a01
        AND #$DF
        STA a01
bA125   LDY a06
        LDX a05
        LDA a04
        RTI 

        STA a04
        STX a05
        STY a06
        CLD 
bA133   LDA a0B
        AND #$07
        TAX 
        ASL 
        TAY 
        STY $0583
        INY 
        STY $0589
        LDY f7C00
        LDA f7D20,Y
        LSR 
        BCS bA153
        LDA $D010    ;Sprites 0-7 MSB of X coordinate
        AND f6E9D,X
        JMP $0559

bA153   LDA $D010    ;Sprites 0-7 MSB of X coordinate
        ORA a6E95,X
        STA $D010    ;Sprites 0-7 MSB of X coordinate
        LDA f7CA0,Y
        STA fC3F8,X
        STA $0566
        LDA a2500
        STA $D027,X  ;Sprite 0 Color
        BMI bA176
        LDA $D01C    ;Sprites Multi-Color Mode Select
        AND f6E9D,X
        JMP $057C

bA176   LDA $D01C    ;Sprites Multi-Color Mode Select
        ORA a6E95,X
        STA $D01C    ;Sprites Multi-Color Mode Select
        LDA f7C20,Y
        STA $D000    ;Sprite 0 X Pos
        LDA f7C60,Y
        STA $D001    ;Sprite 0 Y Pos
        INC a0B
        INC $0542
        LDX a0B
        LDY f7C20,X
        TYA 
        BEQ bA1AF
        DEY 
        DEY 
        DEY 
        CPY $D012    ;Raster Position
        BCC bA133
        STA $D012    ;Raster Position
        LDA #$01
        STA $D019    ;VIC Interrupt Request Register (IRR)
        LDY a06
        LDX a05
        LDA a04
        RTI 

bA1AF   LDA #$90
        STA $D011    ;VIC Control Register 1
        LDA #$00
        STA $D012    ;Raster Position
        LDX #<$05CF
        LDY #>$05CF
        STX $FFFE    ;IRQ
        STY $FFFF    ;IRQ
        LDA #$01
        STA $D019    ;VIC Interrupt Request Register (IRR)
        LDY a06
        LDX a05
        LDA a04
        RTI 

        STA a04
        STX a05
        STY a06
        CLD 
        LDA #$FD
        STA $D030    ;C128: Switch to FAST-Mode
        LDA #$10
        STA $D011    ;VIC Control Register 1
        LDA #$08
        STA $D012    ;Raster Position
        LDX #<$0400
        LDY #>$0400
        STX $FFFE    ;IRQ
        STY $FFFF    ;IRQ
        LDA a44
        BNE bA21B
        CLC 
        TSX 
        STX $0619
        LDX #$10
        TXS 
        LDX #$00
bA1FD   PLA 
        BMI bA1FD
        BEQ bA216
        STA f7C00,X
        TAY 
        LDA f7C60,Y
        ADC #$17
        STA f7C20,X
        LDA #$FF
        PHA 
        PLA 
        INX 
        JMP $05FD

bA216   STX a02
        LDX #$F0
        TXS 
bA21B   LDA #$01
        STA $D019    ;VIC Interrupt Request Register (IRR)
        STA a44
        LDA #$00
        STA a0A
        LDY a06
        LDX a05
        LDA a04
        RTI 

        BRK #$02
        .BYTE $04,$06 ;NOP a06
        PHP 
        ASL 
        .BYTE $0C,$0E,$A9 ;NOP $A90E
        .BYTE $0B,$8D ;ANC #$8D
        ORA (pD0),Y
        LDA #$FC
        STA $D030    ;C128: Switch to FAST-Mode
        LDX #$34
        STX a01
        LDX #$07
        STX $064D
        LDA #$00
        TAY 
bA24B   STA $FC00,Y
        INY 
        BNE bA24B
        INC $064D
        LDX $064D
        CPX #$FF
        BCC bA24B
        LDX #$37
        STX a01
        LDA #$03
        EOR #$FF
        STA a1B
        SBC #$1A
        STA a1A
        JMP (p001A)

        STA $06A6
        LDA #$05
        STA $D018    ;VIC Memory Control Register
        LDA $DD0D    ;CIA2: CIA Interrupt Control Register
        LDA #<$06A8
        STA $FFFA    ;NMI
        LDA #>$06A8
        STA $FFFB    ;NMI
        LDA #$74
        STA $DD04    ;CIA2: Timer A: Low-Byte
        LDA #$09
        STA $DD05    ;CIA2: Timer A: High-Byte
        LDA #$99
        STA $DD0E    ;CIA2: CIA Control Register A
        LDA #$0B
        CMP #$0B
        BEQ bA2A3
        STA $D023    ;Background Color 2, Multi-Color Register 1
        LDA #$0C
        STA $D022    ;Background Color 1, Multi-Color Register 0
        LDA #$0F
        STA $D021    ;Background Color 0
bA2A3   INC a29
        LDA #$00
        RTI 

        STA $06CF
        LDA #$03
        STA $D018    ;VIC Memory Control Register
        LDA $DD0D    ;CIA2: CIA Interrupt Control Register
        LDA #<$06D1
        STA $FFFA    ;NMI
        LDA #>$06D1
        STA $FFFB    ;NMI
        LDA #$41
        STA $DD04    ;CIA2: Timer A: Low-Byte
        LDA #$15
        STA $DD05    ;CIA2: Timer A: High-Byte
        LDA #$99
        STA $DD0E    ;CIA2: CIA Control Register A
        INC a29
        LDA #$45
        RTI 

        STA $06F9
        LDA $0670
        STA $D018    ;VIC Memory Control Register
        LDA $DD0D    ;CIA2: CIA Interrupt Control Register
        LDA #<$06FB
        STA $FFFA    ;NMI
        LDA #>$06FB
        STA $FFFB    ;NMI
        LDA #$74
        STA $DD04    ;CIA2: Timer A: Low-Byte
        LDA #$09
        STA $DD05    ;CIA2: Timer A: High-Byte
        LDA #$99
        STA $DD0E    ;CIA2: CIA Control Register A
        INC a29
        LDA #$45
        RTI 

        STA $0709
        LDA #$03
        STA $D018    ;VIC Memory Control Register
        INC a29
        LDA $DD0D    ;CIA2: CIA Interrupt Control Register
        LDA #$91
        RTI 

aA30C   =*+$01
aA30D   =*+$02
sA30B   JMP jA349

sA30E   JMP jA34A

        JMP jA361

sA314   TAY 
        LDA fAC5B,Y
        CLC 
        ADC #$5D
        STA aBE
        LDA #$00
        STA aE1
        STA aA781
        ADC #$AC
        STA aBF
        JSR sA75A
        LDA aF2
        STA aF3
        LDA #$01
        STA aEC
        STA aEF
        LDA aABF7
        STA aDB
        LDA aAC29
        STA aDE
        LDX #<pA378
        LDY #>pA378
        STX aA30C
        STY aA30D
jA349   RTS 

jA34A   JSR sA75A
        LDA #$0F
        STA aF3
        LDA #$80
        STA aA781
        LDX #<pA461
        LDY #>pA461
        STX aA30C
        STY aA30D
        RTS 

jA361   JSR sA75A
        LDA aF2
        STA aF3
        LDA #$80
        STA aA781
        LDX #<pA461
        LDY #>pA461
        STX aA30C
        STY aA30D
        RTS 

pA378   DEC aEC
        BEQ bA37F
        JMP pA461

bA37F   LDA #$07
        SEC 
        SBC $02A6
        STA aEC
        LDA #$00
        STA aFA
jA38B   TAX 
        DEC fEF,X
        BEQ bA393
        JMP jA456

bA393   LDA fDE,X
        STA aFD
        LDA fDB,X
        STA aFC
        LDY #$00
jA39D   LDA (pFC),Y
        BEQ bA3CD
        INY 
        CMP #$FF
        BEQ bA3B2
        CMP #$E0
        BCS bA409
        CMP #$D1
        BCS bA3B2
        CMP #$C0
        BCS bA402
bA3B2   STA aE2
        TYA 
        CLC 
        ADC fDB,X
        STA fDB,X
        BCC bA3BE
        INC fDE,X
bA3BE   LDA aE2
        CMP #$FF
        BNE bA3C7
        JMP jA452

bA3C7   CMP #$D1
        BCS bA410
        BCC bA417
bA3CD   TAX 
        LDY #$00
        LDA (pBE),Y
        BPL bA3D8
        JSR sA75A
        RTS 

bA3D8   LDY #$00
        LDA (pBE),Y
        TAY 
        LDA aABF7,Y
        STA fDB,X
        LDA aAC29,Y
        STA fDE,X
        LDA aBE
        CLC 
        ADC #$01
        STA aBE
        LDA aBF
        ADC #$00
        STA aBF
        LDA #$01
        STA fEF,X
        INX 
        CPX #$03
        BCC bA3D8
        LDX #$00
        JMP bA393

bA402   AND #$1F
        STA fE6,X
        JMP jA39D

bA409   AND #$1F
        STA fD8,X
        JMP jA39D

bA410   AND #$0F
        STA fE3,X
        JMP jA452

bA417   AND #$F0
        LSR 
        LSR 
        LSR 
        TAY 
        LDA aE2
        AND #$0F
        TAX 
        LDA fA7D3,Y
        STA aED
        LDA fA7D4,Y
        CPX #$00
        BEQ bA434
bA42E   LSR 
        ROR aED
        DEX 
        BNE bA42E
bA434   STA aEE
        LDX aFA
        LDY fD8,X
        LDA fAB8F,Y
        STA aFD
        LDA fABC3,Y
        STA aFC
        TYA 
        STA fE3,X
        LDA aED
        LDY #$01
        STA (pFC),Y
        LDA aEE
        INY 
        STA (pFC),Y
jA452   LDA fE6,X
        STA fEF,X
jA456   INC aFA
        LDA aFA
        CMP #$03
        BEQ pA461
        JMP jA38B

pA461   LDA aF3
aA464   =*+$01
        ORA #$80
        STA $D418    ;Select Filter Mode and Volume
        LDY #$00
        STY aFA
bA46C   LDA fA7D0,Y
        BEQ bA481
        STA f00E9,Y
        LDA #$00
        STA fA7D0,Y
        JSR sA676
        LDY aFA
        JMP jA4BA

bA481   LDA f00E3,Y
        BEQ jA4BA
        BMI bA48C
        LDX fE9,Y
        BMI jA4BA
bA48C   LDA f00E9,Y
        AND #$40
        BNE jA4BA
        LDA f00E3,Y
        STA fA7D0,Y
        LDA fA7CD,Y
        TAX 
        LDA f00F7,Y
        ORA #$08
        STA $D404,X  ;Voice 1: Control Register
        LDA #$00
        STA $D406,X  ;Voice 1: Sustain / Release Cycle Control
        STA $D405,X  ;Voice 1: Attack / Decay Cycle Control
        LDA #$00
        STA f00E9,Y
        LDA f00F7,Y
        AND #$FE
        STA $D404,X  ;Voice 1: Control Register
jA4BA   LDA #$00
        STA f00E3,Y
        INY 
        STY aFA
        CPY #$03
        BCC bA46C
        LDX #$00
        STX aFB
jA4CA   STX aFA
        LDY aFB
        LDA fE9,X
        BNE bA4D5
        JMP jA622

bA4D5   LDA fC6,X
        BNE bA4DC
        JMP jA630

bA4DC   LDA fA7BE,X
        AND #$02
        BEQ bA4EA
        LDA fA7C4,X
        BEQ bA530
        BNE bA51A
bA4EA   LDA fCF,X
        CLC 
        ADC fA7AC,X
        STA fCF,X
        STA $D402,Y  ;Voice 1: Pulse Waveform Width - Low-Byte
        LDA fCC,X
        ADC fA7AF,X
        STA fCC,X
        STA $D403,Y  ;Voice 1: Pulse Waveform Width - High-Nybble
        BEQ bA505
        CMP #$0F
        BCC bA51A
bA505   LDA fA7AC,X
        EOR #$FF
        CLC 
        ADC #$01
        STA fA7AC,X
        LDA fA7AF,X
        EOR #$FF
        ADC #$00
        STA fA7AF,X
bA51A   LDA fC0,X
        CLC 
        ADC fD5,X
        STA fC0,X
        STA $D400,Y  ;Voice 1: Frequency Control - Low-Byte
        LDA fC3,X
        ADC fD2,X
        STA fC3,X
        STA $D401,Y  ;Voice 1: Frequency Control - High-Byte
        JMP jA545

bA530   LDA fCF,X
        CLC 
        ADC fA7AC,X
        STA fCF,X
        STA $D400,Y  ;Voice 1: Frequency Control - Low-Byte
        LDA fCC,X
        ADC fA7AF,X
        STA fCC,X
        STA $D401,Y  ;Voice 1: Frequency Control - High-Byte
jA545   DEC fF4,X
        BNE bA550
        LDA fF7,X
        AND #$FE
        STA $D404,Y  ;Voice 1: Control Register
bA550   DEC fC9,X
        BEQ bA557
        JMP jA622

bA557   DEC fC6,X
        CLC 
        LDY fD2,X
        LDA fA7C1,X
        BPL bA562
        DEY 
bA562   ADC fD5,X
        STA fD5,X
        TYA 
        ADC #$00
        STA fD2,X
        LDA fC6,X
        CMP #$01
        BNE bA57A
        LDA fA7BB,X
        AND #$04
        BEQ bA5A6
        BNE bA584
bA57A   AND #$01
        CLC 
        ADC #$01
        AND fA7BB,X
        BEQ bA5A6
bA584   LDA #$50
        STA fA7C4,X
        LDA fA7BB,X
        TAY 
        ROL 
        LDA fA7A6,X
        BCC bA5C7
        LSR 
        LSR 
        LSR 
        EOR #$FF
        SEC 
        ADC fA7A6,X
        CMP #$03
        BCC bA5C7
        STA fA7A6,X
        JMP bA5C7

bA5A6   LDA #$00
        STA fA7C4,X
        LDA fA7BE,X
        TAY 
        ROL 
        LDA fA7A9,X
        BCC bA5C7
        LSR 
        LSR 
        LSR 
        SEC 
        EOR #$FF
        ADC fA7A9,X
        CMP #$03
        BCC bA5C7
        STA fA7A9,X
        BCS bA5C7
bA5C7   STA fC9,X
        TYA 
        AND #$40
        BEQ bA5D8
        LDA fA7A0,X
        STA fC0,X
        LDA fA7A3,X
        STA fC3,X
bA5D8   TYA 
        AND #$20
        BEQ bA5F9
        LDA fD5,X
        EOR #$FF
        CLC 
        ADC #$01
        STA fD5,X
        LDA fD2,X
        EOR #$FF
        ADC #$00
        STA fD2,X
        LDA fA7C1,X
        EOR #$FF
        CLC 
        ADC #$01
        STA fA7C1,X
bA5F9   TYA 
        AND #$10
        BEQ bA608
        LDA fA7B2,X
        STA fCF,X
        LDA fA7B5,X
        STA fCC,X
bA608   TYA 
        AND #$08
        BEQ jA622
        LDA fA7AC,X
        EOR #$FF
        CLC 
        ADC #$01
        STA fA7AC,X
        LDA fA7AF,X
        EOR #$FF
        ADC #$00
        STA fA7AF,X
jA622   INX 
        CPX #$03
        BCS bA62F
        LDA fA7CD,X
        STA aFB
        JMP jA4CA

bA62F   RTS 

jA630   LDA fA7B8,X
        SEC 
        SBC #$10
        BCC bA659
        STA fA7B8,X
        LDY aFB
        STA $D406,Y  ;Voice 1: Sustain / Release Cycle Control
        LDA fA7C7,X
        STA fF4,X
        LDA fA7CA,X
        STA fC6,X
        LDA fF7,X
        AND #$FE
        STA $D404,Y  ;Voice 1: Control Register
        ORA #$01
        STA $D404,Y  ;Voice 1: Control Register
        JMP jA622

bA659   LDA fA7BE,X
        AND #$01
        BEQ bA665
        CLC 
        ADC fE9,X
        STA fE3,X
bA665   LDA #$00
        STA fE9,X
        JSR sA70D
        CPX #$02
        BNE bA673
        JSR sA780
bA673   JMP jA622

sA676   LDA fA7CD,Y
        TAY 
        STA aFB
        LDA #$08
        STA $D404,Y  ;Voice 1: Control Register
        LDY aFA
        LDA f00E9,Y
        AND #$3F
        TAY 
        LDA fABC3,Y
        STA aFC
        LDA fAB8F,Y
        STA aFD
        LDY #$00
        LDA (pFC),Y
        JSR sA71D
        LDX aFA
        LDY #$01
        LDA (pFC),Y
        STA fA7A0,X
        STA fC0,X
        INY 
        LDA (pFC),Y
        STA fA7A3,X
        STA fC3,X
        INY 
        LDA (pFC),Y
        STA fD5,X
        INY 
        LDA (pFC),Y
        STA fD2,X
        INY 
        LDA (pFC),Y
        STA fC6,X
        STA fA7CA,X
        INY 
        LDA (pFC),Y
        STA fA7A6,X
        STA fC9,X
        INY 
        LDA (pFC),Y
        STA fA7A9,X
        INY 
        LDA (pFC),Y
        STA fA7B2,X
        STA fCF,X
        INY 
        LDA (pFC),Y
        STA fA7B5,X
        STA fCC,X
        INY 
        LDA (pFC),Y
        STA fA7AC,X
        INY 
        LDA (pFC),Y
        STA fA7AF,X
        INY 
        LDA (pFC),Y
        STA fA7B8,X
        INY 
        LDA (pFC),Y
        STA fA7BB,X
        INY 
        LDA (pFC),Y
        STA fA7BE,X
        INY 
        LDA (pFC),Y
        STA fA7C1,X
        LDA aFA
        CMP #$02
        BNE bA70C
        LDA #$00
        STA aA464
bA70C   RTS 

sA70D   LDY aFB
        LDA #$08
        STA $D404,Y  ;Voice 1: Control Register
        LDA #$00
        STA $D406,Y  ;Voice 1: Sustain / Release Cycle Control
        STA $D405,Y  ;Voice 1: Attack / Decay Cycle Control
        RTS 

sA71D   ASL 
        ASL 
        TAX 
        LDY aFB
        LDA fA7EC,X
        STA $D405,Y  ;Voice 1: Attack / Decay Cycle Control
        LDA fA7ED,X
        STA $D406,Y  ;Voice 1: Sustain / Release Cycle Control
        LDA fA7EB,X
        AND #$06
        BEQ bA745
        LDY aE9
        INY 
        STY aE5
        LDA #$00
        STA aEB
        LDY aFB
        LDA #$08
        STA $D412    ;Voice 3: Control Register
bA745   LDA fA7EB,X
        STA $D404,Y  ;Voice 1: Control Register
        LDY aFA
        STA f00F7,Y
        LDA fA7EE,X
        STA f00F4,Y
        STA fA7C7,Y
        RTS 

sA75A   LDX #<jA349
        LDY #>jA349
        STX aA30C
        STY aA30D
        LDY #$18
        LDA #$00
bA768   STA $D400,Y  ;Voice 1: Frequency Control - Low-Byte
        DEY 
        BPL bA768
        LDY #$02
bA770   STA f00E9,Y
        STA f00E3,Y
        STA fA7D0,Y
        DEY 
        BPL bA770
        JSR sA780
        RTS 

aA781   =*+$01
sA780   LDA #$50
        STA aA464
        ORA aF3
        STA $D418    ;Select Filter Mode and Volume
        LDA #$FF
        STA $D40E    ;Voice 3: Frequency Control - Low-Byte
        STA $D40F    ;Voice 3: Frequency Control - High-Byte
        LDA #$00
        STA $D413    ;Voice 3: Attack / Decay Cycle Control
        STA $D414    ;Voice 3: Sustain / Release Cycle Control
        LDA #$80
        STA $D412    ;Voice 3: Control Register
        RTS 

fA7A0   .BYTE $00,$00,$00
fA7A3   .BYTE $00,$00,$00
fA7A6   .BYTE $00,$00,$00
fA7A9   .BYTE $00,$00,$00
fA7AC   .BYTE $00,$00,$00
fA7AF   .BYTE $00,$00,$00
fA7B2   .BYTE $00,$00,$00
fA7B5   .BYTE $00,$00,$00
fA7B8   .BYTE $00,$00,$00
fA7BB   .BYTE $00,$00,$00
fA7BE   .BYTE $00,$00,$00
fA7C1   .BYTE $00,$00,$00
fA7C4   .BYTE $00,$00,$00
fA7C7   .BYTE $00,$00,$00
fA7CA   .BYTE $00,$00,$00
fA7CD   .BYTE $00,$07,$0E
fA7D0   .BYTE $00,$00,$00
fA7D3   .BYTE $1E
fA7D4   .BYTE $86,$18,$8E,$8B,$96,$7E,$9F,$FA
        .BYTE $A8,$06,$B3,$AC,$BD,$F3,$C8,$E6
        .BYTE $D4,$8F,$E1,$F8,$EE,$2E,$FD
fA7EB   .BYTE $81
fA7EC   .BYTE $C0
fA7ED   .BYTE $4A
fA7EE   .BYTE $07,$81,$06,$F6,$06,$11,$14,$D9
        .BYTE $10,$11,$55,$AB,$10,$11,$04,$F6
        .BYTE $04,$11,$14,$75,$02,$11,$A9,$BC
        .BYTE $FF,$21,$9E,$7D,$07,$41,$1A,$00
        .BYTE $A0,$51,$59,$00,$30,$11,$83,$F9
        .BYTE $08,$41,$47,$00,$2F,$41,$CB,$9C
        .BYTE $C1,$81,$00,$83,$07,$51,$11,$7A
        .BYTE $04,$81,$0C,$19,$10,$41,$9D,$57
        .BYTE $60,$41,$EA,$0A,$45,$81,$05,$23
        .BYTE $2B,$81,$00,$28,$07,$01,$00,$00
        .BYTE $01,$41,$19,$00,$FF,$41,$23,$7E
        .BYTE $3F,$41,$0C,$50,$FF,$41,$2D,$00
        .BYTE $FF,$12,$09,$13,$8A,$09,$07,$01
        .BYTE $01,$00,$00,$00,$00,$08,$51,$00
        .BYTE $80,$12,$BD,$F4,$00,$00,$07,$01
        .BYTE $01,$00,$00,$00,$00,$08,$51,$00
        .BYTE $30,$12,$3D,$00,$FF,$00,$03,$01
        .BYTE $01,$00,$00,$00,$00,$08,$51,$00
        .BYTE $30,$12,$00,$5B,$0C,$60,$02,$01
        .BYTE $01,$00,$00,$00,$00,$58,$51,$00
        .BYTE $30,$13,$00,$66,$00,$00,$06,$05
        .BYTE $00,$00,$0A,$14,$00,$00,$AF,$00
        .BYTE $02,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$15,$00,$06,$00,$00,$FF,$15
        .BYTE $07,$00,$0A,$18,$00,$00,$28,$28
        .BYTE $00,$18,$00,$67,$00,$00,$FF,$04
        .BYTE $04,$00,$02,$18,$00,$00,$28,$28
        .BYTE $10,$16,$00,$3D,$1F,$00,$FF,$02
        .BYTE $04,$00,$06,$0E,$00,$00,$30,$30
        .BYTE $02,$17,$00,$06,$00,$00,$FF,$15
        .BYTE $07,$00,$0A,$18,$00,$00,$28,$28
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$06,$57,$02,$B0,$00,$4B,$04
        .BYTE $00,$00,$07,$46,$00,$00,$CF,$00
        .BYTE $0D,$06,$50,$04,$B0,$00,$40,$04
        .BYTE $00,$00,$07,$46,$00,$00,$CF,$00
        .BYTE $FA,$08,$3E,$03,$FF,$FF,$05,$02
        .BYTE $02,$00,$19,$B8,$FF,$00,$11,$00
        .BYTE $14,$08,$3E,$03,$FA,$FF,$14,$01
        .BYTE $02,$00,$19,$D0,$FF,$00,$01,$00
        .BYTE $00,$03,$D0,$17,$00,$00,$10,$01
        .BYTE $02,$00,$00,$00,$00,$00,$66,$60
        .BYTE $A3,$04,$BE,$04,$DA,$FF,$01
aA965   .BYTE $0B,$00,$00,$00,$00,$00,$17,$01
        .BYTE $00,$00,$05,$00,$71,$00,$81,$09
aA975   .BYTE $09,$00,$00,$00,$00,$00,$15,$27
        .BYTE $00,$02,$08,$00,$14,$00,$FE,$08
        .BYTE $0A,$00,$00,$6B,$69,$00,$00,$5F
        .BYTE $00,$20,$02,$00,$16,$00,$02,$11
        .BYTE $03,$00,$00,$00,$00,$00,$00,$67
        .BYTE $00,$23,$05,$00,$31,$00,$22,$04
        .BYTE $04,$00,$00,$00,$00,$00,$00,$B7
        .BYTE $00,$00,$05,$00,$0A,$FF,$07,$03
        .BYTE $07,$00,$00,$00,$00,$00,$05,$57
        .BYTE $00,$00,$04,$BE,$73,$AA,$FC,$05
        .BYTE $05,$01,$00,$00,$00,$00,$13,$51
        .BYTE $00,$E0,$00,$00,$F0,$0F,$FD,$0A
        .BYTE $05,$00,$00,$00,$14,$00,$04,$07
        .BYTE $00,$D0,$07,$00,$1A,$DD,$00,$F1
        .BYTE $01,$02,$00,$18,$01,$0B,$00,$02
        .BYTE $12,$01,$07,$00,$2A,$ED,$00,$59
        .BYTE $01,$04,$00,$18,$01,$03,$00,$02
        .BYTE $12,$F5,$00,$00,$00,$00,$01,$16
        .BYTE $05,$00,$00,$0A,$14,$00,$00,$07
        .BYTE $00,$00,$09,$22,$09,$39,$01,$07
        .BYTE $05,$00,$00,$00,$00,$00,$00,$5F
        .BYTE $00,$00,$09,$22,$1C,$5E,$FF,$01
        .BYTE $10,$02,$00,$07,$73,$40,$00,$5E
        .BYTE $00,$00,$09,$22,$3F,$0E,$FF,$02
        .BYTE $12,$02,$00,$07,$73,$40,$00,$5E
        .BYTE $00,$00,$09,$00,$0F,$14,$FF,$01
        .BYTE $0D,$02,$00,$09,$03,$00,$00,$5E
        .BYTE $00,$00,$0A,$00,$0F,$14,$FF,$01
        .BYTE $0D,$02,$00,$0A,$01,$00,$00,$07
        .BYTE $00,$00,$0B,$00,$0F,$00,$02,$0E
        .BYTE $01,$03,$00,$6B,$49,$00,$00,$36
        .BYTE $00,$20,$0C,$00,$56,$FF,$00,$80
        .BYTE $04,$01,$00,$35,$39,$00,$00,$D6
        .BYTE $00,$DD,$05,$00,$AF,$E8,$D3,$05
        .BYTE $01,$03,$00,$6B,$49,$00,$00,$36
        .BYTE $00,$00,$05,$00,$9B,$E8,$F3,$05
        .BYTE $01,$03,$00,$6B,$49,$00,$00,$36
        .BYTE $00,$00,$05,$00,$18,$00,$8C,$08
        .BYTE $06,$04,$00,$6B,$19,$00,$00,$40
        .BYTE $30,$D3,$05,$00,$1D,$B9,$03,$05
        .BYTE $09,$00,$00,$00,$00,$00,$00,$AF
        .BYTE $00,$0D,$0D,$00,$7E,$00,$E6,$01
        .BYTE $01,$01,$00,$6B,$19,$00,$F1,$40
        .BYTE $30,$00,$0E,$00,$06,$81,$08,$07
        .BYTE $04,$04,$E0,$47,$D7,$00,$00,$42
        .BYTE $40,$82,$0A,$00,$63,$FF,$10,$07
        .BYTE $02,$01,$00,$6B,$19,$00,$42,$40
        .BYTE $30,$00,$0A,$00,$8B,$00,$F6,$07
        .BYTE $06,$01,$00,$6B,$19,$00,$42,$40
        .BYTE $30,$00,$0F,$00,$18,$9D,$9E,$19
        .BYTE $09,$02,$00,$6B,$19,$00,$00,$40
        .BYTE $30,$00,$10,$07,$03,$01,$00,$04
        .BYTE $1A,$00,$00,$02,$13,$00,$00,$27
        .BYTE $30,$00,$04,$73,$0E,$D1,$FF,$01
        .BYTE $1A,$00,$00,$C5,$13,$00,$00,$47
        .BYTE $30,$00,$11,$73,$0E,$D1,$AA,$04
        .BYTE $1A,$00,$00,$C5,$13,$00,$00,$07
        .BYTE $30,$00,$11,$73,$0E,$D1,$EA,$04
        .BYTE $1A,$00,$00,$C5,$13,$00,$00,$07
        .BYTE $30,$00,$09,$00,$1A,$AF,$FF,$4A
        .BYTE $01,$02,$00,$9A,$00,$00,$00,$02
        .BYTE $00,$01,$09,$60,$11,$39,$01,$07
        .BYTE $0D,$00,$00,$00,$00,$00,$00,$5F
        .BYTE $00,$00,$05,$09,$02,$8A,$09,$07
        .BYTE $01,$01,$00,$00,$00,$00,$08,$51
        .BYTE $00,$80,$0A,$00,$3F,$00,$00,$02
        .BYTE $03,$04,$00,$4B,$00,$00,$60,$5E
        .BYTE $42,$7F
fAB8F   .BYTE $A8,$A8,$A8,$A8,$A8,$A8,$A8,$A8
        .BYTE $A8,$A8,$A8,$A8,$A8,$A9,$A9,$A9
        .BYTE $A9,$A9,$A9,$A9,$A9,$A9,$A9,$A9
        .BYTE $A9,$A9,$A9,$A9,$A9,$AA,$AA,$AA
        .BYTE $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
        .BYTE $AA,$AA,$AA,$AA,$AA,$AB,$AB,$AB
        .BYTE $AB,$AB,$AB,$AB
fABC3   .BYTE $4F,$4F,$5F,$6F,$7F,$8F,$9F,$AF
        .BYTE $BF,$CF,$DF,$EF,$FF,$0F,$1F,$2F
        .BYTE $3F,$4F,$5F,$6F,$7F,$8F,$9F,$AF
        .BYTE $BF,$CF,$DF,$EF,$FF,$0F,$1F,$2F
        .BYTE $3F,$4F,$5F,$6F,$7F,$8F,$9F,$AF
        .BYTE $BF,$CF,$DF,$EF,$FF,$0F,$1F,$2F
        .BYTE $3F,$4F,$5F,$6F
aABF7   .BYTE $67,$68,$73,$80,$92,$95,$9E,$A7
        .BYTE $B0,$B3,$BF,$CC,$CD,$D9,$E6,$F2
        .BYTE $FF,$09,$13,$1C,$25,$2D,$35,$41
        .BYTE $4D,$56,$5F,$72,$84,$88,$8D,$90
        .BYTE $95,$98,$9D,$A7,$B0,$B9,$C2,$CB
        .BYTE $D4,$DE,$ED,$FB,$09,$18,$23,$2E
        .BYTE $39,$40
aAC29   .BYTE $AD,$AD,$AD,$AD,$AD,$AD,$AD,$AD
        .BYTE $AD,$AD,$AD,$AD,$AD,$AD,$AD,$AD
        .BYTE $AD,$AE,$AE,$AE,$AE,$AE,$AE,$AE
        .BYTE $AE,$AE,$AE,$AE,$AE,$AE,$AE,$AE
        .BYTE $AE,$AE,$AE,$AE,$AE,$AE,$AE,$AE
        .BYTE $AE,$AE,$AE,$AE,$AF,$AF,$AF,$AF
        .BYTE $AF,$AF
fAC5B   .BYTE $07,$00,$09,$0C,$0E,$0A,$0D,$0F
        .BYTE $FF,$01,$01,$10,$02,$02,$10,$01
        .BYTE $04,$10,$01,$08,$10,$01,$29,$10
        .BYTE $02,$29,$10,$22,$29,$03,$22,$29
        .BYTE $03,$23,$29,$03,$22,$29,$03,$24
        .BYTE $2A,$03,$24,$2A,$03,$25,$2B,$03
        .BYTE $25,$2B,$03,$26,$2C,$03,$27,$2C
        .BYTE $03,$28,$2C,$03,$10,$2C,$01,$11
        .BYTE $29,$03,$11,$29,$03,$11,$2A,$03
        .BYTE $12,$2A,$03,$13,$2B,$03,$14,$2B
        .BYTE $03,$15,$2C,$03,$15,$2C,$03,$16
        .BYTE $2D,$03,$17,$2D,$03,$18,$2E,$03
        .BYTE $19,$2E,$03,$1A,$2F,$03,$1A,$2F
        .BYTE $03,$16,$2D,$03,$17,$2D,$03,$18
        .BYTE $2E,$03,$19,$2E,$03,$1A,$2F,$03
        .BYTE $1A,$2F,$03,$1B,$30,$03,$1B,$30
        .BYTE $03,$1B,$10,$03,$1B,$10,$01,$10
        .BYTE $31,$02,$1C,$31,$03,$1D,$31,$03
        .BYTE $1E,$31,$03,$1F,$31,$03,$20,$31
        .BYTE $03,$21,$31,$03,$22,$29,$03,$22
        .BYTE $29,$03,$23,$29,$03,$22,$29,$03
        .BYTE $24,$2A,$03,$24,$2A,$03,$25,$2B
        .BYTE $03,$25,$2B,$03,$26,$2C,$03,$27
        .BYTE $2C,$03,$28,$2C,$03,$10,$2C,$01
        .BYTE $11,$29,$03,$11,$29,$03,$11,$2A
        .BYTE $03,$12,$2A,$03,$13,$2B,$03,$14
        .BYTE $2B,$03,$15,$2C,$03,$15,$2C,$03
        .BYTE $16,$2D,$03,$17,$2D,$03,$18,$2E
        .BYTE $03,$19,$2E,$03,$1A,$2F,$03,$1A
        .BYTE $2F,$03,$16,$2D,$03,$17,$2D,$03
        .BYTE $18,$2E,$03,$19,$2E,$03,$1A,$2F
        .BYTE $03,$1A,$2F,$03,$1B,$30,$03,$1B
        .BYTE $30,$03,$1B,$10,$03,$1B,$10,$01
        .BYTE $05,$06,$07,$FF,$00,$C2,$D3,$D6
        .BYTE $D2,$D6,$C2,$D3,$D3,$D2,$D6,$00
        .BYTE $C2,$D3,$C1,$D6,$D3,$C2,$D2,$D6
        .BYTE $D3,$D3,$D2,$D6,$00,$C2,$D3,$C1
        .BYTE $D5,$D5,$D1,$D6,$D5,$D5,$D3,$D6
        .BYTE $D5,$D5,$D2,$D6,$D2,$D6,$00,$D0
        .BYTE $DD,$00,$E9,$C6,$03,$C1,$03,$03
        .BYTE $D0,$03,$00,$EA,$C6,$05,$C1,$05
        .BYTE $05,$D0,$05,$00,$E7,$C6,$75,$C1
        .BYTE $75,$75,$D0,$75,$00,$D0,$FF,$00
        .BYTE $E8,$C4,$03,$C2,$03,$03,$C4,$03
        .BYTE $C2,$03,$03,$00,$C4,$43,$C2,$43
        .BYTE $43,$C4,$73,$C2,$73,$73,$D0,$02
        .BYTE $00,$00,$EA,$C4,$74,$C2,$74,$74
        .BYTE $C4,$74,$C2,$74,$74,$00,$C4,$74
        .BYTE $C2,$74,$74,$C4,$B4,$C2,$B4,$B4
        .BYTE $D0,$03,$00,$E7,$C4,$04,$C2,$04
        .BYTE $04,$C4,$04,$C2,$04,$04,$00,$C4
        .BYTE $04,$C2,$04,$04,$C4,$75,$C2,$75
        .BYTE $75,$D0,$04,$00,$C2,$D5,$D5,$D5
        .BYTE $D5,$D5,$D5,$D5,$D5,$00,$C6,$E9
        .BYTE $43,$C2,$43,$23,$43,$C4,$73,$00
        .BYTE $C6,$43,$C2,$94,$23,$43,$C4,$73
        .BYTE $00,$C6,$53,$C2,$94,$23,$43,$C4
        .BYTE $73,$00,$C4,$53,$73,$53,$C2,$43
        .BYTE $03,$00,$C4,$23,$73,$53,$C2,$43
        .BYTE $03,$00,$C6,$23,$C2,$53,$C1,$73
        .BYTE $53,$C2,$43,$C4,$03,$00,$C6,$23
        .BYTE $C2,$53,$C1,$73,$53,$C2,$43,$23
        .BYTE $03,$00,$C6,$43,$C2,$73,$93,$73
        .BYTE $02,$B3,$00,$C6,$93,$C2,$73,$93
        .BYTE $73,$02,$B3,$00,$E8,$C1,$22,$93
        .BYTE $53,$93,$22,$93,$53,$93,$52,$93
        .BYTE $53,$93,$02,$23,$93,$73,$00,$C1
        .BYTE $22,$02,$B3,$73,$53,$23,$03,$B3
        .BYTE $73,$53,$23,$B4,$23,$B4,$74,$54
        .BYTE $00,$E8,$D0,$53,$00,$C4,$43,$CC
        .BYTE $23,$00,$D0,$53,$00,$C4,$94,$CC
        .BYTE $74,$00,$D0,$54,$00,$C4,$44,$CC
        .BYTE $24,$00,$E8,$C6,$74,$C2,$03,$53
        .BYTE $43,$C4,$03,$00,$C6,$43,$C2,$03
        .BYTE $53,$43,$C4,$03,$00,$C6,$94,$C2
        .BYTE $03,$53,$43,$23,$03,$00,$C6,$94
        .BYTE $C2,$74,$94,$43,$23,$03,$00,$C6
        .BYTE $B4,$C2,$03,$53,$43,$23,$03,$00
        .BYTE $C6,$B4,$C2,$03,$23,$03,$B4,$94
        .BYTE $00,$C2,$74,$94,$54,$74,$44,$54
        .BYTE $C4,$24,$00,$E7,$C3,$05,$C1,$05
        .BYTE $C2,$04,$A5,$75,$A5,$C1,$04,$75
        .BYTE $C2,$05,$C3,$96,$C1,$96,$C2,$95
        .BYTE $96,$45,$75,$C1,$95,$45,$C2,$05
        .BYTE $C3,$25,$C1,$25,$C2,$24,$04,$05
        .BYTE $95,$C1,$24,$05,$C2,$95,$C3,$76
        .BYTE $C1,$76,$C2,$75,$76,$C4,$D6,$E7
        .BYTE $C1,$25,$55,$C2,$76,$C3,$A6,$C1
        .BYTE $A6,$C2,$A5,$A6,$95,$96,$75,$76
        .BYTE $C3,$96,$C1,$96,$C2,$95,$96,$75
        .BYTE $76,$75,$76,$C3,$25,$C1,$25,$C2
        .BYTE $24,$26,$04,$05,$44,$45,$CC,$76
        .BYTE $C1,$76,$76,$C2,$76,$E7,$C1,$75
        .BYTE $B5,$24,$54,$74,$54,$24,$B5,$75
        .BYTE $B5,$24,$54,$74,$54
        BIT aB5
        .BYTE $00
sAF53   LDA a27
        CMP #$09
        BCC bAF65
        LDA a26
        BEQ bAF66
        CMP #$39
        BCS bAF65
        AND #$07
        BEQ bAF75
bAF65   RTS 

bAF66   LDA #$08
        STA aAF78
        LDY a84
        LDA f2362,Y
        STA aAF7B
        INC a84
bAF75   LDA a2D
aAF78   =*+$01
        ORA #$00
        TAY 
aAF7B   =*+$01
        LDA #$00
        STA f7CA0,Y
        INC aAF78
        RTS 

jAF83   LDA a54
        BEQ bAF93
        CLC 
        ADC f303D,X
        BCC bAF91
        LDA #$FF
        STA a53
bAF91   STA a54
bAF93   JMP b0E7A

        LDA a54
        BEQ bAFAC
        BPL bAFAF
        LDA f303D,X
        CMP f1DC4,Y
        BCS bAFAC
        DEC a54
        CLC 
        ADC #$01
        STA f303D,X
bAFAC   JMP b0E7A

bAFAF   LDA f303D,X
        BEQ bAFAC
        INC a54
        SEC 
        SBC #$01
        STA f303D,X
        JMP b0E7A

        LDA a54
        BEQ bAFDA
        BPL bAFDD
        LDA f303D,X
        CMP f1DC4,Y
        BCS bAFDA
        DEC a54
        DEC a54
        LDA f303D,X
        CLC 
        ADC #$02
        STA f303D,X
bAFDA   JMP b0E7A

bAFDD   LDA f303D,X
        CMP #$02
        BCS bAFDA
        INC a54
        INC a54
        SEC 
        SBC #$02
        STA f303D,X
        JMP b0E7A

        LDA a7D0C
        BEQ bB036
        LDA a26
        AND #$78
        BNE bB036
        LDA #$0C
        ORA a2D
        TAY 
        STA aB016
        LDA f7D20,Y
        BPL bB00E
        EOR #$FF
        CLC 
        ADC #$01
bB00E   TAY 
        LDA f2305,Y
        STA aB027
aB016   =*+$01
        LDY #$00
        LDA f7F60,Y
        BPL bB021
        EOR #$FF
        CLC 
        ADC #$01
bB021   TAY 
        LDA f2305,Y
        CLC 
aB027   =*+$01
        ADC #$00
        TAY 
        LDA f230B,Y
        CLC 
        ADC #$01
        STA aA975
        LDA #$53
        STA aE3
bB036   JMP b0E7A

        LDA f303D,X
        CLC 
        ADC aAB
        BCC bB043
        LDA #$FF
bB043   STA aAB
        LSR 
        LSR 
        LSR 
        LSR 
        LSR 
        STA aB051
        LDA a53
        SEC 
aB051   =*+$01
        SBC #$00
        STA a53
        LDA a54
        SBC #$00
        BCS bB05E
        LDA #$00
        STA a53
bB05E   STA a54
        JMP b0E7A

        LDA a54
        CMP #$FF
        BCS bB088
        LDY a6A
        BPL bB076
        LDY a55
        CPY #$FF
        BEQ bB088
        INY 
        BNE bB07B
bB076   LDY a55
        BEQ bB088
        DEY 
bB07B   STY a55
        ADC f303D,X
        BCC bB086
        LDA #$FF
        STA a53
bB086   STA a54
bB088   JMP b0E7A

        LDA a54
        BEQ bB09B
        CLC 
        ADC f303D,X
        BCC bB099
        LDA #$FF
        STA a53
bB099   STA a54
bB09B   JMP b0E7A

        LDA a54
        CMP f303D,X
        BCS bB0BF
        ADC f303D,X
        STA a54
        INC a25
        LDA #$01
        STA f3025,X
        LDA #$00
        STA f302D,X
        LDA #$FF
        STA f3035,X
        LDA #$F4
        STA aE4
bB0BF   JMP b0E7A

        LDA a55
        LSR 
        LSR 
        LSR 
        LSR 
        LSR 
        TAY 
        LDA f2A40,Y
        STA a2A38
        LDA #$18
        STA f3025,X
        JMP b0E7A

        LDA a82
        CMP a75
        BEQ bB0EA
        BCC bB0EA
        LDA f303D,X
        BEQ bB0EA
        DEC f303D,X
        INC a75
bB0EA   LDA a76
        BEQ bB0FB
        LDA f303D,X
        CMP f1DC4,Y
        BCS bB0FB
        DEC a76
        INC f303D,X
bB0FB   LDA f303D,X
        LSR 
        LSR 
        LSR 
        LSR 
        LSR 
        TAY 
        LDA f2A40,Y
        STA a2A39
        LDA #$19
        STA f3025,X
        JMP b0E7A

        LDA a54
        BPL bB12C
        LDA a76
        CMP #$07
        BCS bB12C
        INC a76
        LDA a54
        SEC 
        SBC f1DC4,Y
        BCS bB12A
        LDA #$00
        STA a53
bB12A   STA a54
bB12C   JMP b0E7A

        STX aB163
aB133   =*+$01
        LDY #$02
        LDX f2009,Y
        LDA f2036,Y
        STA fBF60,X
        LDX f2012,Y
        LDA f203F,Y
        STA fBF60,X
        LDA a65
        LDY a68
        JSR sB17D
        STY aB133
        LDX f2009,Y
        LDA f2024,Y
        STA fBF60,X
        LDX f2012,Y
        LDA f202D,Y
        STA fBF60,X
aB163   =*+$01
        LDX #$00
        LDA a26
        LSR 
        LSR 
        LSR 
        CLC 
        ADC #$04
        AND #$07
        TAY 
        LDA f30AD,Y
        STA a2A3B
        LDA #$1B
        STA f3025,X
        JMP b0E7A

sB17D   STY a1B
        STA a1A
        LDY #$08
        ORA a1B
        BEQ bB1B3
        LDA a1B
        BPL bB190
        EOR #$FF
        CLC 
        ADC #$01
bB190   STA a1D
        LDA a1A
        BPL bB19B
        EOR #$FF
        CLC 
        ADC #$01
bB19B   STA a1C
        ASL 
        CMP a1D
        BCC bB1C1
        LDA a1D
        ASL 
        CMP a1C
        BCC bB1CA
        LDA a1A
        BMI bB1B4
        LDA a1B
        BMI bB1BB
        LDY #$03
bB1B3   RTS 

bB1B4   LDA a1B
        BMI bB1BE
        LDY #$05
        RTS 

bB1BB   LDY #$01
        RTS 

bB1BE   LDY #$07
        RTS 

bB1C1   LDY #$00
        LDA a1B
        BMI bB1B3
        LDY #$04
        RTS 

bB1CA   LDY #$02
        LDA a1A
        BPL bB1B3
        LDY #$06
        RTS 

        JMP b0E7A

        LDA a54
        BEQ bB202
        LDA a36
        BPL bB1E3
        EOR #$FF
        CLC 
        ADC #$01
bB1E3   STA a0F
        CLC 
        LDA a38
        BPL bB1ED
        EOR #$FF
        SEC 
bB1ED   ADC a0F
        CMP f1DC4,Y
        BCC bB1F7
        LDA f1DC4,Y
bB1F7   CLC 
        ADC a54
        BCC bB200
        LDA #$FF
        STA a53
bB200   STA a54
bB202   JMP b0E7A

        LDA a75
        LSR 
        LSR 
        LSR 
        TAY 
        LDA f2A40,Y
        STA a2A3E
        LDA #$1E
        STA f3025,X
        JMP b0E7A

        LDA a58
        BNE bB239
        LDA a7D08
        BEQ bB22A
        LDY a7E28
        LDA f7EC0,Y
        BNE bB239
bB22A   LDA a7D09
        BEQ bB24C
        LDY a7E29
        BEQ bB24C
        LDA f7EC0,Y
        BEQ bB24C
bB239   LDA a26
        LSR 
        LSR 
        LSR 
        AND #$07
        TAY 
        BNE bB247
        LDA #$58
        STA aE4
bB247   LDA f30AD,Y
        BNE bB24E
bB24C   LDA #$08
bB24E   STA a2A3F
        LDA #$1F
        STA f3025,X
        JMP b0E7A

        LDY a0F
        LDA f7E00,Y
        BPL bB26E
        AND #$1F
        ORA a2C
        STA f7E00,Y
        TAX 
        JSR s5620
        JMP jB276

bB26E   LDX a10
        JSR s5620
        JSR s5410
jB276   JSR sB44D
        JSR s5A9B
        BCS bB2B0
        LDX a0F
        LDA f7E60,X
        CMP a8E
        BEQ bB28E
        BCC bB28E
        DEC f7E60,X
        BNE bB2B3
bB28E   SEC 
        SBC a7E
        SEC 
        SBC a87
        STA f7E60,X
        BEQ bB29B
        BPL bB2B3
bB29B   LDA #$5D
        STA aE3
bB29F   LDA #$0B
        STA f7D00,X
        LDA #$72
        STA f7CA0,Y
        LDA #$00
        STA a87
        JMP j54FD

bB2B0   JMP j5616

bB2B3   LDA #$00
        STA a87
        LDA a7A
        BEQ bB2FD
        CMP #$60
        BCC bB2E0
        CMP #$E4
        BCS bB31B
        CMP #$E0
        BCS bB2E0
        CMP #$B8
        BCC bB2FD
        CMP #$C0
        BCS bB2FD
        LDA f7E60,X
        SEC 
        SBC a74
        STA f7E60,X
        BEQ bB29F
        BCC bB29F
        BCS bB2FD
bB2DE   LDX a0F
bB2E0   LDA a8E
        CMP f7E60,X
        BEQ bB2F5
        BCC bB2F5
        LDA #$01
        JSR s61A4
        DEC f7E60,X
        BEQ bB300
        BNE bB2FD
bB2F5   JSR s61A4
        BEQ bB300
        STA f7E60,X
bB2FD   JMP j54FD

bB300   LDA #$10
        STA f7D00,X
        LDA #$0A
        STA f7E60,X
        LDA #$00
        STA f7D20,X
        TXA 
        AND #$03
        CLC 
        ADC #$B0
        STA f7CA0,Y
        JMP j54FD

bB31B   AND #$1F
        LSR 
        LSR 
        TAX 
        LDA f302D,X
        BEQ bB2DE
        LDA #$01
        STA f3025,X
        LDA #$00
        STA f302D,X
        LDA #$FF
        STA f3035,X
        LDA #$EC
        STA aE4
        LDX a0F
        LDA #$00
        STA f7D20,X
        STA f7E80,X
        JMP bB29F

        LDY a0F
        LDA f7E00,Y
        BPL bB360
        CMP #$FF
        BEQ bB360
        AND #$1F
        ORA a2C
        TAX 
        LDA #$FF
        STA f7E00,Y
        JSR s5620
        JMP jB368

bB360   LDX a10
        JSR s5620
        JSR s5410
jB368   JSR s5C7A
        LDY a11
        JSR sB44D
        LDX a0F
        LDA f7E60,X
        CMP a8E
        BEQ bB37E
        BCC bB37E
        DEC f7E60,X
bB37E   JSR s5B2E
        JSR s5A9B
        BCC bB389
        JMP jB44A

bB389   LDX a0F
        LDA f7E60,X
        CMP a8E
        BEQ bB394
        BCS bB3B4
bB394   SEC 
        SBC a7E
        SEC 
        SBC a87
        BMI bB39E
        BNE bB3A1
bB39E   JMP jB422

bB3A1   STA f7E60,X
        CMP a8E
        BEQ bB3B4
        CMP f7E00,X
        BCS bB3B4
        STA f7E00,X
        LDA #$33
        STA aE4
bB3B4   LDA #$00
        STA a87
        LDA a7A
        BNE bB3BF
        JMP jB442

bB3BF   CMP #$60
        BCC bB3EC
        CMP #$B8
        BCC jB442
        CMP #$C0
        BCS jB442
        LDA f7E60,X
        CMP a8E
        BEQ bB3D4
        BCS jB442
bB3D4   SEC 
        SBC a74
        BEQ jB422
        BCC jB422
        STA f7E60,X
        CMP f7E00,X
        BCS jB442
        STA f7E00,X
        LDA #$33
        STA aE4
        BNE jB442
bB3EC   JSR sB4A4
        LDA f7E60,X
        CMP a8E
        BEQ bB3F8
        BCS jB442
bB3F8   JSR s61A4
        BEQ jB422
        LDA $D41B    ;Oscillator 3 Output
        AND #$03
        CLC 
        ADC a08
        EOR #$FF
        ADC #$01
        CLC 
        ADC f7E60,X
        BEQ jB422
        BMI jB422
        STA f7E60,X
        CMP f7E00,X
        BCS jB442
        STA f7E00,X
        LDA #$33
        STA aE4
        BNE jB442
jB422   LDA #$00
        STA f7E60,X
        STA a87
        LDA #$0B
        STA f7D00,X
        LDA #$72
        LDY a11
        STA f7CA0,Y
        LDY f7BE0,X
        LDX f2159,Y
        JSR s499A
        LDA #$5D
        STA aE3
jB442   JSR sB878
        LDY a11
        JMP j54FD

jB44A   JMP b5547

sB44D   LDA a35
        CLC 
        ADC f7B80,Y
        STA f7B80,Y
        LDA a36
        BMI bB46B
        ADC f7C20,Y
        STA f7C20,Y
        LDA f7D20,Y
        ADC #$00
        STA f7D20,Y
        JMP jB479

bB46B   ADC f7C20,Y
        STA f7C20,Y
        LDA f7D20,Y
        ADC #$FF
        STA f7D20,Y
jB479   LDA a37
        CLC 
        ADC f7FA0,Y
        STA f7FA0,Y
        LDA a38
        BMI bB495
        ADC f7C60,Y
        STA f7C60,Y
        LDA f7F60,Y
        ADC #$00
        STA f7F60,Y
        RTS 

bB495   ADC f7C60,Y
        STA f7C60,Y
        LDA f7F60,Y
        ADC #$FF
        STA f7F60,Y
        RTS 

sB4A4   LDY a7A
        BMI bB4D6
        LDA f2219,Y
        CMP #$FF
        BEQ bB4D6
        LDA f7D20,X
        AND #$F8
        SEC 
        SBC f2219,Y
        CMP #$40
        BCC bB4C0
        CMP #$C0
        BCC bB4D6
bB4C0   EOR #$FF
        SEC 
        ADC f2219,Y
        STA aB4CF
        LDA f7D20,X
        AND #$07
aB4CF   =*+$01
        ORA #$00
        STA f7D20,X
        STA f7E80,X
bB4D6   LDY a11
        RTS 

sB4D9   LDY a56
        BMI bB4FE
        CPY #$07
        BCS bB509
        LDA fB4F0,Y
        STA aB4EE
        LDA fB4F7,Y
        STA aB4EF
aB4EE   =*+$01
aB4EF   =*+$02
        JMP jB514

fB4F0   .BYTE $14,$3F,$B1,$18,$18,$18,$09
fB4F7   .BYTE $B5,$B5,$B5,$B6,$B6,$B6,$B5
bB4FE   LDA a18
        BEQ bB508
        LDA a56
        AND #$7F
        STA a56
bB508   RTS 

aB50A   =*+$01
bB509   LDY #$00
        DEY 
        STY aB50A
        BNE bB508
        INC a25
        RTS 

jB514   LDX #$00
        LDY #$00
bB518   LDA f21,X
        CMP (p61),Y
        BEQ bB522
        BCS bB52B
        BCC bB528
bB522   INY 
        INX 
        CPX #$04
        BCC bB518
bB528   INC a25
        RTS 

bB52B   INC a56
        LDX #$31
        LDY #$1C
        JSR s3F3F
        LDA #$40
        STA aB50A
        LDA #$72
        STA aB80A
        RTS 

        LDA a26
        AND #$0F
        BNE bB508
        LDA a3EC3
        BEQ bB55E
        LDX #$00
        LDY #$00
bB54E   LDA f21,X
        CMP (p61),Y
        BEQ bB558
        BCS bB56F
        BCC bB55E
bB558   INY 
        INX 
        CPX #$04
        BCC bB54E
bB55E   LDA a61
        SEC 
        SBC #$07
        STA a61
        BCS bB569
        DEC a62
bB569   INC a3EC3
        INC a56
        RTS 

bB56F   LDA a3EC3
        CMP #$0A
        BEQ bB5A2
        LDA a61
        STA a1C
        SEC 
        SBC #$07
        STA a61
        LDA a62
        STA a1D
        SBC #$00
        STA a62
        INC a3EC3
        LDY #$06
bB58C   LDA (p1C),Y
        STA (p61),Y
        DEY 
        BPL bB58C
        LDX #<f2D91
        LDY #>f2D91
        STX a1A
        STY a1B
        JSR s3EC0
        LDA #$1E
        STA aE3
bB5A2   DEC a3EC3
        CLC 
        LDA a61
        ADC #$07
        STA a61
        BCC bB5B0
        INC a62
bB5B0   RTS 

        LDX #$03
        LDY #$03
bB5B5   LDA f21,X
        STA (p61),Y
        DEY 
        DEX 
        BPL bB5B5
        LDA a59
        ASL 
        ADC a59
        ADC #$02
        TAX 
        LDY #$06
bB5C7   LDA f320E,X
        STX a10
        TAX 
        LDA f1CFA,X
        STA (p61),Y
        LDX a10
        DEX 
        DEY 
        CPY #$04
        BCS bB5C7
        INX 
        STX a84
        LDA f320E,X
        STA a85
        LDA #$04
        STA a88
        LDX a61
        LDY a62
        STX aAA
        STY aAB
        LDA a3EC3
        STA aB60C
        LDX #<f2D91
        LDY #>f2D91
        STX a1A
        STY a1B
        JSR s3EC0
        LDA #$1E
        STA aE3
        LDX aAA
        LDY aAB
        STX a61
        STY a62
aB60C   =*+$01
        LDA #$00
        STA a3EC3
        LDA a56
        CLC 
        ADC #$81
        STA a56
        RTS 

        LDA a26
        AND #$03
        BNE bB664
        LDA a18
        BEQ bB665
        LDA a16
        ORA a17
        BEQ bB664
        CLC 
        ADC a85
        BMI bB635
        CMP #$1C
        BCC bB638
        LDA #$00
        BEQ bB638
bB635   CLC 
        ADC #$1C
bB638   STA a85
        TAX 
        LDA f1CFA,X
        LDY a88
        STA (p61),Y
        LDA #$24
        STA aE3
        LDX #<f2D91
        LDY #>f2D91
        STX a1A
        STY a1B
        LDA a3EC3
        STA aB658
        JSR s3EC0
aB658   =*+$01
        LDA #$00
        STA a3EC3
        LDX aAA
        LDY aAB
        STX a61
        STY a62
bB664   RTS 

bB665   LDA a56
        CLC 
        ADC #$81
        STA a56
        LDA a85
        LDX a84
        STA f320E,X
        INX 
        STX a84
        LDA f320E,X
        STA a85
        INC a88
        LDA #$21
        STA aE4
        RTS 

sB682   LDY a56
        BMI bB6A7
        CPY #$07
        BCS bB6B2
        LDA fB699,Y
        STA aB697
        LDA fB6A0,Y
        STA aB698
aB697   =*+$01
aB698   =*+$02
        JMP jB6BD

fB699   .BYTE $BD,$E5,$57,$BE,$BE,$BE,$B2
fB6A0   .BYTE $B6,$B6,$B7,$B7,$B7,$B7,$B6
bB6A7   LDA a18
        BEQ bB6B1
        LDA a56
        AND #$7F
        STA a56
bB6B1   RTS 

aB6B3   =*+$01
bB6B2   LDY #$00
        DEY 
        STY aB6B3
        BNE bB6B1
        INC a25
        RTS 

jB6BD   LDX #$00
        LDY #$00
bB6C1   LDA f21,X
        CMP (p61),Y
        BEQ bB6CB
        BCS bB6D4
        BCC bB6D1
bB6CB   INY 
        INX 
        CPX #$04
        BCC bB6C1
bB6D1   INC a25
        RTS 

bB6D4   INC a56
        LDX #$48
        LDY #$1C
        JSR s3F3F
        LDA #$40
        STA aB6B3
        STA a7B
        RTS 

        LDA a26
        AND #$0F
        BNE bB6B1
        LDA a3EC3
        BEQ bB704
        LDX #$00
        LDY #$00
bB6F4   LDA f21,X
        CMP (p61),Y
        BEQ bB6FE
        BCS bB715
        BCC bB704
bB6FE   INY 
        INX 
        CPX #$04
        BCC bB6F4
bB704   LDA a61
        SEC 
        SBC #$07
        STA a61
        BCS bB70F
        DEC a62
bB70F   INC a3EC3
        INC a56
        RTS 

bB715   LDA a3EC3
        CMP #$0A
        BEQ bB748
        LDA a61
        STA a1C
        SEC 
        SBC #$07
        STA a61
        LDA a62
        STA a1D
        SBC #$00
        STA a62
        INC a3EC3
        LDY #$06
bB732   LDA (p1C),Y
        STA (p61),Y
        DEY 
        BPL bB732
        LDX #<f2D91
        LDY #>f2D91
        STX a1A
        STY a1B
        JSR s3EC0
        LDA #$1F
        STA aE3
bB748   DEC a3EC3
        CLC 
        LDA a61
        ADC #$07
        STA a61
        BCC bB756
        INC a62
bB756   RTS 

        LDX #$03
        LDY #$03
bB75B   LDA f21,X
        STA (p61),Y
        DEY 
        DEX 
        BPL bB75B
        LDA a59
        ASL 
        ADC a59
        ADC #$02
        TAX 
        LDY #$06
bB76D   LDA f320E,X
        STX a10
        TAX 
        LDA f1CFA,X
        STA (p61),Y
        LDX a10
        DEX 
        DEY 
        CPY #$04
        BCS bB76D
        INX 
        STX a84
        LDA f320E,X
        STA a85
        LDA #$04
        STA a88
        LDX a61
        LDY a62
        STX aAA
        STY aAB
        LDA a3EC3
        STA aB7B2
        LDX #<f2D91
        LDY #>f2D91
        STX a1A
        STY a1B
        JSR s3EC0
        LDX aAA
        LDY aAB
        STX a61
        STY a62
        LDA #$1F
        STA aE3
aB7B2   =*+$01
        LDA #$00
        STA a3EC3
        LDA a56
        CLC 
        ADC #$81
        STA a56
        RTS 

        LDA a26
        AND #$0F
        CMP #$02
        BEQ bB7C7
        RTS 

bB7C7   LDA a56
        CLC 
        ADC #$81
        STA a56
        LDA a85
        LDX a84
        STA f320E,X
        INX 
        STX a84
        LDA f320E,X
        STA a85
        INC a88
        LDA #$22
        STA aE4
        RTS 

sB7E4   LDA a26
        AND #$01
        BEQ bB824
        LDX a0C
bB7EC   LDA f7D00,X
        BEQ bB7F5
        DEX 
        BPL bB7EC
        RTS 

bB7F5   TXA 
        ORA a2D
        TAY 
        LDA $D41B    ;Oscillator 3 Output
        AND #$3F
        CLC 
        ADC #$71
        STA f7C60,Y
        LDA #$00
        STA f7F60,Y
aB80A   =*+$01
        LDA #$7A
        BEQ bB824
        STA f7CA0,Y
        LDA $D41B    ;Oscillator 3 Output
        CLC 
        ADC #$28
        STA f7C20,Y
        LDA #$00
        ROL 
        STA f7D20,Y
        LDA #$11
        STA f7D00,X
bB824   RTS 

sB825   LDA #$00
        STA a25
        STA a56
        LDX #<p325A
        LDY #>p325A
        STX a61
        STY a62
        LDA #$0A
        STA a3EC3
bB838   JSR s10DE
        JSR s61E2
        JSR s10E3
        JSR s54B1
        JSR sB7E4
        JSR sB4D9
        LDA a25
        BEQ bB838
        LDA #$00
        STA a25
        STA a56
        LDX #<p3214
        LDY #>p3214
        STX a61
        STY a62
        LDA #$0A
        STA a3EC3
bB861   JSR s10DE
        JSR s61E2
        JSR s10E3
        JSR s54B1
        JSR sB7E4
        JSR sB682
        LDA a25
        BEQ bB861
        RTS 

sB878   LDY a0F
        LDX f7BE0,Y
        LDA f2119,X
        BIT a6E9A
        BNE bB899
        AND #$40
        BNE bB8B5
        LDA a0F
        AND #$07
        STA aB895
        LDA a26
        AND #$07
aB895   =*+$01
        CMP #$00
        BEQ bB8AC
        RTS 

bB899   AND #$40
        BNE bB8D4
        LDA f7E60,Y
        CMP a8E
        BCS bB8D4
        LDA a0F
        EOR a26
        AND #$01
        BNE bB8D4
bB8AC   LDA $D41B    ;Oscillator 3 Output
        CMP a8D
        BCS bB8D4
        BCC bB8BA
bB8B5   LDA f7E60,Y
        BNE bB8D4
bB8BA   LDX f7BE0,Y
        LDA f20D9,X
        BMI bB93B
        AND #$3F
        STA aB8F3
        LDX #$0D
bB8C9   LDA f7D00,X
        BEQ bB8D5
        INX 
        CPX a1372
        BCC bB8C9
bB8D4   RTS 

bB8D5   LDA #$07
        STA f7D00,X
        LDA a8E
        CLC 
        ADC #$0F
        STA f7E60,X
        TYA 
        ORA #$80
        STA f7E00,X
        LDA #$00
        STA f7E40,X
        LDA #$01
        STA f7E20,X
aB8F3   =*+$01
        LDA #$00
        STA f7BE0,X
        TAY 
        LDA f2099,Y
        STA aB920
        STA aB929
        LDA $D41B    ;Oscillator 3 Output
        AND #$F8
        ORA f2199,Y
        STA f7D20,X
        STA f7E80,X
        LDA f2199,Y
        STA f7860,X
        LDA f21D9,Y
        STA f78A0,X
        TXA 
        ORA a2C
        TAY 
aB920   =*+$01
        LDA #$00
        STA f7CA0,Y
        TXA 
        ORA a2D
        TAY 
aB929   =*+$01
        LDA #$00
        STA f7CA0,Y
        TXA 
        ASL 
        TAX 
        LDA a7910
        STA f76,X
        LDA a7A10
        STA f77,X
        RTS 

bB93B   AND #$3F
        STA aB96B
        LDX #$13
bB942   LDA f7D00,X
        BEQ bB94D
        INX 
        CPX a0C
        BCC bB942
        RTS 

bB94D   LDA #$08
        STA f7D00,X
        LDA a8E
        CLC 
        ADC #$03
        STA f7E60,X
        TYA 
        ORA #$80
        STA f7E00,X
        LDA #$00
        STA f7E40,X
        LDA #$01
        STA f7E20,X
aB96B   =*+$01
        LDA #$00
        STA f7BE0,X
        STX aB992
        TAY 
        LDA f1F6C,Y
        STA f78A0,X
        LDA f1F2C,Y
        STA aB9A7
        STA aB9A0
        LDA f1F4C,Y
        AND #$70
        LSR 
        LSR 
        LSR 
        LSR 
        STA aB994
        JSR sB9AC
aB992   =*+$01
        LDX #$00
aB994   =*+$01
        ORA #$00
        STA f7D20,X
        LDA f1F4C,Y
        AND #$8F
        BEQ bB9A2
aB9A0   =*+$01
        STA a2500
bB9A2   TXA 
        ORA a2C
        TAY 
aB9A7   =*+$01
        LDA #$00
        STA f7CA0,Y
        RTS 

sB9AC   LDA a19
        CMP #$04
        BNE bB9B8
        LDA $D41B    ;Oscillator 3 Output
        JMP jB9E9

bB9B8   LDA $D41B    ;Oscillator 3 Output
        CMP $0250
        BCC jB9E9
        STA aB9C8
        JSR s5B81
        TAX 
aB9C8   =*+$01
        LDA #$00
        CMP $0251
        BCC bB9ED
        CMP $0252
        BCC bB9F1
        CMP $0253
        BCC bB9F5
        CMP $0254
        BCC bB9F9
        CMP $0255
        BCC bB9FD
        CMP $0256
        BCC bBA01
        TXA 
        RTS 

jB9E9   ASL 
        ASL 
        ASL 
        RTS 

bB9ED   TXA 
        ADC #$E8
        RTS 

bB9F1   TXA 
        ADC #$18
        RTS 

bB9F5   TXA 
        ADC #$F0
        RTS 

bB9F9   TXA 
        ADC #$10
        RTS 

bB9FD   TXA 
        ADC #$F8
        RTS 

bBA01   TXA 
        ADC #$08
        RTS 

        BRK #$00
        BRK #$00
        BRK #$00
        BRK #$00
        BRK #$00
        BRK #$99
        AND (p9D,X)
        RTS 

        SEI 
        LDA f21D9,Y
        STA f78A0,X
        TXA 
        ORA a2C
        TAY 
        LDA #$00
        STA f7CA0,Y
        TXA 
        ORA a2D
        TAY 
        LDA #$00
        STA f7CA0,Y
        TXA 
        ASL 
        TAX 
        LDA a7910
        STA f76,X
        LDA a7A10
        STA f77,X
        RTS 

        AND #$3F
        STA aB96B
        LDX #$13
bBA42   LDA f7D00,X
        BEQ bBA4D
        INX 
        CPX a0C
        BCC bBA42
        RTS 

bBA4D   LDA #$08
        STA f7D00,X
        LDA a8E
        CLC 
        ADC #$03
        STA f7E60,X
        TYA 
        ORA #$80
        STA f7E00,X
        LDA #$00
        STA f7E40,X
        LDA #$01
        STA f7E20,X
        LDA #$00
        STA f7BE0,X
        STX aB992
        TAY 
        LDA f1F6C,Y
        STA f78A0,X
        LDA f1F2C,Y
        STA aB9A7
        STA aB9A0
        LDA f1F4C,Y
        AND #$70
        LSR 
        LSR 
        LSR 
        LSR 
        STA aB994
        JSR sB9AC
        LDX #$00
        ORA #$00
        STA f7D20,X
        LDA f1F4C,Y
        AND #$8F
        BEQ bBAA2
        STA a2500
bBAA2   TXA 
        ORA a2C
        TAY 
        LDA #$00
        STA f7CA0,Y
        RTS 

        LDA a19
        CMP #$04
        BNE bBAB8
        LDA $D41B    ;Oscillator 3 Output
        JMP jB9E9

bBAB8   LDA $D41B    ;Oscillator 3 Output
        CMP $0250
        BCC bBAE9
        STA aB9C8
        JSR s5B81
        TAX 
        LDA #$00
        CMP $0251
        BCC bBAED
        CMP $0252
        BCC bBAF1
        CMP $0253
        BCC bBAF5
        CMP $0254
        BCC bBAF9
        CMP $0255
        BCC bBAFD
        CMP $0256
        BCC bBB01
        TXA 
        RTS 

bBAE9   ASL 
        ASL 
        ASL 
        RTS 

bBAED   TXA 
        ADC #$E8
        RTS 

bBAF1   TXA 
        ADC #$18
        RTS 

bBAF5   TXA 
        ADC #$F0
        RTS 

bBAF9   TXA 
        ADC #$10
        RTS 

bBAFD   .BYTE $8A,$69,$F8
fBB00   .BYTE $FF
bBB01   .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF
fBB10   .BYTE $FF,$FF,$FF,$FF,$F7,$FB,$FD,$FF
        .BYTE $FF,$FF,$FD,$FB,$F7,$FF,$FF,$FF
fBB20   .BYTE $FF,$FF,$FF,$FF,$F7,$EF,$DF,$FF
        .BYTE $FF,$FF,$DF,$EF,$F7,$FF,$FF,$FF
fBB30   .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $E4,$E4,$E4,$E4,$E4,$E9,$E4,$E9
        .BYTE $E9,$E9,$E4,$E9,$E4,$E4,$E4,$E4
        .BYTE $E4,$E5,$FA,$FF,$FF,$FF,$FF,$FF
        .BYTE $00,$55,$AA,$FF,$B7,$FB,$FF,$FF
        .BYTE $11,$66,$AA,$FF,$30,$75,$BA,$FF
        .BYTE $44,$99,$AA,$FF,$0C,$5D,$AE,$FF
        .BYTE $00,$55,$AA,$FF,$DE,$EF,$FF,$FF
        .BYTE $57,$5B,$AF,$FF,$FF,$FF,$FF,$FF
        .BYTE $93,$93,$93,$93,$93,$A7,$93,$A7
        .BYTE $A7,$A7,$93,$A7,$93,$93,$93,$93
        .BYTE $FF,$AA,$D5,$F0,$FD,$FF,$FF,$FF
        .BYTE $FF,$AA,$55,$00,$55,$AA,$FF,$FF
        .BYTE $FF,$AA,$57,$0F,$7F,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
fBC00   .BYTE $55,$54,$55,$50,$55,$41,$55,$04
        .BYTE $55,$15,$55,$05,$55,$41,$55,$10
        .BYTE $04,$55,$41,$55,$50,$55,$54,$55
        .BYTE $10,$55,$41,$55,$05,$55,$15,$55
        .BYTE $55,$54,$56,$F5,$7D,$5F,$9F,$4E
        .BYTE $55,$55,$5D,$7D,$F4,$D9,$D5,$FD
        .BYTE $7F,$5F,$57,$5F,$FF,$D4,$56,$45
        .BYTE $FF,$B5,$F4,$F6,$75,$7D,$5D,$55
        .BYTE $55,$55,$F4,$FF,$7E,$5F,$5F,$5F
        .BYTE $55,$5D,$7F,$FD,$FD,$F5,$BD,$FF
        .BYTE $FE,$7F,$5F,$7F,$FF,$FD,$D4,$56
        .BYTE $EF,$FF,$B5,$F5,$FD,$7D,$7F,$5F
        .BYTE $55,$61,$5A,$B9,$BF,$1F,$0F,$47
        .BYTE $59,$A1,$66,$BE,$F1,$F9,$D9,$F8
        .BYTE $3F,$0B,$47,$2F,$3D,$49,$40,$50
        .BYTE $FA,$D9,$FA,$B2,$7D,$05,$19,$45
        .BYTE $55,$61,$5A,$A9,$99,$3D,$0F,$4F
        .BYTE $59,$A1,$66,$AA,$51,$79,$F9,$D8
        .BYTE $17,$0B,$4F,$2D,$01,$49,$40,$50
        .BYTE $FA,$D9,$FA,$B2,$41,$05,$19,$45
        .BYTE $55,$61,$5A,$A9,$99,$15,$07,$4F
        .BYTE $59,$A1,$66,$AA,$51,$69,$99,$D8
        .BYTE $1F,$0B,$47,$25,$01,$49,$40,$50
        .BYTE $EA,$59,$DA,$92,$41,$05,$19,$45
        .BYTE $55,$61,$5A,$A9,$9B,$1F,$0F,$4F
        .BYTE $59,$A1,$66,$AA,$51,$E9,$99,$F8
        .BYTE $1F,$0B,$4F,$2F,$03,$49,$40,$50
        .BYTE $EA,$D9,$FA,$92,$41,$05,$19,$45
        .BYTE $55,$61,$5A,$AB,$BB,$3F,$0F,$4F
        .BYTE $59,$A1,$66,$AA,$F1,$E9,$99,$F8
        .BYTE $3F,$0B,$4F,$2D,$03,$4B,$40,$50
        .BYTE $EA,$F9,$FA,$B2,$C1,$05,$19,$45
        .BYTE $55,$6A,$3F,$3F,$3F,$3F,$3F,$33
        .BYTE $55,$A9,$FE,$FE,$FE,$FE,$EE,$DE
        .BYTE $37,$3B,$3F,$3F,$3F,$3F,$40,$55
        .BYTE $CE,$FE,$FE,$FE,$FE,$FE,$01,$55
        .BYTE $55,$6A,$3F,$3F,$3F,$3F,$33,$37
        .BYTE $55,$A9,$FE,$FE,$FE,$FE,$FE,$EE
        .BYTE $3B,$3F,$3F,$3F,$3F,$3F,$40,$55
        .BYTE $DE,$CE,$FE,$FE,$FE,$FE,$01,$55
        .BYTE $55,$6A,$3F,$3F,$3F,$33,$37,$3B
        .BYTE $55,$A9,$FE,$FE,$FE,$FE,$FE,$FE
        .BYTE $3F,$3F,$3F,$3F,$3F,$3F,$40,$55
        .BYTE $EE,$DE,$CE,$FE,$FE,$FE,$01,$55
        .BYTE $55,$6A,$3F,$3F,$3C,$37,$3B,$3F
        .BYTE $55,$A9,$FE,$FE,$FE,$FE,$FE,$FE
        .BYTE $3F,$3F,$3F,$3F,$3F,$3F,$40,$55
        .BYTE $FE,$EE,$DE,$3E,$FE,$FE,$01,$55
        .BYTE $55,$6A,$3F,$3F,$3D,$3B,$3F,$3F
        .BYTE $55,$A9,$FE,$FE,$3E,$FE,$FE,$FE
        .BYTE $3F,$3F,$3F,$3C,$3F,$3F,$40,$55
        .BYTE $FE,$FE,$EE,$7E,$FE,$FE,$01,$55
        .BYTE $55,$6A,$3F,$3F,$3E,$3F,$3F,$3F
        .BYTE $55,$A9,$FE,$FE,$7E,$CE,$FE,$FE
        .BYTE $3F,$3F,$33,$3D,$3F,$3F,$40,$55
        .BYTE $FE,$FE,$FE,$BE,$FE,$FE,$01,$55
        .BYTE $55,$6A,$3F,$3F,$3F,$3F,$3F,$3F
        .BYTE $55,$A9,$FE,$FE,$BE,$DE,$CE,$FE
        .BYTE $3F,$33,$37,$3E,$3F,$3F,$40,$55
        .BYTE $FE,$FE,$FE,$FE,$FE,$FE,$01,$55
        .BYTE $55,$6A,$3F,$3F,$3F,$3F,$3F,$3F
        .BYTE $55,$A9,$FE,$FE,$FE,$EE,$DE,$CE
        .BYTE $33,$37,$3B,$3F,$3F,$3F,$40,$55
        .BYTE $FE,$FE,$FE,$FE,$FE,$FE,$01,$55
        .BYTE $6A,$3B,$19,$1D,$22,$37,$08,$1D
        .BYTE $AA,$BA,$9A,$DE,$26,$7A,$8A,$DE
        .BYTE $22,$37,$08,$1D,$22,$37,$08,$00
        .BYTE $26,$7A,$8A,$DE,$26,$7A,$8A,$01
        .BYTE $40,$95,$9F,$AF,$AA,$9F,$AF,$AA
        .BYTE $00,$54,$C4,$F4,$94,$C4,$F4,$94
        .BYTE $95,$9F,$AF,$AA,$9F,$AF,$AA,$AA
        .BYTE $54,$C4,$F4,$A4,$C4,$F4,$94,$A9
        .BYTE $40,$95,$AA,$A6,$B2,$B6,$B6,$B5
        .BYTE $00,$54,$A8,$98,$C8,$D8,$D8,$58
        .BYTE $B5,$B7,$B6,$BA,$BE,$BA,$AA,$FF
        .BYTE $58,$D8,$D8,$E8,$F8,$E8,$A9,$FE
        .BYTE $55,$55,$55,$55,$56,$6A,$A9,$69
        .BYTE $55,$55,$45,$B1,$AC,$B1,$6C,$B1
        .BYTE $A5,$69,$A5,$69,$A6,$6A,$A9,$65
        .BYTE $6C,$B1,$6C,$B1,$A5,$55,$55,$55
        .BYTE $56,$5B,$5F,$6F,$7F,$7E,$7F,$79
        .BYTE $A5,$F9,$FD,$BE,$FF,$6F,$FF,$1B
        .BYTE $7F,$7E,$7F,$4F,$5F,$53,$54,$55
        .BYTE $FF,$6F,$FF,$BC,$FD,$F1,$05,$55
        .BYTE $56,$5B,$5E,$6D,$7C,$7F,$79,$79
        .BYTE $A5,$F9,$AD,$5E,$0F,$FF,$1B,$1B
        .BYTE $79,$7F,$7C,$4D,$5E,$53,$54,$55
        .BYTE $1B,$FF,$0F,$5C,$AD,$F1,$05,$55
        .BYTE $6A,$2A,$26,$26,$3B,$2E,$3B,$26
        .BYTE $AA,$EE,$BA,$EE,$9A,$4A,$9A,$EE
        .BYTE $11,$26,$3B,$2E,$3B,$26,$11,$00
        .BYTE $BA,$EE,$9A,$4A,$9A,$EE,$BA,$01
        .BYTE $56,$5B,$6F,$7F,$69,$BF,$BF,$69
        .BYTE $25,$39,$3E,$3F,$50,$7F,$7F,$50
        .BYTE $BF,$BF,$69,$BF,$8F,$57,$58,$56
        .BYTE $7F,$7F,$50,$BF,$BC,$B1,$85,$95
        .BYTE $55,$55,$56,$53,$53,$67,$3F,$3F
        .BYTE $55,$55,$95,$E5,$E5,$E9,$FE,$FE
        .BYTE $3F,$43,$53,$53,$54,$55,$55,$55
        .BYTE $FE,$D1,$E5,$E5,$15,$55,$55,$55
        .BYTE $55,$54,$50,$40,$40,$92,$97,$97
        .BYTE $55,$15,$05,$01,$01,$81,$C1,$C1
        .BYTE $A7,$AB,$A8,$AA,$AA,$AA,$AA,$6A
        .BYTE $D1,$D5,$15,$A5,$A9,$A5,$95,$55
        .BYTE $55,$55,$50,$45,$95,$9F,$97,$97
        .BYTE $55,$55,$05,$51,$54,$F4,$D4,$D4
        .BYTE $97,$97,$9F,$95,$A5,$6A,$5A,$55
        .BYTE $D4,$D4,$F4,$54,$59,$A5,$95,$55
fBF60   .BYTE $00,$55,$54,$56,$45,$65,$55,$14
        .BYTE $01,$55,$55,$55,$45,$65,$55,$5D
        .BYTE $96,$55,$45,$65,$54,$56,$55,$AA
        .BYTE $5D,$55,$45,$65,$55,$55,$55,$A9
        .BYTE $55,$57,$4F,$4F,$53,$70,$F7,$F7
        .BYTE $55,$D5,$F1,$F1,$C5,$0D,$DF,$DF
        .BYTE $F7,$F7,$BA,$9B,$AF,$AF,$6B,$56
        .BYTE $DF,$DF,$AD,$E5,$F9,$F9,$E5,$95
        .BYTE $55,$5A,$46,$4F,$4F,$4C,$40,$45
        .BYTE $55,$A9,$A9,$F9,$F9,$39,$09,$09
        .BYTE $4A,$4A,$4E,$4F,$4F,$40,$40,$55
        .BYTE $59,$A9,$B9,$F9,$F9,$19,$05,$55
        .BYTE $6A,$D5,$1A,$35,$06,$0D,$02,$03
        .BYTE $AA,$5B,$AA,$6E,$AA,$BA,$AA,$EA
        .BYTE $03,$00,$0D,$00,$35,$00,$D5,$00
        .BYTE $EA,$2A,$BA,$1A,$6E,$06,$5B,$01
        .BYTE $54,$59,$51,$65,$45,$65,$45,$66
        .BYTE $85,$59,$51,$56,$54,$56,$14,$D6
        .BYTE $4A,$6A,$6A,$A9,$A1,$59,$54,$55
        .BYTE $D4,$96,$54,$56,$51,$59,$85,$55
pC000   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$20,$00,$00,$20,$00
        .BYTE $00,$30,$00,$00,$38,$00,$00,$18
        .BYTE $00,$00,$58,$00,$00,$58,$00,$00
        .BYTE $D0,$00,$00,$D4,$00,$08,$A4,$20
        .BYTE $04,$2C,$C0
aC033   .BYTE $06,$68,$80,$02,$B3,$00,$01,$90
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00
aC044   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00
fC05B   .BYTE $00,$20,$00
pC05E   .BYTE $00,$20,$00,$00,$30,$00,$00,$50
        .BYTE $00,$00,$D0,$00
fC06A   .BYTE $00,$F0,$00,$00,$A8,$40,$08,$AD
        .BYTE $80,$04,$ED,$00,$02,$CE
pC078   .BYTE $00,$03,$36,$00,$01,$90,$00,$E4
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$10,$00,$00,$30
fC0A0   .BYTE $00,$10,$C0,$00,$11,$B0,$00,$12
        .BYTE $C0,$00,$17,$40,$00,$35,$C0,$00
        .BYTE $27,$00,$00,$3C,$00,$00,$20,$00
        .BYTE $00,$0E,$00,$00,$01,$E0,$00,$E4
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$08,$00,$00,$18
        .BYTE $00,$00,$38,$00,$00,$D0,$00,$21
        .BYTE $60,$00,$23,$40,$00,$62,$C0,$00
        .BYTE $07,$80,$00,$49,$00,$00,$5B,$00
        .BYTE $00,$67,$38,$00,$19,$C0,$00,$E4
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$03
        .BYTE $00,$00,$1C,$00,$00,$00,$00,$00
        .BYTE $3B,$00,$00
pC11B   .BYTE $67,$D8,$00,$C7,$BF,$00,$3D,$70
        .BYTE $00,$0E,$00,$00,$40,$00,$00,$60
        .BYTE $00,$00,$38,$00,$00,$04,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$06,$00,$00,$00
        .BYTE $00,$00,$70,$00,$00,$CC,$00,$00
        .BYTE $1F,$78,$00,$4E,$9E,$00,$73,$E0
        .BYTE $00,$1D,$00,$00,$40,$00,$00,$20
        .BYTE $00,$00,$10,$00,$00,$18,$00,$00
        .BYTE $00,$00,$00,$04,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$0E,$00,$00
        .BYTE $59,$C0,$00,$3C,$20,$00,$56,$00
        .BYTE $00,$5A,$00,$00,$89,$00,$00,$C7
        .BYTE $80,$00,$C6,$80,$00,$43,$80,$00
        .BYTE $03,$00,$00,$01,$40,$00,$00,$C0
        .BYTE $00,$00,$60,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$E4,$00,$00,$00
        .BYTE $5C,$00,$00,$27,$00,$00,$29,$80
        .BYTE $00,$B8,$20,$00,$96,$00,$00,$CB
        .BYTE $00,$00,$43,$80,$00,$44,$80,$00
        .BYTE $03,$40,$00,$01,$C0,$00,$00,$60
        .BYTE $00,$00,$20,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$E4,$00,$68,$00
        .BYTE $01,$48,$00,$02,$DC,$00,$06,$D2
        .BYTE $00,$08,$B1,$00,$08,$D9,$80,$00
        .BYTE $D8,$80,$00,$78,$00,$00,$B8,$00
        .BYTE $00,$B8,$00,$00,$D0,$00,$00,$60
        .BYTE $00,$00,$60,$00,$00,$60,$00,$00
        .BYTE $20,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$A6,$00,$01,$B9,$00,$01,$59
        .BYTE $80,$03,$5C,$80,$04,$5C,$C0,$00
        .BYTE $38,$40,$00,$38,$00,$00,$68,$00
        .BYTE $00,$6C,$00,$00,$34,$00,$00,$10
        .BYTE $00,$00,$10,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$0E,$48,$00,$38,$3C,$00,$40
        .BYTE $FB,$00,$00,$F2,$00,$01,$F6,$00
        .BYTE $03,$E4,$00,$02,$44,$00,$01,$8C
        .BYTE $00,$07,$08,$00,$0C,$00,$00,$08
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$01,$82,$00,$0E,$1C,$00,$00
        .BYTE $6C,$00,$00,$E8,$00,$01,$52,$00
        .BYTE $02,$F2,$00,$07,$C2,$00,$0C,$02
        .BYTE $00,$17,$06,$00,$1C,$04,$00,$38
        .BYTE $04,$00,$20,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00
fC2F8   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$20,$00
        .BYTE $00,$1C,$00,$00,$06,$00,$00,$02
        .BYTE $00,$00,$70,$00,$0E,$BC,$00,$FD
        .BYTE $E3,$00,$1B,$E6,$00,$00,$DC,$00
        .BYTE $00,$00,$00,$00,$38,$00,$00,$C0
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$60,$00,$00,$00,$00,$00,$0E
        .BYTE $00,$00,$33,$00,$1E,$F8,$00,$79
        .BYTE $72,$00,$07,$CE,$00,$00,$B8,$00
        .BYTE $00,$02,$00,$00,$04,$00,$00,$08
        .BYTE $00,$00,$18,$00,$00,$00,$00,$00
        .BYTE $20,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$20,$00
fC398   .BYTE $00,$34,$00,$00,$1B,$00,$00,$06
        .BYTE $80,$00,$04,$C0,$00,$01,$C2,$00
        .BYTE $01,$63,$00,$01,$E3,$00,$00,$91
        .BYTE $00,$00,$5A,$00,$00,$6A,$00,$04
        .BYTE $3C,$00,$03,$9A,$00,$00,$70,$E4
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$20,$00,$00,$38,$04,$00,$1C
        .BYTE $04,$00,$17,$06,$00,$0C,$02,$00
        .BYTE $07,$C2,$00,$02,$F2,$00,$01,$52
        .BYTE $00,$00,$E8,$00,$00,$6C,$00,$0E
fC3F8   .BYTE $1C,$00,$01,$82,$00,$00,$00,$00
pC400   .BYTE $00,$18,$00,$00,$00,$00,$00,$00
        .BYTE $00,$10,$00,$08,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$18,$00,$00,$24,$00,$80,$24
        .BYTE $01,$00,$24,$00,$00,$18,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$10,$00,$08,$00,$00
        .BYTE $00,$00,$00,$00,$00,$18,$00,$4E
        .BYTE $00,$00,$00,$00,$18,$00,$00,$00
        .BYTE $00,$08,$00,$10,$08,$00,$10,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$18,$00,$40,$00
        .BYTE $02,$00,$18,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $08,$00,$10,$08,$00,$10,$00,$00
        .BYTE $00,$00,$18,$00,$00,$00,$00,$4E
        .BYTE $00,$00,$00,$00,$00,$00,$00,$18
        .BYTE $00,$00,$00,$00,$04,$00,$20,$04
        .BYTE $00,$20,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$20,$18
        .BYTE $04,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$04,$00,$20
        .BYTE $04,$00,$20,$00,$00,$00,$00,$18
        .BYTE $00,$00,$00,$00,$00,$00,$00,$4E
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$18,$00,$00,$00,$00,$02
        .BYTE $00,$40,$02,$00,$40,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$10,$00
        .BYTE $08,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$02,$00,$40,$02,$00,$40
        .BYTE $00,$00,$00,$00,$18,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$4E
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$18,$00,$00
        .BYTE $00,$00,$01,$00,$80,$01,$00,$80
        .BYTE $00,$00,$00,$00,$00,$00,$0C,$00
        .BYTE $30,$00,$00,$00,$00,$00,$00,$01
        .BYTE $00,$80,$01,$00,$80,$00,$00,$00
        .BYTE $00,$18,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$4E
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $18,$00,$00,$00,$00,$00,$81,$00
        .BYTE $00,$81,$00,$00,$00,$00,$03,$00
        .BYTE $C0,$00,$00,$00,$00,$81,$00,$00
        .BYTE $81,$00,$00,$00,$00,$00,$18,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$4E
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$18,$00,$00,$00,$00
        .BYTE $00,$42,$00,$00,$00,$00,$00,$81
        .BYTE $00,$00,$00,$00,$00,$42,$00,$00
        .BYTE $00,$00,$00,$18,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$4E
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$18,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$42
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $18,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$4E
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$3C,$00
        .BYTE $00,$D7,$00,$03,$69,$C0,$03,$69
        .BYTE $C0,$00,$D7,$00,$00,$3C,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$3C,$00,$00,$14,$00
        .BYTE $00,$28,$00,$0D,$AA,$70,$0D,$AA
        .BYTE $70,$00,$28,$00,$00,$14,$00,$00
        .BYTE $3C,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$3C,$00
        .BYTE $00,$D7,$00,$03,$69,$C0,$00,$D7
        .BYTE $00,$00,$3C,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$3C,$00,$00,$D7,$00
        .BYTE $03,$69,$C0,$0D,$AA,$70,$0D,$AA
        .BYTE $70,$03,$69,$C0,$00,$D7,$00,$00
        .BYTE $3C,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$3C,$00
        .BYTE $00,$14,$00,$03,$69,$C0,$03,$69
        .BYTE $C0,$00,$14,$00,$00,$3C,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $FC,$00,$00,$82,$00,$00,$82,$00
        .BYTE $00,$84,$00,$00,$82,$00,$00,$91
        .BYTE $00,$00,$68,$80,$00,$04,$40,$00
        .BYTE $02,$20,$00,$01,$40,$00,$00,$80
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$4E
        .BYTE $00,$00,$00,$7C,$00,$00,$04,$00
        .BYTE $00,$08,$00,$00,$04,$00,$00,$02
        .BYTE $00,$00,$01,$00,$00,$00,$80,$00
        .BYTE $00,$40,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$4E
        .BYTE $00,$00,$00,$00,$00,$00,$78,$00
        .BYTE $00,$70,$00,$00,$78,$00,$00,$6C
        .BYTE $00,$00,$06,$00,$00,$03,$00,$00
        .BYTE $01,$80,$00,$01,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$4E
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $AA,$FF,$FF,$FF,$FF,$FF,$FF,$00
        .BYTE $AA,$FF,$FF,$FF,$FF,$FF,$FF,$00
        .BYTE $E4,$F9,$FE,$FF,$FF,$FD,$F4,$D1
        .BYTE $95,$A9,$BD,$BD,$BD,$BD,$81,$95
        .BYTE $55,$69,$7D,$7D,$7D,$7D,$41,$55
        .BYTE $54,$68,$7C,$7C,$7C,$7C,$40,$54
        .BYTE $AA,$AA,$3C,$7D,$7D,$7D,$41,$55
        .BYTE $55,$69,$7D,$7D,$3C,$7D,$82,$AA
        .BYTE $94,$94,$A8,$BC,$BC,$BC,$80,$94
        .BYTE $FF,$28,$EB,$14,$D7,$C3,$00,$55
        .BYTE $FF,$6F,$FF,$6F,$FC,$F1,$C6,$1B
        .BYTE $AA,$55,$00,$FF,$00,$6C,$6C,$59
        .BYTE $AA,$55,$00,$BC,$BC,$69,$55,$55
        .BYTE $AA,$55,$00,$FF,$00,$B1,$B1,$65
        .BYTE $AA,$55,$00,$FC,$08,$4E,$4E,$61
        .BYTE $AA,$55,$AA,$FF,$FF,$00,$55,$55
        .BYTE $AA,$55,$00,$BF,$A0,$39,$39,$49
        .BYTE $AA,$95,$40,$3F,$40,$95,$95,$95
        .BYTE $AA,$55,$00,$FF,$00,$55,$55,$55
        .BYTE $AA,$55,$00,$FC,$00,$54,$54,$54
        .BYTE $AA,$55,$03,$FF,$00,$55,$55,$57
        .BYTE $82,$FF,$FF,$FF,$3C,$7D,$D7,$55
        .BYTE $AA,$55,$C0,$FF,$00,$55,$55,$D5
        .BYTE $EF,$DB,$C6,$C1,$90,$54,$15,$15
        .BYTE $FF,$FF,$1B,$BF,$6F,$18,$46,$91
        .BYTE $FF,$FF,$FF,$FF,$FF,$6F,$FF,$BF
        .BYTE $AA,$55,$0A,$C9,$14,$AF,$A4,$A9
        .BYTE $AA,$55,$AA,$55,$00,$FF,$00,$55
        .BYTE $AA,$55,$A0,$5F,$00,$F5,$05,$45
        .BYTE $AA,$AA,$95,$95,$95,$95,$95,$95
        .BYTE $AA,$56,$01,$FC,$01,$56,$56,$56
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $AA,$55,$03,$FF,$00,$00,$55,$AA
        .BYTE $82,$FF,$FF,$FF,$3C,$00,$55,$95
        .BYTE $AA,$55,$C0,$FF,$00,$00,$55,$AA
        .BYTE $AE,$A5,$E5,$D5,$E4,$EA,$75,$5D
        .BYTE $BA,$5A,$5B,$57,$1B,$AB,$5D,$75
        .BYTE $07,$00,$55,$AA,$A5,$AB,$AA,$AA
        .BYTE $AA,$55,$00,$FC,$00,$55,$55,$65
        .BYTE $AA,$55,$00,$BF,$80,$55,$55,$59
        .BYTE $FC,$FC,$90,$90,$90,$90,$FC,$FD
        .BYTE $FF,$F9,$FF,$F9,$FF,$FF,$FF,$FC
        .BYTE $6F,$BF,$9B,$9B,$9B,$9B,$BF,$8F
        .BYTE $55,$45,$B1,$B1,$B1,$B1,$65,$55
        .BYTE $94,$54,$55,$AA,$7D,$FF,$FF,$82
        .BYTE $55,$51,$6C,$6C,$6C,$6C,$59,$55
        .BYTE $39,$39,$39,$39,$39,$39,$39,$39
        .BYTE $D0,$10,$A5,$AA,$5A,$EA,$AA,$AA
        .BYTE $4E,$4E,$4E,$4E,$4E,$4E,$4E,$4E
        .BYTE $95,$95,$95,$95,$95,$95,$95,$95
        .BYTE $55,$55,$55,$55,$55,$55,$55,$55
        .BYTE $54,$54,$54,$54,$54,$54,$54,$54
        .BYTE $5D,$75,$D5,$D5,$D5,$D5,$75,$5D
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $75,$5D,$57,$57,$57,$57,$5D,$75
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $7F
aC9D1   .BYTE $06
aC9D2   .BYTE $06,$BF,$7F
aC9D5   .BYTE $06
aC9D6   .BYTE $06,$BF,$A9,$A8,$A8,$A8,$A8,$A8
        .BYTE $A8,$A9,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$45,$85,$85,$85,$85,$85
        .BYTE $85,$45,$A9,$A9,$55,$54,$54,$54
        .BYTE $54,$54,$56,$56,$56,$56,$01,$56
        .BYTE $AA,$AA,$AA,$BE,$7D,$00,$7F,$BF
        .BYTE $BF,$FF,$EE,$EE,$DD,$CC,$DD,$EF
        .BYTE $EA,$FF,$AB,$FB,$F7,$03,$F7,$FB
        .BYTE $BB,$FF,$BE,$BE,$7D,$00,$FD,$FE
        .BYTE $AA,$FF,$EA,$EF,$DF,$C0,$DF,$EF
        .BYTE $EA,$FF,$BA,$FB,$F7,$F0,$F7,$FB
        .BYTE $BB,$FF,$AB,$FB,$F7,$03,$5F,$EB
        .BYTE $FA,$FF,$45,$55,$55,$54,$00,$55
        .BYTE $AA,$AA,$51,$55,$55,$95,$80,$55
        .BYTE $AA,$AA,$FE,$FF,$FF,$FF,$F9,$FF
        .BYTE $F9,$FF,$55,$AA,$C3,$D7,$14,$EB
        .BYTE $28,$FF,$93,$E4,$F9,$FE,$6F,$FF
        .BYTE $6F,$FF,$51,$6C,$6C,$59,$00,$55
        .BYTE $AA,$AA,$55,$55,$41,$BC,$BC,$69
        .BYTE $AA,$AA,$45,$B1,$B1,$65,$00,$55
        .BYTE $AA,$AA,$49,$4E,$4E,$50,$00,$55
        .BYTE $AA,$AA,$55,$55,$AA,$FF,$FF,$00
        .BYTE $AA,$AA,$61,$39,$39,$85,$80,$55
        .BYTE $AA,$AA,$95,$95,$95,$95,$80,$95
        .BYTE $AA,$AA,$55,$55,$55,$55,$00,$55
        .BYTE $AA,$AA,$54,$54,$54,$54,$00,$54
        .BYTE $A9,$AA,$57,$55,$55,$55,$00,$57
        .BYTE $AA,$AA,$55,$D7,$7D,$7D,$3C,$FF
        .BYTE $FF,$82,$D5,$55,$55,$55,$00,$D5
        .BYTE $AA,$AA,$15,$55,$94,$91,$C6,$DA
        .BYTE $EB,$EF,$86,$1A,$68,$AF,$BF,$1B
        .BYTE $FF,$FF,$BF,$FF,$6F,$FF,$FF,$FF
        .BYTE $FF,$FF,$A9,$A4,$A9,$AA,$55,$AA
        .BYTE $AA,$AA,$55,$00,$55,$AA,$55,$AA
        .BYTE $AA,$AA,$45,$05,$55,$A5,$40,$55
        .BYTE $AA,$AA,$FF,$FF,$FF,$FF,$E4,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$1B,$FF
        .BYTE $FF,$FF,$EA,$EE,$DD,$CC,$DD,$EE
        .BYTE $EA,$FF,$EB,$FB,$F7,$F3,$F7,$FB
        .BYTE $EA,$FF,$EA,$EE,$FD,$C0,$DF,$EF
        .BYTE $EA,$FF,$EA,$EE,$FD,$F0,$FD,$EE
        .BYTE $EA,$FF,$EF,$EF,$DF,$CF,$D5,$FB
        .BYTE $FB,$FF,$EA,$EF,$D5,$FC,$FD,$EE
        .BYTE $EA,$FF,$EA,$EF,$D5,$CC,$DD,$EE
        .BYTE $EA,$FF,$EA,$FE,$FD,$F0,$F7,$FB
        .BYTE $FB,$FF,$EA,$EE,$DD,$C0,$DD,$EE
        .BYTE $EA,$FF,$EA,$EE,$DD,$CC,$D5,$FE
        .BYTE $EA,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FA,$FB,$F7,$F3,$F7,$FB
        .BYTE $FA,$FF,$AF,$EF,$FF,$0F,$DF,$EF
        .BYTE $AE,$FF,$FB,$FB,$F7,$F3,$77,$AA
        .BYTE $AA,$FF,$AA,$BE,$7D,$00,$7F,$BF
        .BYTE $BF,$FF,$EE,$EE,$DD,$CC,$DD,$EF
        .BYTE $EA,$FF,$AB,$FB,$F7,$03,$F7,$FB
        .BYTE $BB,$FF,$BE,$BE,$7D,$00,$FD,$FE
        .BYTE $AA,$FF,$EA,$EF,$DF,$C0,$DF,$EF
        .BYTE $EA,$FF,$BA,$FB,$F7,$F0,$F7,$FB
        .BYTE $BB,$FF,$AB,$FB,$F7,$03,$5F,$EB
        .BYTE $FA,$FF,$AA,$BB,$77,$33,$77,$BB
        .BYTE $BB,$FF,$BA,$BB,$77,$33,$77,$BB
        .BYTE $BA,$FF,$AE,$EE,$DD,$CC,$DD,$EE
        .BYTE $AE,$FF,$AA,$FE,$FD,$00,$D7,$FA
        .BYTE $FE,$FF,$EA,$EF,$DF,$C0,$DF,$EF
        .BYTE $AF,$FF,$BB,$BB,$77,$30,$F7,$FB
        .BYTE $FB,$FF,$EE,$EE,$DD,$0C,$DD,$EE
        .BYTE $EE,$FF,$AB,$FB,$FF,$1F,$FF,$FB
        .BYTE $AB,$FF,$BE,$BE,$7D,$3C,$7D,$BE
        .BYTE $AA,$FF,$EA,$EF,$D7,$F0,$FD,$EF
        .BYTE $EA,$FF,$BF,$BF,$FF,$FF,$7F,$BF
        .BYTE $BF,$FF,$BF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$EF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FB,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FE,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$BF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$EF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FB,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FE,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$BF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$EF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FB,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FE,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $BF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $EF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FB,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FE,$FF,$7F,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$DF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$F7,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FD,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$7F,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$DF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$F7,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FD,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$7F,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$DF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$F7,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FD,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $7F,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $DF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $F7,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FD,$FF,$3F,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$CF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$F3,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FC,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$3F,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$CF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$F3,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FC,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$3F,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$CF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$F3,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FC,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $3F,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $CF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $F3,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FC,$FF,$FF,$DF,$FF,$FF,$FF,$3F
        .BYTE $FF,$FF,$FB,$FF,$FF,$FF,$DF,$FF
        .BYTE $FF,$FF,$FF,$3F,$FF,$FB,$FF,$FF
        .BYTE $3F,$FF,$FF,$DF,$3F,$FF,$FF,$FF
        .BYTE $DF,$FF,$FF,$FB,$FF,$DF,$FF,$FF
        .BYTE $FB,$FF,$FF,$FF,$FF,$FF,$FB,$3F
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $DF,$FF,$FF,$FF,$3F,$FF,$FF,$FF
        .BYTE $FF,$FB,$FF,$00,$55,$FF,$FF,$00
        .BYTE $55,$FF,$FF,$55,$AA,$FF,$FF,$55
        .BYTE $AA,$FF,$FF,$99,$EE,$FF,$FF,$66
        .BYTE $BB,$FF,$FF,$EF,$FF,$FF,$FF,$FB
        .BYTE $FF,$FF,$FF,$06,$5B,$FF,$FF,$06
        .BYTE $5B,$FF,$FF,$5B,$AF,$FF,$FF,$5B
        .BYTE $AF,$FF,$FF,$AF,$FF,$FF,$FF,$AF
        .BYTE $FF,$FF,$FF,$BF,$FF,$FF,$FF,$BF
        .BYTE $FF,$FF
fCE00   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
fCE10   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
fCE20   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
fCE30   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
fCE40   .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
fCE80   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
fCEC0   .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
fCF00   .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF,$FF
        .BYTE $FF,$FF,$FF ;ISC $FFFF,X
        .BYTE $FF
