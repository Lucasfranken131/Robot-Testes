*** Variables ***
${valor}=    0

*** Test Cases ***
While Test
    WHILE    ${valor} != 5 * 6
        Log    O valor atual: ${valor}
        ${valor}=    Evaluate    ${valor} + 1
    END


