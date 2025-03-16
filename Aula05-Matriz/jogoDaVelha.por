programa
{
	caracter tabuleiro[3][3] = {{' ', ' ', ' '},{' ', ' ', ' '},{' ', ' ',' '}}
	inteiro linha, coluna
	funcao inicio()
	{
		
			montarTabuleiro()
			lerJogada()
			
			
		
	}
	funcao montarTabuleiro(){
		para(inteiro i =0; i<1; i++){
			escreva("   ")
			para(inteiro j=0 ; j<3; j++){
				escreva(j,"   ")
			
			}
			escreva("\n")
		}

			para(inteiro k=0; k<3; k++){
				escreva(k," ")
				para(inteiro l=0; l<3; l++){
					escreva("[",tabuleiro[k][l],"] ")
				}
				escreva("\n")
			}
			
	}
	funcao lerJogada(){
		escreva("Digite a posição em que deseja jogar:\n")
			escreva("Linha: ")
			leia(linha)
			escreva("Coluna: ")
			leia(coluna)
			tabuleiro[linha][coluna] = 'x'
			escreva("\n")
			montarTabuleiro()
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 324; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */