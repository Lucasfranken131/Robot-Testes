*** Variables ***
&{Meses}    
...    Janeiro=31    
...    Fevereiro=29    
...    Março=31    
...    Abril=30    
...    Maio=31    
...    Junho=30    
...    Julho=31    
...    Agosto=31    
...    Setembro=30    
...    Outubro=31    
...    Novembro=30    
...    Dezembro=31        

*** Test Cases ***
CONSOLES
    Log To Console    Janeiro: ${Meses.Janeiro}
    Log To Console    Fevereiro: ${Meses.Fevereiro}
    Log To Console    Março: ${Meses.Março}
    Log To Console    Abril: ${Meses.Abril}
    Log To Console    Maio: ${Meses.Maio}
    Log To Console    Junho: ${Meses.Junho}
    Log To Console    Julho: ${Meses.Julho}
    Log To Console    Agosto: ${Meses.Agosto}
    Log To Console    Setembro: ${Meses.Setembro}
    Log To Console    Outubro: ${Meses.Outubro}
    Log To Console    Novembro: ${Meses.Novembro}
    Log To Console    Dezembro: ${Meses.Dezembro}