programa
{
	inclua biblioteca Util -->U
	inclua biblioteca Matematica --> Mat
	
	funcao inicio()
	{
		inteiro numero = 0
		sorteio(numero)
		escreva("Número:")
		imprimir(numero)
		exibe(numero)
		escreva("Número:")
		imprimir(numero)
	}

	funcao sorteio(inteiro &n){
		n = U.sorteia(100, 1000)
	}
	
	funcao exibe(inteiro &n){
		escreva(n,"\n")
		n = 50
	}
	funcao imprimir(inteiro numero){
		escreva(numero, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 422; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */