programa
{
	
	funcao inicio()
	{
		real nota1, nota2, nota3, nota4, media
		escreva("Digite suas notas: ")
		leia(nota1, nota2, nota3, nota4)
		media = (nota1+nota2+nota3+nota4)/4
		se(media < 7){
			escreva("Reprovado.")
		}
		senao {
			escreva("Aprovado")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 264; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */