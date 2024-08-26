*** Variables ***
${valor}=    20

*** Test Cases ***
TESTE
    IF    ${valor} < 20
        Log    O valor ${valor} é menor que 20
    ELSE IF    ${valor} == 20
        Log    O valor ${valor} é igual a 20
    ELSE
        Log    O valor ${valor} é maior que 20
    END