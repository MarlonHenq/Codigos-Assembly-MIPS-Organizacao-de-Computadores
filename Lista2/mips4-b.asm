.data
	array: .word 10, 50, 60, 1, 20, 70, 100, 1,-1 # objeto -1 indica o final do vetor
	posição: .word 4 #Posição onde será gravado o resultado no array (1*4) (segunda posição)
.text 
	la $s0, array #carrega o endereço do array
	li $t1, 0 #Indice de loop
	
	loop:
		lw $t2, ($s0) #Pega um valor do array
		blt $t2, 0, endLoop #Verifica se o número é menor que 0
		
		add $s1, $s1, $t2 #Adiciona o valor do array em s1
		addi $s0, $s0, 4 #Pula para próxima casa do array
		
		j loop	#vollta no loop
		
	endLoop: #sai do loop
		la $s0, array #Pega o array novamente 
		lw $t9, posição #Pega o número da posição em $t9
		add $s0, $s0, $t9 #Adiciona isso a posição do array
		
		sw $s1, ($s0) #Adiciona o resultado na posição
		
		lw $a0, ($s0) #Pega o resultado da memória de novo para debug e prinnt
		li $v0, 1 #Indica o print
		syscall #Chama o sistema
		