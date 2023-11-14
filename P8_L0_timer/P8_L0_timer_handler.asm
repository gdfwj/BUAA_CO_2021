beq $t0, $0, end
nop
subu $t0, $t0, 1
li $t7, 0
sw $t7, 0($s1)	#stop timmer
li $t2, 50000000
sw $t2, 4($s1) #preset
li $t7, 9
sw $t7, 0($s1)	#start timmer
eret
nop
end:
	li $t9, 0x7f20
	li $t8, 69
	sw $t8, 0($t9)
	li $s4, 0x7f60
li $s5, 0xffffffff
sw $s5, 0($s4)
loop:
	j loop
	nop
