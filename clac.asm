.text
li $s0, 0x7F40
li $s1, 0x7f50

main:
lw $t0, 0($s1)
lw $t1, 4($s1)
lb $t2, 8($s1)
# 0: +
# 1: -
# 2: &
# 3: |
# 4: ^
# 5: nor
# 6: <<
# 7: >>

case:
	li $t4, 0
	beq $t2, 0, default
	nop
	beq $t2, 1, case0
	nop
	beq $t2, 2, case1
	nop
	beq $t2, 4, case2
	nop
	beq $t2, 8, case3
	nop
	beq $t2, 16, case4
	nop
	beq $t2, 32, case5
	nop
	beq $t2, 64, case6
	nop
	beq $t2, 128, case7
	nop
	
	li $t3, 0xEEEEEEEE
	li $t4, 0xE
	j endcase
	nop
	
	default:
		j endcase
		nop
	case0:
		addu $t3, $t0, $t1
		j endcase
		nop
	case1:
		subu $t3, $t0, $t1
		j endcase
		nop
	case2:
		and $t3, $t0, $t1
		j endcase
		nop
	case3:
		or $t3, $t0, $t1
		j endcase
		nop
	case4:
		xor $t3, $t0, $t1
		j endcase
		nop
	case5:
		nor $t3, $t0, $t1
		j endcase
		nop
	case6:
		sllv $t3, $t0, $t1
		j endcase
		nop
	case7:
		srlv $t3, $t0, $t1
		j endcase
		nop
endcase:
sw $t3, 0($s0)
sw $t4, 4($s0)
	
j main
nop