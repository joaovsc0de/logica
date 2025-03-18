programa
{
    funcao inicio() {
        inteiro vagas[31], opcao, contador = 0
        zerarVagas(vagas)

        faca {
            opcao = menu()
            escolha(opcao) {
                caso 1:
                    entradaVeiculos(vagas, contador)
                    pare
                
                caso 2:
                    se (contador == 0) {
                        escreva("Não existem carros na garagem!\n")
                    } senao {
                        saidaVeiculos(vagas, contador)
                    }
                    pare
                
                caso 3:
                    listarVagas(vagas, contador)
                    pare
                
                caso 4:
                    contador = saidaPrograma()
                    pare
                
                caso contrario:
                    escreva("Digite uma opção válida: ")
                    pare
            }
        } enquanto (contador < 30)
        
    }

    funcao zerarVagas(inteiro &vagas[]) {
        para (inteiro i = 1; i < 31; i++) {
            vagas[i] = 0
        }
    }

    funcao inteiro menu() {
        inteiro opcao
        escreva("1 Entrada de Veiculo\n")
        escreva("2 Saída de Veículo\n")
        escreva("3 Listar Vagas\n")
        escreva("4 Sair do Programa\n")
        escreva("Digite a opção que deseja: ")
        leia(opcao)
        retorne opcao
    }

    funcao entradaVeiculos(inteiro &vagas[], inteiro &contador) {
        inteiro x
        escreva("\nDigite o número da vaga: ")
        leia(x)

        se (x < 1 ou
        x > 30) {
            escreva("Número de vaga inválido!\n")
            retorne
        }

        se (vagas[x] == 0) {
            vagas[x] = 1
            escreva("Vaga Reservada com Sucesso!\n")
            contador++
        } senao {
            escreva("A vaga está ocupada!\n")
        }
    }

    funcao saidaVeiculos(inteiro &vagas[], inteiro &contador) {
        inteiro vaga
        escreva("Digite o número da sua vaga: ")
        leia(vaga)

        se (vaga < 1 ou vaga > 30) {
            escreva("Número de vaga inválido!\n")
            retorne
        }

        se (vagas[vaga] == 1) {
            vagas[vaga] = 0
            escreva("Carro Retirado com Sucesso!\n")
            contador--
        } senao {
            escreva("Esta vaga já está vazia!\n")
        }
    }


	funcao listarVagas(inteiro vagas[], inteiro contador) {
   
    para(inteiro i = 1; i < 31; i++) {
        se (i < 10) {
            escreva("  ", i, " ")  
        } senao {
            escreva(" ", i, " ")   
        }
    }
    escreva("\n")

    
    para(inteiro i = 1; i < 31; i++) {
        escreva("[", vagas[i], "] ")  
    }	
    escreva("\nExistem ", contador, " carros na garagem.\n")
}
	funcao inteiro saidaPrograma(){
		retorne 30
	}

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 303; 
 * @DOBRAMENTO-CODIGO = [79, 84, 88, 96, 106];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */