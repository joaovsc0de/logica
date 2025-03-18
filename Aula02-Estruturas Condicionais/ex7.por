programa
{
	
	funcao inicio()
	{
		const real pao = 0.50
		const real broa = 5.00

		real receita
		inteiro quantidadeP, quantidadeB
		escreva("Digite o número de pães vendidos: ")
		leia(quantidadeP)
		escreva("Digite o número de broas vendidas: ")
		leia(quantidadeB)
		receita = quantidadeP*pao + quantidadeB*broa
		escreva("Arrecadação: R$ ", receita,"\n")
		escreva("Valor adicionado a poupança: R$ ", receita*0.1)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 410; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */