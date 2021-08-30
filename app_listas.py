""""
Criando uma aplicação para testar meus conhecimentos em Python utilizando lista
-Aqui temos um lista para produtos e valores, onde podemos realizar inserções, consultas e remoções simultaneamente
-Lista está vazia então é preciso adicionar itens antes de realizar as operações de consulta e remoção

"""
produtos = []
valor = []

inicio_app = ''


#FUNÇÃO DE CONSULTA DAS LISTAS

def consulta():
    con = input('Desaja consultar a lista completa (S/N) ? ')
    con = con.upper()
    if con == 'S':
        print(f'Produto: {produtos[0:]}')
        print(f'Valor: {valor[0:]}\n')
    elif con == 'N':
        con1 = input('Qual nome do produto: ')
        con1 = con1.lower()
        resul = produtos.index(con1)
        print(f'Produto: {produtos[resul]}, Valor: {valor[resul]}\n')
    else:
        print('OPÇÃO INVALIDA!!')


#FUNÇÃO DE ALTERAÇÃO DAS LISTAS

def alterar():

    # ALTERANDO O NOME DO PRODUTO
    print(produtos)
    alt = input('Digite o nome do produto que deseja alterar: ')
    print('')
    alt = alt.lower()
    alt_result = produtos.index(alt)

    alt_nome = input('Digite o novo nome: ')
    print('Altera realizada com sucesso!')
    print('')
    produtos[alt_result] = alt_nome

    print(produtos)

    #ALTERANDO O VALOR DO PRODUTO
    novo_valor = input('Deseja alterar o valor também (S/N) ? ')
    novo_valor = novo_valor.upper()
    if novo_valor == 'S':
        entrada_valor = input("Digite um novo valor utilizando '.': ")
        print('Altera realizada com sucesso!')
        print('')
        valor[alt_result] = entrada_valor

        print(f'Dados das alterações efetuadas\n'
          f'Produto: {alt_nome}\n'
          f'Valor: {entrada_valor}\n')
    else:
        print('OPÇÃO INVALIDA!!')


#FUNÇÃO DE INSERÇÃO DAS LISTAS

def insercao():
    #INSERÇÃO DO PRODUTO
    print('Você está no ambiente de inserção do sistema\n')
    ins_produto = input('Digite o produto que deseja inserir na lista: ')
    produtos.append(ins_produto)
    print('operação realizada com sucesso!\n')

    #INSERÇÃO DO VALOR
    ins_valor = input("Digite o valor do produto inserido na lista utilizando '.': ")
    valor.append(ins_valor)

    #DADOS APLICAÇÃO REALIZADA
    print('operação realizada com sucesso!\n')
    print(f'Dados da operação efetuada\n'
          f'Produto: {ins_produto}\n'
          f'Valor: {ins_valor}\n')
    print(f'{produtos}\n')
    print(f'{valor}\n')


#FUNÇÃO DE REMOÇÃO DAS LISTAS

def remocao():
    #REMOÇÃO DO PRODUTO EM CONJUNDO COM VALOR
    rem = input('Digite o nome produto que deseja excluir do sistema: ')
    rem = rem.lower()
    rem_result = produtos.index(rem)
    produtos.pop(rem_result)
    valor.pop(rem_result)
    print('operação realizada com sucesso!\n')


def estoque():
    #CONSULTA DO ESTOQUE
    est = input('Deseja consultar a posição do produto na lista (S/N): ')
    est = est.upper()
    if est == 'S':
        est_rec = input('Digite o nome do produto: ')
        est_result = produtos.index(est_rec)
        print(f'Posição do produto: {est_result}')
    else:
        print(f'Lista completa:\n {produtos}')


#INICIAÇÃO DO LOOP DO APLICAÇÃO
while inicio_app != 'sair':

    print("Escolha umas das opções a seguir ou digite 'sair'\n"
          "Digite '1' Para Consultar Produtos da Loja \n"
          "Digite '2' Para Alterar Produtos da Loja \n"
          "Digite '3' Para Adicionar Produtos a Loja\n"
          "Digite '4' Para Excluir Produtos da Loja\n"
          "Digite '5' Para Vizualizar estoque da Loja\n")


    resposta = input('Digite número da operação: ')

    if resposta == '1' or resposta == '2' or resposta == '3' or resposta == '4' or resposta == '5':

    # BLOCO DE CONSULTA
        if resposta == '1':
            consulta()

    # BLOCO DE ALTERAÇÃO
        elif resposta == '2':
            alterar()

    # BLOCO DE INSERÇÃO
        elif resposta == '3':
            insercao()

    # BLOCO DE REMOÇÃO
        elif resposta == '4':
            remocao()

    # BLOCO DE ESTOQUE
        elif resposta == '5':
            estoque()
    else:
        print('OPÇÃO INVALIDA!!')

    inicio_app = input("Digite 'sim' P/ continuar ou 'sair' P/ finalizar aplicação: ")
    inicio_app = inicio_app.lower()



