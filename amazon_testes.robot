*** Settings ***
Documentation    Essa suite testa o site da Amazon.com.br
Resource         amazon_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
caso de Teste 01 - Acesso ao menu "Eletrônicos"
        [Documentation]  Esse teste verifica o menu eletrônicos do site da Amazon.com.br
        ...              e verificar a categoria Computadores e Informática
        [Tags]           Menus    categoria
        Acessar a home page do site Amazon.com.br
        Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
        Entrar menu "Eletrônicos"
        Verificar se aparece a frase "Eletrônicos e Tecnologia"
        Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
        Verificar se aparece a categoria "Computadores e Informática"
        Verificar se aparece a categoria "Tablets"

caso de Teste 02 - Pesquisa de um Produto 
       [Documentation]    Esse teste verifica a buscar de um produto
       [Tags]             buscar_produtos    lista_buscar
        Acessar a home page do site Amazon.com.br
        Digitar o nome de produto "Xbox Series S" no campo de pesquisa
        Clicar no botão de pesquisa
        Verificar o resultado da pesquisa, se está listando o produto pesquisado "Console Xbox Series S"
       

   