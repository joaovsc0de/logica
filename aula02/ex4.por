programa
{
	
	funcao inicio()
	{
		real numero1, numero2
		caracter operacao
		escreva("Digite a operacao:+\n")
		leia(numero1, operacao, numero2)

		escolha(operacao){
		
			caso '*' : escreva(numero1*numero2)
			pare
			caso '+' : escreva(numero1+numero2)
			pare
			caso '-' : escreva(numero1-numero2)
			pare
			caso '/' : escreva(numero1/numero2)
			pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 215; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */