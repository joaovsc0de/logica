programa
{
	funcao inteiro imparPar(){
		inteiro numero
		escreva("Digite um número: ")
		leia(numero)
		retorne numero
	}
	funcao inteiro imprimir(inteiro numero){
		logico resul 
		se (numero%2 == 0){
			escreva(numero," é par.\n")
			resul = verdadeiro
		} senao{
				escreva(numero," é impar.\n")	
				resul = falso
			}
			retorne numero
	}
	funcao contagem(inteiro numero){
		para(inteiro i = 0; i < numero; i++){
			escreva(numero,"\n")
		}	
	}
	funcao inicio()
	{	
		
		contagem(imprimir(imparPar()))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 513; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */