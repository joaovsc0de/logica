programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		cadeia nome[5]
		real altura[5] 

			para(inteiro z=0; z<5; z++){
				escreva("Digite seu nome: ")
				leia(nome[z])
				escreva("Digite sua altura: ")
				leia(altura[z])
				enquanto(altura[z] <= 0){
					escreva("Digite altura deve ser maior que 0")
					leia(altura[z])					
				}			
			}
			para(inteiro z=0; z<5; z++){
				escreva("Nome: ", nome[z],"\n","Altura: ",mat.arredondar(altura[z],2), "\n")
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 447; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */