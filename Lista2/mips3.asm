.data
	A:
	.align 2
	.space 200 	#50*4 (50 espaços de um array inteiro)
	
	B:
	.align 2
	.space 200 	#50*4 (50 espaços de um array inteiro)

.text
	
	move $t1, $zero #adiciona zero ao t1, contador de loop
	move $t2, $zero # adiciona zero ao t2, contador da posição no array
	
	li $t3, 50 #condição de parada
	
	while:
		beq $t1, $t3, end #Condição de parada if == 50
		
		lw $t5, A($t2)
		lw $t6, B($t2)
		
		add $t4, $t5, $t6 #Soma em $t4 de A(i) + B(i)
		
		sw $t4, A($t2)
		
		li $v0, 1	#Print
		lw $a0, A($t2)
		syscall
		
		
		addi $t1, $t1, 1 #Soma do loop
		addi $t2, $t2, 4
		
		j while
		
	end:
		li $v0, 10 #Fecha programa
		syscall