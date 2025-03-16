programa
{

    funcao inicio()
    {
        inteiro matriz[3][2], tLinha, tColuna[2], total=0, j, i, k, l 

        // Inicializando o vetor de soma das colunas
        para(j=0; j < 2; j++){
            tColuna[j] = 0
        }

        // Leitura da matriz
        para(i=0; i < 3; i++){
            para(j=0; j < 2; j++){
                escreva("Digite um número para a posição [", i, "][", j, "]: ")
                leia(matriz[i][j])             
            }
        }

        // Somatório das linhas
        para(k=0; k<3; k++){
            tLinha = 0  // Reinicia a soma da linha
            para(l=0; l<2; l++){
                tLinha += matriz[k][l]  // Soma dos valores da linha
                tColuna[l] += matriz[k][l] // Soma dos valores da coluna
                total += matriz[k][l] // Soma total
            }
            escreva("Total da linha ", k, ": ", tLinha, "\n")
        }

        // Exibir soma das colunas
        para(j=0; j < 2; j++){
            escreva("Total da coluna ", j, ": ", tColuna[j], "\n")
        }
        
        // Exibir total geral da matriz
        escreva("Total geral:", total, "\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 893; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 6, 16, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */