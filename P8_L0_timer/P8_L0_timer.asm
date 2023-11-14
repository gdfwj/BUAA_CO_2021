li $t0, 0xff11
mtc0 $t0, $12 #preset SR
li $s0, 0x7f50 #button
li $s1, 0x7f00 #counter
li $s2, 0x7f40 #tube
li $t0, 0
li $s3, 0

again:
lw $t1, 0($s0) #t1 is button numer now
beq $t1, $s3, continue #if not restart
nop

#begin or changed
move $s3, $t1  #s3 contains button number
move $t0, $s3 #preset reg counter
li $t7, 0
sw $t7, 0($s1)	#stop timmer
li $t2, 50000000
sw $t2, 4($s1) #preset
li $t7, 9
sw $t7, 0($s1)	#start timmer


continue:
sw $t0, 0($s2)
j again
nop