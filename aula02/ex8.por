programa
{ 
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{	
	 	const real gasolinaPreco = 6.43
		real valorGasolina, litros
		escreva("Digite o valor do pagamento: ")
		leia(valorGasolina)
		litros = valorGasolina/gasolinaPreco
		escreva("Total de ", mat.arredondar(litros, 2), " litros de gasolina.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 327; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */