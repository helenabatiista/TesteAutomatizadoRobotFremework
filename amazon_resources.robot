*** Settings ***
Library        SeleniumLibrary


*** Variables ***
${URL}     https://www.amazon.com.br
${MENU_ELETRONICOS}     //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics']
${HEADER_ELETRONICOS}    //h1[contains(.,'Eletrônicos e Tecnologia')]
${TEXTO_HEARD_ELETRONICOS}    Eletrônicos e Tecnologia

*** Keywords ***
Abrir o navegador
    Open Browser     browser=chrome
    Maximize Browser Window
Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}

Entrar menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS}

 Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Wait Until Page Contains    text=${TEXTO_HEARD_ELETRONICOS} 
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//a[@aria-label='${NOME_CATEGORIA}']



Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox    text=${PRODUTO}

Clicar no botão de pesquisa
    Click Element    locator=nav-search-submit-button

Verificar o resultado da pesquisa, se está listando o produto pesquisado "${PRODUTO}"
    Wait Until Element Is Visible    locator=(//span[contains(.,'Console Xbox Series S')])[2]
    
