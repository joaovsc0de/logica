programa
{
	
	funcao inicio()
	{	
		cadeia nome, condicao
		inteiro idade
		escreva("Digite seu nome, idade e condicao:\n")
		leia(nome, idade, condicao)
		se(idade > 65 ou condicao == "deficiente" ou condicao == "gestante"){
			escreva("Fila preferencial")
		}
		senao {
			escreva("Fila comum")

		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 276; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */