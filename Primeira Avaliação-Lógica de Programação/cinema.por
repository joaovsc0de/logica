programa {
    inteiro assentos[10][12]
    inteiro x, y, totalReservas = 0
    logico reservado

    funcao inicio() {    
        zerarAssentos()
        lerAssento()       
    }

    funcao zerarAssentos() {
        inteiro contador = 0
        para (inteiro i = 0; i < 10; i++) {
            para (inteiro j = 0; j < 12; j++) {
                assentos[i][j] = 0
                contador++
            }
            escreva("\n")
        }
    }

    funcao visualizarAssentos() {
        escreva("   ") 
        para (inteiro j = 0; j < 12; j++) {
            escreva(j, "   ")
        }
        escreva("\n")

        para (inteiro i = 0; i < 10; i++) {
            escreva(i, " ")
            para (inteiro j = 0; j < 12; j++) {
                se (assentos[i][j] == 1) {
                    escreva("[", assentos[i][j], "] ")
                } senao {
                    escreva("[0] ")
                }
            }
            escreva("\n")
        }
    }

    funcao lerAssento() {
        faca {
            visualizarAssentos()
            escreva("Escolha a fileira e o assento:\n")

            faca {
                escreva("Fileira: ")
                leia(x)

                se (x < 0) {
                    calculoAssentos()
                    retorne
                }

                se (x > 9) {
                    escreva("Fileira inválida! Escolha um valor entre 0 e 9.\n")
                }
            } enquanto (x > 9)

            faca {
                escreva("Assento: ")
                leia(y)

                se (y < 0) {
                    calculoAssentos()
                    retorne
                }

                se (y > 11) {
                    escreva("Assento inválido! Escolha um valor entre 0 e 11.\n")
                }
            } enquanto (y > 11)

            inserirAssento()
        } enquanto (totalReservas < 120)
    }

    funcao inserirAssento() {
        se (assentoDisponivel() == falso) {
            assentos[x][y] = 1
            escreva("Assento [", x, "][", y, "] reservado com sucesso!\n")
        }
        totalReservas++
    }

    funcao logico assentoDisponivel() {
        se (assentos[x][y] == 1) {
            retorne verdadeiro
        } senao {
            retorne falso
        }
    }

    funcao calculoAssentos() {
        inteiro contadorReservas = 0
        para (inteiro i = 0; i < 10; i++) {
            para (inteiro j = 0; j < 12; j++) {
                se (assentos[i][j] == 1) {
                    contadorReservas++  					
                }
            }  			
        }
        escreva("Assentos reservados: ", contadorReservas, "\n")
        escreva("Assentos livres: ", 120 - contadorReservas)
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1403; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */