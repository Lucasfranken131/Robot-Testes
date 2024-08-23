*** Keywords ***
Key com Argumentos
    [Arguments]    ${nome}    ${sobrenome}
    ${email}=    Set Variable    ${nome}.${sobrenome}@gmail.com
    RETURN    ${email}

*** Test Cases ***
Rodar Argumentos
    ${email}=    Key com Argumentos    Lucas    Franco
    Log To Console    ${email}