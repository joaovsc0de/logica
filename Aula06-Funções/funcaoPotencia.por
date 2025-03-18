programa
{
	//Criar uma funcao que calcule a potencia de dois nuúmeros e retorne o valor do resultado
	funcao inicio()
	{
	inteiro base=0, expoente=0
		ler(base, expoente)
		potencia(base, expoente)
		imprimir(potencia(base, expoente))
		
	}
	funcao ler(inteiro &base, inteiro &expoente){
		escreva("Digite a base:")
		leia(base)
		escreva("Digite o expoente:")
		leia(expoente)
	}
	funcao inteiro potencia(inteiro base, inteiro expoente){
		inteiro pot
		pot = base
		se(expoente == 0){
			pot = 1
		}
		para(inteiro i=1; i<expoente; i++){
			pot = (pot*base)
		}
		retorne pot		
	}
	funcao imprimir(inteiro pot){
		escreva(pot)
	}
}		
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 459; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */