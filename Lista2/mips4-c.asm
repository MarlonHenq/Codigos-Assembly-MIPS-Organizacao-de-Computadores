.data
	array: .word 10, 4, 60, 1, 5, 70, 100, 1,-1 # objeto -1 indica o final do vetor
.text
	la $s0, array #carrega o endereço do array
	li $t1, 0 #Indice de loop
	
	li $t5, 10
	
	loop:
		lw $t2, ($s0) #Pega um valor do array
		blt $t2, 0, endLoop #Verifica se o número é menor que 0
		
		beq $t2, 10, addLoop #Verifica se é iqual a 10
		slt $s2, $t5, $t2 #Verifica se é 10 é menor que o número (logo número maior que 10)
		beq $s2, 1, addLoop
		
		add $s1, $s1, $t2 #Adiciona o valor do array em s1
		
		addLoop:
		addi $s0, $s0, 4 #Pula para próxima casa do array
		
		j loop	#vollta no loop
		
	endLoop: #Encerra