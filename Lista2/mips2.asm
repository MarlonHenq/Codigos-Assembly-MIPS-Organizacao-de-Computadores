.data 
	var1: .word 2
	var2: .word 10

.text

lw $a0, var1
lw $a1, var2

jal multiplica

move $s1, $v0

li $v0, 1
move $a0, $s1
syscall 

li $v0, 10
syscall

	multiplica:
		mult $a0, $a1
		mflo $v0
		
		jr $ra