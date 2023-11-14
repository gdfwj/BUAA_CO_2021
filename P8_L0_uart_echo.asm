li $s0, 0x7f20 #UART
li $t0, 0xff11
mtc0 $t0, $12 #preset SR
li $s1, 0 #head
li $s2, 0 #tail
loop:
	lw $t0, 16($s0)
	srl $t0, $t0, 5
	andi $t0, $t0, 1
	bne $t0, 1, loop #can't send
	nop
	beq $s1, $s2, loop #empty
	nop
	lw $t0, 0($s1)
	addu $s1, $s1, 4
	sw $t0, 0($s0)
	j loop
	nop