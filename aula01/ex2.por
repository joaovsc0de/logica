
programa
{

	//Faça um programa para ler o nome, idade, peso, altura e 
	//estado cívil sendo do tipo caracter de uma pessoa e exibir
	//os dados na tela.
	
	funcao lerEscrever(){
		cadeia nome
		inteiro idade
		real peso, altura
		caracter estadoCivil
		
		escreva("Digite seu nome: ")
		leia(nome)
		escreva("Digite sua idade: ")
		leia(idade)
		escreva("Digite seu peso: ")
		leia(peso)
		escreva("Digite sua altura: ")
		leia(altura)
		escreva("Digite seu Estado Cívil[ C | S ]: ")
		leia(estadoCivil)
		escreva("Nome: " + nome +"\nIdade: " + idade+"\nPeso: " + peso + "\nAltura: "+ altura+"\nEstado Cívil: "+estadoCivil)	
	}
	
	funcao inicio()
	{
		lerEscrever()
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 160; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */