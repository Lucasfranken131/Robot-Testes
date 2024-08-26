*** Variables ***
@{Lista}=    João    Pelé    Maria    Carlos    Ana    Paula    Lucas    Jonas    Tadeu    Cátia

*** Test Cases ***
For Index
    FOR    ${Index}    ${Pessoa}    IN ENUMERATE    @{Lista}
        Log    Pessoa atual: ${Pessoa}, na posição: ${Index}
    END 