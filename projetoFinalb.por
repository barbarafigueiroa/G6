programa
{
	inclua biblioteca Matematica --> m
	funcao inicio()
	{
		cadeia produtos[10] = {"MOUSE          ","TECLADO        ","MONITOR        ","CABO USB","FONE DE OUVIDO","CARREGADOR","ADAPTADOR","PELICULA","CASE P/ CELULAR","CABO HDMI"}
		cadeia produtosc[10] = {"","","","","","","","","",""}	
		cadeia codigo[10] = {"G6-0   ","G6-1   ","G6-2   ","G6-3   ","G6-4   ","G6-5   ","G6-6   ","G6-7   ","G6-8   ","G6-9   "}
		cadeia codigoc[10] = {"","","","","","","","","",""}			
		real valor[10] = {50.0,150.0,900.0,20.00,50.00,30.00,50.00,20.00,40.00,55.00}
		real valorc[10] = {0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00}		
		inteiro estoque[10] = {10,10,10,10,10,10,10,10,10,10}
		inteiro carrinho[10] = {0,0,0,0,0,0,0,0,0,0}
		caracter opcao
		inteiro i=0,quantidade=0
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
		
		escreva(" ______________________________________________\n")
		escreva("| $   $                                  $   $ |\n")
		escreva("|   $        SISTEMA DE VENDAS ONLINE      $   |\n")
		escreva("|               37GEN COMÉRCIOS LTDA           |\n")
		escreva("|_$___$__________________________________$___$_|\n")
		escreva("\n  >>  TUDO QUE VOCÊ PRECISA AQUI  <<     \n")
		escreva("\n\n")
		escreva(" ______________________________________________\n")
		escreva("|                                              |\n")
		escreva("|       > > >   TABELA DE PRODUTOS    < < <    |\n")
		escreva("|______________________________________________|\n")
		escreva("|__PRODUTOS_____|___CÓD___|__VALOR_UNT.|ESTOQUE|\n")
		escreva("|MOUSE          |    1    |    R$ 50,00|  10   |\n")
		escreva("|TECLADO        |    2    |   R$ 150,00|  20   |\n")
		escreva("|MONITOR        |    3    |  R$ 1500,00|  30   |\n")
		escreva("|CABO USB       |    4    |    R$ 20,00|  40   |\n")
		escreva("|FONE DE OUVIDO |    5    |    R$ 50,00|  50   |\n")
		escreva("|CARREGADOR     |    6    |    R$ 30,00|  60   |\n")
		escreva("|ADAPTADOR      |    7    |    R$ 50,00|  70   |\n")
		escreva("|PELÍCULA       |    8    |    R$ 20,00|  80   |\n")
		escreva("|CASE P/ CELULAR|    9    |    R$ 40,00|  90   |\n")
		escreva("|CABO HDMI      |    10   |    R$ 55,00|  100  |\n")
		escreva("|_______________|_________|____________|_______|\n")
		escreva("\n\nDESEJA CONTINUAR COMPRANDO? DIGITE S OU N:")
		leia(opcao)
		
		se(opcao == 'S' ou opcao == 's'){
			limpa()
			escreva("\n               $ $ $ VAMOS GASTAR? $ $ $\n")
			
			enquanto(opcao=='s' ou opcao=='S'){

				escreva(" _______________________________________________________\n")
				escreva("|________________>> ITENS DISPONÍVEIS <<________________|\n")
				escreva(" _______________________________________________________\n")
				escreva("|____COD.____|___PRODUTO____|__VALOR UNIT.__|__ESTOQUE__|\n")
				para(i=0;i<10;i++){
					escreva("\n"+codigo[i]+"\t\t"+produtos[i]+"\t"+valor[i]+"\t\t"+estoque[i])
				
				}
				escreva("\n\nDIGITE O ÚLTIMO NÚMERO DO CÓDIGO: ")
				leia(i)
				escreva(" _________________________________________________________\n")
				escreva("|____COD.____|___PRODUTO____|__VALOR UNIT.__|___ESTOQUE___|\n")
				escreva("\n "+codigo[i]+"\t"+produtos[i]+"\tR$"+valor[i]+ "\t      " +estoque[i])
				codigoc[i]=codigo[i]
				produtosc[i]=produtos[i]
				valorc[i]=valor[i]
				escreva("\n\nDIGITE A QUANTIDADE QUE GOSTARIA COMPRAR: ")
				leia(quantidade)
		 	
		 		se(quantidade>=estoque[i]){
		 			escreva("QUANTIDADE INDISPONÍVEL NO ESTOQUE. ENTRAREMOS EM CONTATO EM REPOSIÇÃO")		 		
		 		}senao {
		 			estoque[i]=estoque[i]-quantidade
		 			carrinho[i]=carrinho[i]+quantidade
		 			valorTotalCompra= valorTotalCompra+(quantidade*valor[i])
		 		}
		 	
				escreva("\nITEM ADCIONADO AO CARRINHO!")			 	
		 		escreva("\nCONTINUAR COMPRANDO ? s/n ")
				leia(opcao)
				limpa()
			}	
			
			
			escreva(" __________________________________________________________\n")
			escreva("|_____________________CARRINHO DE COMPRAS__________________|\n")
			
			para(i=0;i<10;i++){
				se(carrinho[i]!=0 e codigoc[i]!="" e valorc[i]!=0.00 e produtosc[i]!="" ){
				escreva(" __________________________________________________________\n")
				escreva("|____COD.____|___PRODUTO____|__VALOR UNIT.__|__QUANTIDADE__|\n")	
				escreva("\n "+codigoc[i]+"\t"+produtosc[i]+"\t"+valorc[i]+"\t\t"+carrinho[i]+ "\n")
				}
			}
			escreva("\n ________________________________________________________")
			escreva("\n                                                         ")
			escreva("\n  VALOR ACUMULADO NO CARRINHO:               R$ "+valorTotalCompra+"\n")
			escreva(" ________________________________________________________")
			
			

			escreva("\n")
			escreva("\n")
			escreva("  __________________________________________________________\n")
			escreva(" |_________________PRODUTOS AINDA DISPONÍVEIS_______________|\n")
			escreva(" |____COD.____|____PRODUTO____|__VALOR UNIT.__|___ESTOQUE___|\n")
			para (i=0;i<10;i++){	
			
				escreva("    "+codigo[i]+"\t"+produtos[i]+"\t  "+valor[i]+"\t         "+estoque[i]+" \n")
			}


			valorComImposto = valorTotalCompra + (valorTotalCompra * 9)/100
			valorTotalCompra = valorComImposto

			escreva("\n__________________________________________________________\n")
			escreva("\nDIGITE 1 PARA PAGAMENTO À VISTA\n")
			escreva("__________________________________________________________\n")
			escreva("\nDIGITE 2 PARA PAGAMENTO EM CARTÃO\n")
			leia(formaPagamento)
			se(formaPagamento == 1){
				valorComDesconto = valorTotalCompra - (valorTotalCompra * 10)/100
				valorTotalCompra = valorComDesconto
				escreva("\n >>> PARA PAGAMENTOS À VISTA VOCÊ GANHA 10% DE DESCONTO!! <<<\n")
				escreva("____________________________________________________________\n")
				escreva("\nVALOR TOTAL DA COMPRA: R$", m.arredondar(valorTotalCompra,2),"\n")
				escreva("____________________________________________________________\n")
				escreva("\n\n  >> COMPRA REALIZADA COM SUCESSO! << \n")
				escreva("\nDESEJA GERAR O BOLETO PARA O PAGAMENTO? ")
				leia(respostaEtapaPagamento)
				se(respostaEtapaPagamento =='n' ou respostaEtapaPagamento == 'N'){
					escreva("\n >>> OBRIGADE PELA PREFERÊNCIA <<<\n")
				}
				senao se(respostaEtapaPagamento == 's' ou respostaEtapaPagamento == 'S'){
					escreva("\n\n____________________________________________________________\n")
					escreva("\nNUMERO DO BOLETO: 36546845614684654868468468786460000000 64\n")
					escreva("____________________________________________________________\n")
					escreva("\n\nPROSSEGUIR PARA EMISSÃO DE NOTA FISCAL? ")
					leia(proximoPasso)
						se(proximoPasso == 's' ou proximoPasso == 'S'){
							
							escreva("\n\n_____________________________\n")
							escreva("\nNOTA FISCAL: 216546454654")
							escreva("\n_____________________________\n")
						}senao se(proximoPasso == 'n' ou proximoPasso == 'N'){
							escreva("\n >>> OBRIGADE PELA PREFERÊNCIA <<<\n")
						}
						senao se(proximoPasso != 's' ou proximoPasso != 'S' ou proximoPasso != 'n' ou proximoPasso != 'N'){
							escreva("\nDESCULPE, OPÇÃO INVÁLIDA!")
							escreva("\nDESEJA VOLTAR AO MENU DE COMPRAS? ")	
							leia(respostaIndecisa)
							se(respostaIndecisa == 's' ou respostaIndecisa == 'S'){
								escreva("/nVOCÊ SERÁ REDIRECIONADO A PÁGINA INICIAL")
							}
						}

				}
			}		
			senao se(formaPagamento == 2){
				escreva("\nGOSTARIA DE PARCELAR? ")
				leia(respostaParcelas)
				se(respostaParcelas == 's' ou respostaParcelas == 'S'){
					escreva("\nSUA COMPRA SERÁ PARCELADA EM 2X\n")
					valorComImpostoParcela = valorTotalCompra + (valorTotalCompra * 15)/100
					valorParcelado = valorComImpostoParcela / 2
					escreva("\n >> PARA COMPRAS EFETUADAS E PARCELADAS NO CARTÃO DE CRÉDITO HAVERÁ ACRESCIMO DE 15% SOBRE O VALOR TOTAL DA COMPRA <<\n")
					escreva("\n____________________________________________________________\n")
					escreva("\nVALOR DA PARCELA: R$", valorParcelado)
					escreva("\n____________________________________________________________\n")
					escreva("\nVALOR TOTAL DA SUA COMPRA: ", valorTotalCompra)
					escreva("\n____________________________________________________________\n")
					escreva("\n\nDESEJA GERAR O BOLETO PARA O PAGAMENTO? ")
					leia(respostaEtapaPagamento)
					se(respostaEtapaPagamento =='n' ou respostaEtapaPagamento == 'N'){
						escreva("\n >>> OBRIGADE PELA PREFERÊNCIA <<<\n")
					}
					senao se(respostaEtapaPagamento == 's' ou respostaEtapaPagamento == 'S'){
						escreva("\n\n____________________________________________________________\n")
						escreva("\nNUMERO DO BOLETO: 36546845614684654868468468786460000000 64\n")
						escreva("____________________________________________________________\n")
						escreva("\n\n  >> COMPRA REALIZADA COM SUCESSO! << \n")
						escreva("\n\nPROSSEGUIR PARA EMISSÃO DE NOTA FISCAL? ")
						leia(proximoPasso)
						se(proximoPasso == 's' ou proximoPasso == 'S'){
							escreva("\n\n_____________________________\n")
							escreva("\nNOTA FISCAL: 216546454654")
							escreva("\n_____________________________\n")
						}senao se(proximoPasso == 'n' ou proximoPasso == 'N'){
							escreva("\n >>> OBRIGADE PELA PREFERÊNCIA <<<\n")
						}
						senao se(proximoPasso != 's' ou proximoPasso != 'S' ou proximoPasso != 'n' ou proximoPasso != 'N'){
							escreva("\nDESCULPE, OPÇÃO INVÁLIDA!")
							escreva("\nDESEJA VOLTAR AO MENU DE COMPRAS? ")	
							leia(respostaIndecisa)
							se(respostaIndecisa == 's' ou respostaIndecisa == 'S'){
								escreva("/nVOCÊ SERÁ REDIRECIONADO A PÁGINA INICIAL")
							}
						}
					
					
					}
					senao se(respostaEtapaPagamento != 's' ou respostaEtapaPagamento != 'S' ou respostaEtapaPagamento != 'n' ou respostaEtapaPagamento != 'N'){
						escreva("DESCULPE, OPÇÃO INVÁLIDA!")
					}
					
					
			}
			senao se(respostaParcelas == 'n' ou respostaParcelas == 'N'){
				escreva("\nVALOR TOTAL DA COMPRA: R$", valorTotalCompra)
				escreva("\n\nDESEJA GERAR O BOLETO PARA O PAGAMENTO? ")
				leia(respostaEtapaPagamento)
				se(respostaEtapaPagamento =='n' ou respostaEtapaPagamento == 'N'){
						escreva("\n >>> OBRIGADE PELA PREFERÊNCIA <<<\n")
					}
					senao se(respostaEtapaPagamento == 's' ou respostaEtapaPagamento == 'S'){
						escreva("\n\n____________________________________________________________\n")
						escreva("\nNUMERO DO BOLETO: 36546845614684654868468468786460000000 64\n")
						escreva("____________________________________________________________\n")
						escreva("\n\nPROSSEGUIR PARA EMISSÃO DE NOTA FISCAL? ")
						leia(proximoPasso)
						se(proximoPasso == 's' ou proximoPasso == 'S'){
							
							escreva("\n\n  >> COMPRA REALIZADA COM SUCESSO! << ")
							escreva("\n\n_____________________________\n")
							escreva("\nNOTA FISCAL: 216546454654")
							escreva("\n_____________________________\n")
						}senao se(proximoPasso == 'n' ou proximoPasso == 'N'){
							escreva("\n >>> OBRIGADE PELA PREFERÊNCIA <<<\n")
						}
						senao se(proximoPasso != 's' ou proximoPasso != 'S' ou proximoPasso != 'n' ou proximoPasso != 'N'){
							escreva("\nDESCULPE, OPÇÃO INVÁLIDA!")
							escreva("\nDESEJA VOLTAR AO MENU DE COMPRAS? ")	
							leia(respostaIndecisa)
							se(respostaIndecisa == 's' ou respostaIndecisa == 'S'){
								escreva("/nVOCÊ SERÁ REDIRECIONADO A PÁGINA INICIAL")
							}
						}
					
					
					}
					senao se(respostaEtapaPagamento != 's' ou respostaEtapaPagamento != 'S' ou respostaEtapaPagamento != 'n' ou respostaEtapaPagamento != 'N'){
						escreva("DESCULPE, OPÇÃO INVÁLIDA!")
					}
				
			
			}senao se(respostaParcelas != 's' ou respostaParcelas != 'S' ou respostaParcelas != 'n' ou respostaParcelas != 'N'){
				escreva("DESCULPE, OPÇÃO INVÁLIDA!")
				
			}
	


			
		}
		
			senao {
			
          		escreva("\n >>>:  OBRIGADA PELA VISITA. VOLTE SEMPRE! :<<< ")

			}

			
		}
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 12080; 
 * @DOBRAMENTO-CODIGO = [128, 166];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz;
 */