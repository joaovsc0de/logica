programa
{
    funcao inicio() {
        inteiro vagas[31], opcao, contador = 0
        logico sair = falso
        zerarVagas(vagas)

        faca {
            opcao = menu()
            escolha(opcao) {
                caso 1:
                    entradaVeiculos(vagas, contador)
                    pare

                caso 2:
                    verificarVaga(contador, vagas)
                    pare

                caso 3:
                    listarVagas(vagas, contador)
                    pare

                caso 4:
                    sair = verdadeiro
                    escreva("Programa encerrado.\n")
                    pare

                caso contrario:
                    escreva("Opção inválida! Digite novamente.\n")
                    pare
            }
        } enquanto (sair == falso)
    }

    funcao verificarVaga(inteiro &contador, inteiro vagas[]) {
        se (contador == 0) {
            escreva("Não existem carros na garagem!\n")
        } senao {
            saidaVeiculos(vagas, contador)
        }
    }

    funcao zerarVagas(inteiro &vagas[]) {
        para (inteiro i = 1; i < 31; i++) {
            vagas[i] = 0
        }
    }

    funcao inteiro menu() {
        inteiro opcao
        escreva("\n------- Menu -------\n")
        escreva("1 Entrada de Veiculo\n")
        escreva("2 Saída de Veículo\n")
        escreva("3 Listar Vagas\n")
        escreva("4 Sair do Programa\n")
        escreva("Digite a opção desejada: ")
        leia(opcao)
        retorne opcao
    }

    funcao entradaVeiculos(inteiro &vagas[], inteiro &contador) {
        se (contador >= 30) {
            escreva("Garagem cheia! Não há vagas disponíveis.\n")
            retorne
        }

        inteiro vaga
        escreva("\nDigite o número da vaga (1-30): ")
        leia(vaga)

        se (vaga < 1 ou vaga > 30) {
            escreva("Número de vaga inválido!\n")
            retorne
        }

        se (vagas[vaga] == 0) {
            vagas[vaga] = 1
            contador++
            escreva("Vaga ", vaga, " reservada com sucesso!\n")
        } senao {
            escreva("A vaga ", vaga, " está ocupada!\n")
        }
    }

    funcao saidaVeiculos(inteiro &vagas[], inteiro &contador) {
        inteiro vaga
        escreva("Digite o número da vaga para saída (1-30): ")
        leia(vaga)

        se (vaga < 1 ou vaga > 30) {
            escreva("Número de vaga inválido!\n")
            retorne
        }

        se (vagas[vaga] == 1) {
            vagas[vaga] = 0
            contador--
            escreva("Carro retirado da vaga ", vaga, " com sucesso!\n")
        } senao {
            escreva("A vaga ", vaga, " já está vazia!\n")
        }
    }

    funcao listarVagas(inteiro vagas[], inteiro contador) {
        escreva("\nVagas: ")
        para (inteiro i = 1; i < 31; i++) {
            se (i < 10) {
                escreva("  ", i, " ")
            } senao {
                escreva(" ", i, " ")
            }
        }
        
        escreva("\nStatus: ")
        para (inteiro i = 1; i < 31; i++) {
            escreva("[", vagas[i], "] ")
        }
        
        escreva("\nTotal de carros na garagem: ", contador, "\n")
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3122; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */