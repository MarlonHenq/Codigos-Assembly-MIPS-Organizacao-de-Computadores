.data
	var1: .word 10
	var2: .word 5

.text

	lw $t0, var1
	lw $t1, var2
	
	add $t2, $t0, $t1
	sub $t3, $t0, $t1