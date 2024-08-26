*** Variables ***
@{Lista}=    João    Pelé    Maria    Carlos    Ana    Paula    Lucas    Jonas    Tadeu    Cátia

*** Test Cases ***
Exit For
    FOR    ${Pessoa}    IN    @{Lista}
        Log    Pessoa atual: ${Pessoa}
        Exit For Loop If    "${Pessoa}" == "Jonas"
    END    