*** Settings ***
Library    RequestsLibrary
Library    String

*** Variables ***
${url}    http://localhost:3000
&{headers}= 
...    accept=application/json    
...    Content-Type=application/json

*** Keywords ***
Criar um usuario novo
    ${palavra_aleatoria}    Generate Random String    length=5    chars=[LETTERS]
    ${palavra_aleatoria}    Convert To Lowercase    ${palavra_aleatoria}
    ${word}    Generate Random String    length=6
    Set Test Variable    ${password}    ${word}
    Set Test Variable    ${email}    ${palavra_aleatoria}@gmail.com
    Log To Console    ${email}
    Log To Console    ${password}

Cadastrar o usuario criado na ServeRest
    &{body}=    Create Dictionary
    ...    nome=Teste    
    ...    email=${email}     
    ...    password=${password}    
    ...    administrador=true
    Create Session    alias=mysession    url=${url}    headers=${headers}
    ${response}=    Post On Session    mysession    /usuarios    json=${body}
    Set Suite Variable    ${id}    ${response.json()['_id']}
    Status Should Be    201
    Log    ${id}

Conferir se o usuario foi cadastrado corretamente
    Create Session    mysession    url=${url}    headers=${headers}
    ${response}    Get On Session    mysession    /usuarios/${id}
    Status Should Be    200
    Log    ${response.text}

Cadastrar um usuario existente
    &{body}=    Create Dictionary    
    ...    nome=Fulano da Silva    
    ...    email=fulano@qa.com    
    ...    password=teste    
    ...    administrador=false
    Create Session    alias=mysession    url=${url}    headers=${headers}
    ${response}=    Post On Session    mysession    /usuarios    json=${body}    expected_status=400
    Status Should Be    400
    Log    ${response.text}

Fazer Login do usuario criado
    &{body}    Create Dictionary
    ...    email=${email}
    ...    password=${password}
    Create Session    mysession    ${url}    headers=${headers}
    ${response}    Post On Session    mysession    /login    json=${body}
    Log    ${response.text}