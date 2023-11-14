li $t1, 0x7f50
li $t4, 0x7f40
li $t5, 0x7f58
li $t2, 0
li $t3, 0
li $t6, 0
li $t7, 0
loop:
lw $t2, 0($t1) #2 contain now lower
lw $t3, 4($t1) #3 contain now upper
lw $t6, 0($t5)
beq $t6, $0, end_if
nop
if_change:
	bne $t6, 1, case0e
	nop
		addu $t8, $t2, $t3
		j end_case
		nop
	case0e:
	bne $t6, 2, case1e
	nop
		subu $t8, $t3, $t2
		j end_case
		nop
	case1e:
	bne $t6, 4, case2e
	nop
		or $t8, $t3, $t2
		j end_case
		nop
	case2e:
	bne $t6, 8, case3e
	nop
		and $t8, $t3, $t2
		j end_case
		nop
	case3e:
	bne $t6, 16, case4e
	nop
		xor $t8, $t3, $t2
		j end_case
		nop
	case4e:
	bne $t6, 32, case5e
	nop
		nor $t8, $t3, $t2
		j end_case
		nop
	case5e:
	bne $t6, 64, case6e
	nop
		sllv $t8, $t3, $t2
		j end_case
		nop
	case6e:
	bne $t6, 128, case7e
	nop
		srlv $t8, $t3, $t2
		j end_case
		nop
	case7e:
	end_case:
	sw $t8, 0($t4)
end_if:
j loop
nop