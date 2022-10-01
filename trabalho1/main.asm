#Esse código recebe imagens .pgm e .ppm e realiliza o calculo de um modelo de fundo por meio da média simples dos pixels de cada imagem.

.data

    local: .asciiz "pgmImages/1.pgm"
    local2: .asciiz "pgmImages/2.pgm"
    content: .space 1024
    content2: .space 1024

.text
    li $v0, 13 #system call para abrir o arquivo
    la $a0, local #carrega o endereço da string com o nome do arquivo
    li $a1, 0 #abre o arquivo para leitura
    syscall

    move $t0, $v0 #salva o descritor do arquivo na variável $t0
    move $a0, $v0 #carrega o descritor do arquivo na variável $a0

    li $v0, 14 #system call para ler o arquivo
    la $a1, content #carrega o endereço da string que vai receber o conteúdo do arquivo
    li $a2, 1024 #carrega o tamanho da string
    syscall

    #Imprime o conteúdo do arquivo
    li $v0, 4
    la $a0, content
    syscall

    #Fecha o arquivo
    li $v0, 10
    move $a0, $t0
    syscall
