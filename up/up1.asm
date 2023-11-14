li $t0, 0xff11
mtc0 $t0, $12 #preset SR
li $s0, 0x7f50 #button
li $s1, 0x7f00 #counter
li $s2, 0x7f40 #tube
li $t0, 0
li $s3, 0 #s3 contain pre

again:
lw $t1, 0($s0) #t1 is button numer now
beq $t1, $s3, continue #if not restart
nop

#begin or changed
move $s3, $t1  #s3 contains button number

li $t0, 0 #preset reg counter
li $t7, 0
sw $t7, 0($s1)	#stop timmer
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
j b0e
nop
b0:
li $t0, 5
li $t4, 0
li $t5, 0x7f60
sw $t4, 0($t5)
b0e:
continue:
sw $t0, 0($s2)
j again
nop
