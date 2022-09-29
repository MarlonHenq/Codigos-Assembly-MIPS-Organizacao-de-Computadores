.data 

.text

	li $v0, 5 #Seta para entrada de int
	syscall  #Chama o sistema
	
	move $t1, $v0 #Pega a entrada e taca em $t1
	
	addi $t0, $zero, 1 #Seta 1 para $t0 o qual será a nossa contagem de loop e número de soma
	addi $s0, $zero, 1 #Seta 1 para 4v0 o qual será nosso resultaod
	
	loop:
		beq $t1, $t0,  finalPrograma #Se a contagem chegar no número dito o programa printa e se encerra
		
		addi $t0, $t0, 1 # add 1 nna contagem
		
		mult $s0, $t0 #Multiplica
		
		mflo $s0 #Pega o valor da multipllicação e tava em $s0
		
		j loop #Continua o loop
		
		
	finalPrograma:
		li $v0, 1 #seta para print
		move $a0, $s0 #Mmove para o print
		syscall #Chama o sistema
	
	