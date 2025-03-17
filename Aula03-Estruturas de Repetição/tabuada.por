//faça uma tabuada
programa
{
	funcao inteiro ler(){
		inteiro numero
		escreva("Digite um número para ver a tabuada: ")
		leia(numero)
		retorne numero
	}
	funcao tabuada(inteiro numero){
		para(inteiro i = 0; i<=10; i++){
			escreva(i," x ", numero ," = ", i*numero,"\n")
		}
	}
	
	funcao inicio()
	{
		tabuada(ler())
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 18; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */