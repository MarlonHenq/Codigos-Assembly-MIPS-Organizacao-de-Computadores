.data


.text

	li $v0, 5 #Seta input int
	syscall #chama o sistema
	
	move $t1, $v0  #Joga o retorno em $t1
	
	li $v0, 5#Seta input int
	syscall#chama o sistema
	
	move $t2, $v0 #Joga o retorno em $t2
	
	slt $s0, $t1, $t2 #Se $t1 menor que $t2, $s0 recebe 1
	
	beq $s0, 1, t2Maior #Se $s0 recebe 1, print T2 
	
	li $v0, 1 #seta para print innt
	move $a0, $t2 #Move t1 para o print
	syscall #chama o sistema
	
	li $v0, 10 #seta para exit
	syscall #chama o sistema
	
	#Print $t2
	t2Maior:
		li $v0, 1#seta para print innt
		move $a0, $t2#Move t2 para o print
		syscall#chama o sistema
		
		li $v0, 10 #seta para exit
		syscall #chama o sistema
	
	
	