programa
{
	
	funcao inicio()
	{
		inteiro formaPagamento = 0
		real valorTotalCompra = 0.0
		real valorParcelado = 0.0
		real valorComImposto = 0.0
		real valorComDesconto = 0.0
		caracter respostaEtapaPagamento 
		caracter respostaParcelas 
		caracter proximoPasso
		caracter respostaIndecisa
		real valorComImpostoParcela =0.0
		
		 

		valorComImposto = valorTotalCompra + (valorTotalCompra * 9)/100
		valorTotalCompra = valorComImposto
		
		escreva("\nDIGITE 1 PARA PAGAMANETO À VISTA")
		escreva("\nDIGITE 2 PARA PAGAMENTO EM CARTÃO")
		leia(formaPagamento)
		se(formaPagamento == 1){
			valorComDesconto = valorTotalCompra - (valorTotalCompra * 10)/100
			valorTotalCompra = valorComDesconto
			escreva("\nVALOR TOTAL DA SUA COMPRA: ", valorTotalCompra)
			escreva("\nDESEJA GERAR O BOLETO PARA O PAGAMENTO? ")
			leia(respostaEtapaPagamento)
			se(respostaEtapaPagamento != 's' ou respostaEtapaPagamento != 'S' ou respostaEtapaPagamento != 'n' ou respostaEtapaPagamento != 'N'){
					escreva("DESCULPE, OPÇÃO INVÁLIDA!")
			}senao se(respostaEtapaPagamento == 's' ou respostaEtapaPagamento == 'S'){
				escreva("NUMERO DO BOLETO: 365468456146846464")
				
			}senao se(respostaEtapaPagamento == 'n' ou respostaEtapaPagamento == 'N'){
				escreva("DESEJA VOLTAR AO MENU PRINCIPAL?")
				//condição
			}
		}		
		senao se(formaPagamento == 2){
			escreva("GOSTARIA DE PARCELAR?")
			leia(respostaParcelas)
			se(respostaParcelas == 's' ou respostaParcelas == 'S'){
				escreva("SUA COMPRA SERÁ PARCELADA EM 2X")
					valorComImpostoParcela = valorTotalCompra + (valorTotalCompra * 15)/100
					valorParcelado = valorComImpostoParcela / 2
					escreva("VALOR TOTAL DA SUA COMPRA: ", valorTotalCompra)
			}
			senao se(respostaParcelas != 's' ou respostaParcelas != 'S' ou respostaParcelas != 'n' ou respostaParcelas != 'N'){
					escreva("DESCULPE, OPÇÃO INVÁLIDA!")
					
			}senao se(respostaParcelas == 'n' ou respostaParcelas == 'N'){
				valorTotalCompra = valorTotalCompra + (valorTotalCompra * 10)/100
				escreva("VALOR TOTAL DA COMPRA: ", valorTotalCompra)
				escreva("PROSSEGUIR PARA CONLUSÃO DE PAGAMENTO E EMISSÃO DE NOTA FISCAL?")
				leia(proximoPasso)
				se(proximoPasso == 's' ou proximoPasso == 'S'){
					escreva("\nCOMPRA REALIZADA COM SUCESSO!	")
					escreva("NOTA FISCAL 2165451325156432")
				}
				senao se(proximoPasso != 's' ou proximoPasso != 'S' ou proximoPasso != 'n' ou proximoPasso != 'N'){
					escreva("DESCULPE, OPÇÃO INVÁLIDA!")
				}
				senao{
					escreva("\nDESEJA VOLTAR AO MENU DE COMPRAS? ")	
					leia(respostaIndecisa)
					se(respostaIndecisa == 's' ou respostaIndecisa == 's'){
						escreva("NÃO FAÇO IDEIA DO QUE FAZER AQUI!!")
					}
				}
			}
		}
	}
	escreva("VALOR TOTAL DA COMPRA: ", valorTotalCompra)
	escreva("VALOR DA COMPRA COM IMPOSTO: ", valorComImposto)
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1304; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */