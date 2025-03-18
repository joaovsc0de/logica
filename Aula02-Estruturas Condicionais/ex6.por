programa
{
	
	funcao inicio()
	{
		cadeia nome
		inteiro idade
		escreva("Nome: ")
		leia(nome)
		escreva("Idade: ")
		leia(idade)
		se(idade > 40){
			escreva("Categoria: Master")
		} senao se(idade > 17){
			escreva("Categoria: Profissional")

		} senao se(idade > 10){
			escreva("Categoria: base")

		} senao{
			escreva("Categoria: Escolinha")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 119; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */