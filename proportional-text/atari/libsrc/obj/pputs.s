;
; File generated by cc65 v 2.19 - Git dcdf7ade0
;
	.fopt		compiler,"cc65 v 2.19 - Git dcdf7ade0"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.import		__pcx
	.import		__pcy
	.import		_pputc
	.export		_pputs

; ---------------------------------------------------------------
; unsigned char __near__ pputs (const char *c)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_pputs: near

.segment	"CODE"

	jsr     pushax
	ldx     #$00
	lda     __pcx
	jsr     pusha
	jsr     decsp1
	jmp     L0008
L0002:	ldy     #$03
	jsr     ldaxysp
	ldy     #$00
	jsr     ldauidx
	cmp     #$9B
	jsr     booleq
	jeq     L0005
	ldy     #$01
	ldx     #$00
	lda     (sp),y
	sta     __pcx
	stx     __pcx+1
	ldx     #$00
	lda     #$08
	clc
	adc     __pcy
	sta     __pcy
	ldy     #$02
	ldx     #$00
	lda     #$01
	jsr     addeqysp
	jmp     L0008
L0005:	ldy     #$03
	jsr     ldaxysp
	ldy     #$00
	jsr     ldauidx
	jsr     _pputc
	ldy     #$00
	sta     (sp),y
	lda     __pcx
	ldx     __pcx+1
	jsr     pushax
	ldy     #$02
	ldx     #$00
	lda     (sp),y
	jsr     tosaddax
	cpx     #$01
	bne     L0007
	cmp     #$3F
L0007:	jsr     boolult
	jeq     L0006
	ldy     #$00
	ldx     #$00
	lda     (sp),y
	clc
	adc     __pcx
	sta     __pcx
	txa
	adc     __pcx+1
	sta     __pcx+1
	tax
	lda     __pcx
	ldy     #$02
	ldx     #$00
	lda     #$01
	jsr     addeqysp
	jmp     L0008
L0006:	ldy     #$01
	ldx     #$00
	lda     (sp),y
	sta     __pcx
	stx     __pcx+1
	ldx     #$00
	lda     #$08
	clc
	adc     __pcy
	sta     __pcy
	ldy     #$02
	ldx     #$00
	lda     #$01
	jsr     addeqysp
L0008:	ldy     #$03
	jsr     ldaxysp
	ldy     #$00
	jsr     ldauidx
	cmp     #$00
	jsr     boolne
	jne     L0002
	ldy     #$00
	ldx     #$00
	lda     (sp),y
	jmp     L0001
L0001:	jsr     incsp4
	rts

.endproc

