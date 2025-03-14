//Criar um algortimo para leitura de 5 idades  descobrir qual a maior e a menor idade e a media de idades
programa
{
	
	funcao inicio()
	{	
		inteiro idade[5], mediaIdade = 0, maior=0, menor=150		
		para(inteiro i = 0; i<5; i++){
			escreva("Digite sua idade: ")
			leia(idade[i])
			mediaIdade += idade[i]		
		se(idade[i] > maior){							
			maior = idade[i]
			}
		se(idade[i] < menor){
			menor = idade[i]			
			}		
	}						
		    escreva("A menor idade é: ", menor, "\n")
		    escreva("A maior idade é: ", maior, "\n")
		    escreva("A média das idades é: ", mediaIdade/5)		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 245; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */