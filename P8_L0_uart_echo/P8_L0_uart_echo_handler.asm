lw $t3, 0($s0)
sw $t3, 0($s2)
addiu $s2, $s2, 4
bne $s2, 0x3000, inrange2
nop
	li $s2, 0
inrange2:
beq $s1, $s2, over
nop
eret
nop
over:
	li $t7, 0xffffffff	# LED on.
	li $s4, 0x7f60
	sw $t7, 0($s4)
	beq $0, $0, over
	nop