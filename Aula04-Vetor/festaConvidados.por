programa {
    inclua biblioteca Util

    const inteiro MAX_CONVIDADOS = 50
    const real VALOR_POR_CONVIDADO = 120.0

    cadeia convidados[MAX_CONVIDADOS]
    real total = 0.00
    cadeia nome

    // Função para inserir um novo convidado
    funcao inserirNome() {
        escreva("Digite o nome do convidado: ")
        para (inteiro i = 0; i < 50; i++) {
            se (convidados[i] == "") {
                leia(convidados[i])
               	 i=49
            }
        }
    }

    // Função para remover um convidado
    funcao removerNome() {
        escreva("\nDigite o nome do convidado a ser removido: ")
        leia(nome)

        para (inteiro i = 0; i < 50; i++) {
            se (convidados[i] == nome) {
                convidados[i] = ""
            }
        }
        
        reordenarLista()
        escreva("Convidado removido da lista de convidados com sucesso.\n")
    }

    // Função para calcular o pagamento total
    funcao pagamento() {
        inteiro contador = 0

        para (inteiro i = 0; i < 50; i++) {
            se (convidados[i] != "") {
                contador++
            }
        }

        total = contador * VALOR_POR_CONVIDADO
        escreva("\nTotal a pagar: R$ ", total, "\n")
    }

    // Função para reordenar a lista de convidados
    funcao reordenarLista() {       
        para (inteiro i = 0; i < 50; i++) {
            se (convidados[i] == "") {
                para (inteiro k = i+1; k < 50; k++) {
                    se (convidados[k] != "") {
                        convidados[i] = convidados[k]
                        convidados[k] = ""
                        i = 49
                    }
                }
            }
        }
    }

    // Função para exibir o menu
    funcao inteiro menu() {
        inteiro opcao

        escreva("\nMENU DE OPÇÕES:\n")
        escreva("1- Inserir nome:\n")
        escreva("2- Listar convidados:\n")
        escreva("3- Remover nome:\n")
        escreva("4- Pagamento:\n")
        escreva("5- Ver quantidade de convidados:\n")
        escreva("0- Sair:\n")
        escreva("Digite a opção:\n")
        leia(opcao)

        retorne opcao
    }

    // Função para listar os convidados
    funcao listarConvidados() {
        para (inteiro i = 0; i < 50; i++) {
            se (convidados[i] != "") {
                escreva("Nome do ", i+1, "° convidado: ", convidados[i], "\n")
            }
        }
    }

    // Função para contar a quantidade de convidados
    funcao quantidadeConvidados() {
        inteiro contador = 0

        para (inteiro i = 0; i < 50; i++) {
            se (convidados[i] != "") {
                contador++
            }
        }

        escreva("\n", contador, " convidados estão presentes.\n")
    }

    // Função principal 
    funcao inicio() {
        inteiro op
        faca {
            op = menu()

            escolha (op) {
                caso 0:
                    pare
                caso 1:
                    inserirNome()
                    pare
                caso 2:
                    listarConvidados()
                    pare
                caso 3:
                    removerNome()
                    pare
                caso 4:
                    pagamento()
                    pare    
                caso 5:
                    quantidadeConvidados()
            }

        } enquanto (op != 0)
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 458; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */