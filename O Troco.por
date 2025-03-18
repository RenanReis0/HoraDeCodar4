programa
{
	
   	real saldo = 150.00
    cadeia nome
    real senha = 3589
  funcao inicio(){
    escreva("Qual seu nome? ")
    leia(nome)

    escreva("Olá ",nome,", é um prazer ter você por aqui!\n")
    opcoes()
}


	funcao opcoes() {
    inteiro opcao
	
		escreva("Escolha uma opção:\n")
		escreva("1. Saldo\n")
		escreva("2. Extrato\n")
		escreva("3. Saque\n")
		escreva("4. Depósito\n")
    escreva("5. Transferência\n")
    escreva("6. Sair\n")
		leia(opcao)

		escreva("A opção selecionada foi: " +opcao + "\n")

    escolha(opcao){
      caso 1:
        verSaldo()
        pare
      caso 2:
        verExtrato()
        pare
      caso 3:
        fazerSaque()
        pare
      caso 4:
        fazerDeposito()
        pare
      caso 5:
        fazerTranferencia()
        pare
      caso 6:
        sair()
        pare
      caso contrario:
        escreva("Opção inválida!\n")
        opcoes()
    }

	}

	funcao verSaldo(){
    escreva("Informe a senha da conta: ")
    leia(senha)
      se(senha==3589){
        escreva("Seu saldo atual é: ", saldo, "\n")
	      opcoes()
      } senao {
        escreva("Senha errada.\n")
        verSaldo()
      }

	}

  funcao verExtrato(){
	  escreva("Informe a senha da conta: ")
    leia(senha)
    se(senha==3589){
      escreva("Transferência de 150 R$")
      verSaldo()
    } senao{
      escreva("Senha errada.\n")
      verExtrato()
    }
  }

	funcao fazerSaque(){
	
		real saque
	  escreva("Informe a senha da conta: ")
    leia(senha)
    se(senha==3589){
      
		  escreva("Qual o valor para saque? \n")
		  leia(saque)
	
		    se (saque <= 0){
	        escreva("Operação não autorizada.\n")
	        fazerSaque()
		    }
        se (saque>saldo){
          escreva("Operação não autorizada.\n")
          fazerSaque()
        }
        senao {
			    saldo = saldo - saque
			    verSaldo()
		    }
    } senao {
      escreva("Senha errada.\n")
      fazerSaque()
    }

	}

	funcao fazerDeposito() {

		real deposito
		
		escreva("Qual o valor para depósito? ")
		leia(deposito)
		
		se (deposito <= 0){
			escreva("Operação não autorizada.\n")
			fazerDeposito()
		} senao {
			saldo = saldo + deposito
			verSaldo()
		}
	}
	
  funcao fazerTranferencia(){
    real conta=39993, valor

	  escreva("Informe a senha da conta: ")
    leia(senha)

    se(senha==3589){
      escreva("Informe o número da conta: ")
      leia(conta)

      escolha(conta){
        caso 39993:
          escreva("Qual valor deseja tranferir: ")
          leia(valor)
            se(valor>saldo ou valor<=0){
              escreva("Opção não autorizada.\n")
              fazerTranferencia()
            } senao{
              saldo = saldo - valor
              escreva("Transferência concluída com sucesso.")
              verSaldo()
            }
        caso contrario:
          escreva("Número de conta inválido.\n")
          fazerTranferencia()
      }
    } senao {
      escreva("Senha errada.\n")
      fazerTranferencia()
    }




  }

	funcao sair(){
		escreva(nome, ", foi um prazer ter você por aqui!\n")
	}
}
