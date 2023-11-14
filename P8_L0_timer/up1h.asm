li $t4, 0xffffffff
li $t5, 0x7f60
sw $t4, 0($t5)
beq $t0, 9, over
nop
addiu $t0, $t0, 1
#sw $t0, 0($s2)
j overe
nop
over:
	li $t0, 0
overe:
beq $s3, 0, b0
nop
beq $s3, 1, b1
nop
j b2
nop
b1:
	li $t2, 25000000
	sw $t2, 4($s1) #preset
	j b2e
	nop
b2:
	li $t2, 50000000
	sw $t2, 4($s1) #preset
b2e:
li $t7, 9
sw $t7, 0($s1)	#start timmer
b0:
li $t7, 0xff11
mtc0 $t7, $12 #preset SR
eret
nop
