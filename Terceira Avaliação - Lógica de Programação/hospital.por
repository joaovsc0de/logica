programa {
	
    const inteiro MAX = 100
    const real VALOR_INTERNACAO = 500.0
    const real VALOR_CONSULTA_PEDIATRA = 150.0
    const real VALOR_CONSULTA = 120.0

    funcao inicio() {
        logico exit = falso, quartos[21]
        cadeia pacientesConsulta[MAX][3] 
	   cadeia pacientesInternacao[MAX][2] 
        inteiro totalConsultas = 0, totalInternacoes = 0, pacientesConsultados = 0
        real faturamentoConsulta = 0.0

        preencherQuartos(quartos)
        
        faca {
            escolha(menu()) {
                caso 1:               
                    consulta(pacientesConsulta, faturamentoConsulta, totalConsultas, pacientesConsultados)
                    pare
                caso 2:
                    internacao(quartos, totalInternacoes, pacientesInternacao)
                    pare
                caso 3:
                    listarQuartos(quartos)
                    pare
                caso 4:
                    faturamento(faturamentoConsulta, totalConsultas, totalInternacoes, pacientesInternacao)
                    pare
                caso 5:
                    sair(exit)
                    pare
            }
        } enquanto(exit == falso)
    }
    funcao inteiro menu() {
        inteiro opcao
        escreva("_________________________\n")
        escreva("|                       |\n")
        escreva("|    HOSPITAL - XPTO    |\n")
        escreva("|_______________________|\n")
        escreva("|1-Consulta Ambulatorial|\n")
        escreva("|2-Internação           |\n")
        escreva("|3-Listar Quartos       |\n")
        escreva("|4-Faturamento          |\n")
        escreva("|5-Sair do Programa     |\n")
        escreva("|_______________________|\n")         	    		   
        escreva("Digite a opção: ")	
        leia(opcao)
        retorne opcao
    }
     funcao inteiro lerDadosPaciente(cadeia &pacientes[][], logico ehConsulta) {
        cadeia nome, telefone, especialidade
    
        escreva("\nNome do paciente: ")
        leia(nome)
        
        escreva("Telefone: ")
        leia(telefone)
    
        para (inteiro i = 1; i < MAX; i++) {
            se (pacientes[i][0] == "") {
                pacientes[i][0] = nome
                pacientes[i][1] = telefone
                
                se (ehConsulta) {
                    escreva("Especialidade (1-Pediatria / 2-Outra): ")
                    inteiro opcao
                    leia(opcao)
                    se (opcao == 1) {
                        pacientes[i][2] = "Pediatria"
                    } senao {
                        pacientes[i][2] = "Outra especialidade"
                    }
                }
                retorne i 
            }
        }
        retorne 0 
    }
    funcao consulta(cadeia &pacientesConsulta[][], real &faturamentoConsulta, inteiro &totalConsultas, inteiro &pacientesConsultados) {
    
    
    inteiro indicePaciente = lerDadosPaciente(pacientesConsulta, verdadeiro)
    
  
    se(indicePaciente == 0) {
        escreva("\nNão há vagas para novas consultas!\n")
        retorne
    }
    

    se(pacientesConsulta[indicePaciente][2] == "Pediatria") {
        faturamentoConsulta += VALOR_CONSULTA_PEDIATRA
    } senao {
        faturamentoConsulta += VALOR_CONSULTA
    }
    
 
    totalConsultas++
    pacientesConsultados++
    
    escreva("\nConsulta registrada com sucesso!\n")
}
    funcao logico validarNumeroQuarto(inteiro numeroQuarto) {
    retorne (numeroQuarto >= 1 e numeroQuarto <= 20)
}
    funcao listarQuartos(logico quartos[]) {
        escreva("\nQuartos: ")
        para(inteiro i = 1; i < 21; i++) {
            se(i < 11) { 
                escreva(" ", i, "  ")
            } senao {
                escreva(i, "  ")
            }
        }
        escreva("\n         ")
        para(inteiro i = 1; i < 21; i++) {
            se(quartos[i]) {
                escreva("[O] ")
            } senao {
                escreva("[X] ")
            }
        }
        listagemDeVagas(quartos)
    }
    funcao listagemDeVagas(logico quartos[]) {
        inteiro vagas = 0
        para(inteiro i = 1; i < 21; i++) {
            se(quartos[i] == verdadeiro) {
                vagas++
            }
        }
        escreva("\nVagas disponíveis:", vagas, "\n")
    }
    funcao faturamento(real faturamentoConsulta, inteiro totalConsultas, inteiro totalInternacoes, cadeia pacientesInternacao[][]) {
        escreva("\n--- Faturamento ---\n")
        escreva("Consultas realizadas: ", totalConsultas, "\n")
        escreva("Internações: ", totalInternacoes, "\n")
        escreva("Faturamento consultas: R$", faturamentoConsulta, "\n")
        escreva("Faturamento internações: R$", totalInternacoes * VALOR_INTERNACAO, "\n")
        escreva("Total geral: R$", faturamentoConsulta + (totalInternacoes * VALOR_INTERNACAO), "\n\n")
    }
    funcao logico pacienteCadastrado(cadeia pacientes[][], cadeia nome, cadeia telefone) {
        para (inteiro i = 1; i < MAX; i++) {
            se (pacientes[i][0] == nome e pacientes [i][1] ==  telefone) {
                retorne verdadeiro
            }
        }
        retorne falso
    }
    funcao preencherQuartos(logico &quartos[]) {
        para(inteiro i = 1; i < 21; i++) {
            quartos[i] = verdadeiro
        }
    }
    funcao internacao(logico &quartos[], inteiro &totalInternacoes, cadeia &paciente[][]) {
    inteiro numeroQuarto
    inteiro numeroPaciente
    
    faca {
        escreva("Digite o número do quarto (1-20): ")
        leia(numeroQuarto)	
    } enquanto(nao validarNumeroQuarto(numeroQuarto))
    
    se(verificarQuarto(quartos, numeroQuarto)) {
        quartos[numeroQuarto] = falso
        totalInternacoes++
        numeroPaciente = lerDadosPaciente(paciente, falso) 
        escreva("\nQuarto ", numeroQuarto, " reservado para o paciente ",paciente[numeroPaciente][0]," com sucesso!\n")
    } senao {
        escreva("\nQuarto ", numeroQuarto, " ocupado!\n")
    }
}
    funcao logico verificarQuarto(logico quartos[], inteiro numeroQuarto) { 
        retorne quartos[numeroQuarto] 
    }
    funcao sair(logico &exit) {
        exit = verdadeiro
        escreva("\nPrograma encerrado\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 985; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */