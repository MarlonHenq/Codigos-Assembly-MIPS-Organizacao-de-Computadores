.data
	array: .word 10, 50, 60, 1, 20, 70, 100, 1,-1 # objeto -1 indica o final do vetor
.text
	la $s0, array #carrega o endereço do array
	li $t1, 0 #Indice de loop
	
	loop:
		lw $t2, ($s0) #Pega um valor do array
		blt $t2, 0, endLoop #Verifica se o número é menor que 0
		
		add $s1, $s1, $t2 #Adiciona o valor do array em s1
		addi $s0, $s0, 4 #Pula para próxima casa do array
		
		j loop	#vollta no loop
		
	endLoop: #Encerra