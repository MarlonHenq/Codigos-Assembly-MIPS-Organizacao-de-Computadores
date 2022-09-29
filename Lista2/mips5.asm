.data


.text

li $v0, 5 #Seta para leitura de int
syscall #Chama o sistema
	 
move $t1, $v0 #Joga o resuldado em t1

li $v0, 5#Seta para leitura de int
syscall#Chama o sistema

move $t2, $v0#Joga o resuldado em t2