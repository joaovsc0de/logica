programa
{
	inclua biblioteca Matematica --> mat  
	funcao inicio()
	{
		inteiro op
		real total=0.0 
		real hamburguer = 3.00
		inteiro totalHamburguer = 0
		real cheeseburguer = 2.50
		inteiro totalcheeseburguer = 0
		real fritas = 2.50
		inteiro totalfritas = 0
		real refrigerante = 1.00
		inteiro totalrefrigerante = 0
		real milkshake = 3.00
		inteiro totalmilkshake = 0
		
	enquanto(verdadeiro){
		escreva("Digite o número do seu pedido: ")
		leia(op)		
		escolha(op){
		caso 0:
			pare
		caso 1 : 
			total+=hamburguer
			totalHamburguer++			
			pare		
		caso 2:
			total+=cheeseburguer
			totalcheeseburguer++
			pare	
		caso 3:
			total+=fritas
			totalfritas++
			pare	
		caso 4:
			total+=refrigerante
			totalrefrigerante++
			pare		
		caso 5:
			total+=milkshake
			totalmilkshake++
			pare						
		caso contrario: 
			escreva("Digite uma opção válida.")
		}
		se(op == 0){
			pare
		}	
	}
			escreva("Total da conta: R$ ", total,"\n")
			escreva("Total Hambúrguer: ", totalHamburguer,"\n")
			escreva("Total Cheeseburguer: ", totalcheeseburguer,"\n")
			escreva("Total Fritas: ", totalfritas,"\n")
			escreva("Total Refrigerante: ", totalrefrigerante,"\n")
			escreva("Total Milkshake: ", totalmilkshake)
			
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 458; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */