*** Variables ***
@{Lista}=    João    Pelé    Maria    Carlos    Ana    Paula    Lucas    Jonas    Tadeu    Cátia

*** Test Cases ***
For List
    FOR    ${Pessoa}    IN    @{Lista}
        Log    Pessoa atual: ${Pessoa}
    END