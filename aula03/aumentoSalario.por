
programa
{
	
	funcao inicio()
	{
		real salario[3]

		para(inteiro z = 0; z<3; z++){
			escreva("Digite seu salário: ")
			leia(salario[z])
			se(salario[z] < 2000){
				salario[z] += salario[z]*0.1 
			}			
		}
		para(inteiro z = 0; z<3; z++){
			escreva(z+1,"° salario: R$ ", salario[z], "\n")
		}
	}
}			
		
	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 281; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */