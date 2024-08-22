*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.amazon.com.br

*** Test Cases ***
Abrir Navegador
    Open Browser    url=${URL}    browser=chrome    options=add_experimental_option("detach", True)
Ir para a Página
    ${coisa}    Set Variable    //*[@id="nav-xshop"]/a[1]
    Wait Until Element Is Visible    ${coisa}
    Capture Page Screenshot
    Click Element    ${coisa}