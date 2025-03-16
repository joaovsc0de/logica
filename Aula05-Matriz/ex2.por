//2) Preencher uma matriz[4][2] com valores iniciais e fazer uma rotina para o usuário ler um número e exibir
//uma mensagem se este número existe na matriz, se existir pedir ao usuário para preencher com outro
//valor.

programa
{
	inteiro matriz[4][2] = {{10, 20}, {30, 60}, {20, 30}, {40,50}}
	inteiro numero = 0
	funcao inicio()
	{
		ler()
							 
	}
	funcao ler(){
		escreva("Escreva um número:")
		leia(numero)
		para(inteiro i=0; i<4; i++){
			para(inteiro j=0; j<2; j++){
				se(numero == matriz[i][j])
					escreva("O número ",numero," existe na matriz[",i,"]","[",j,"]\n")
					escreva("Digite um número para preencher: ")
					leia(numero)				
					matriz[i][j] = numero
					escreva("Matriz [",i,"]","[",j,"] = ", matriz[i][j])
					i=4 
					j=2
				}
						
			}
		}
}
	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 406; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */