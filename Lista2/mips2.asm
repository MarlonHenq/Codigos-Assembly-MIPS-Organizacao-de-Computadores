.data 
	var1: .word 2
	var2: .word 10

.text

lw $a0, var1 # load 
lw $a1, var2 #

jal multiplica #chama a função multiplica

move $s1, $v0 #Pega o resultado da função e taca em $s1

li $v0, 1 #Taca 1 em $v0 para dizer que será printado um inteiro
move $a0, $s1 #Taca o valor em $a0 para a função de print pegar
syscall #chama o sistema
 
li $v0, 10 #Taca 10 em $v0 para dizer que o programa ira acabar
syscall #chama o sistema

	multiplica:
		mult $a0, $a1 #Pega os parâmetros e multiplica
		mflo $v0 #Pega o resultado e taca em v0
		
		jr $ra #Volta da onde a função foi chamada