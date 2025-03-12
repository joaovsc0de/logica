programa
{
	
	funcao cadeia ler_nome(){
		cadeia nome
		leia(nome)
		retorne nome
	}
	funcao inteiro ler_idade(){
		inteiro idade
		leia(idade)
		retorne idade
	}
	funcao inicio(){
		escreva("Digite seu nome e idade: ")
		escreva("Olá Mundo!\n" + "Olá " + ler_nome()+"!\nVocê tem "+ler_idade()+" anos.")	
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