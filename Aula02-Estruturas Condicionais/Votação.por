programa
{
	inclua biblioteca Matematica --> mat  
	funcao inicio()
	{
		inteiro op
		inteiro totalVotos=0
		inteiro candidatoA=0, candidatoB=0, emBranco=0, nulo=0
		
	enquanto(verdadeiro){
		escreva("Digite o seu voto(0 para encerrar a votação): ")
		leia(op)		
		escolha(op){
		caso 0:
			pare
		caso 1 : 
			candidatoA++
			pare		
		caso 2:
			candidatoB++
			pare	
		caso 3:
			emBranco++
			pare					
		caso contrario: 
			nulo++
		}
		se(op == 0){
			pare
		}
		totalVotos++
	}	
	escreva("Total de votos: ", totalVotos,"\n")
	escreva("Votos candidato A: ", candidatoA,". ",mat.arredondar((candidatoA*100.0)/totalVotos, 2), "% do total de votos.\n")
	escreva("Votos candidato B: ", candidatoB,". ",mat.arredondar((candidatoB*100.0)/totalVotos,2),"% do total de votos.\n")
	escreva("Votos brancos: ", emBranco,". ",mat.arredondar((emBranco*100.0)/totalVotos,2),"% do total de votos.\n")
	escreva("Votos nulo: ", nulo,". ",mat.arredondar((nulo*100.0)/totalVotos,2),"% do total de votos.\n")
		
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 535; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */