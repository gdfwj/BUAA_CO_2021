loop:
li $t0, 0x7f58
li $t2, 0x7f60
li $t7, 0x7f40
lw $t1, 0($t0)
sw $t1, 0($t2)
lw $t3, -4($t0)
lw $t4, -8($t0)
sw $t4, 0($t7)
j loop
end