*** Settings ***
Resource    ../Resources/usuarios.resource

*** Variables ***


*** Test Cases ***
Cenario 01: Cadastrar usuário na ServeRest
    Criar um usuario novo
    Cadastrar o usuario criado na ServeRest
    Conferir se o usuario foi cadastrado corretamente

Cenario 02: Cadastrar usuário já existente
    Cadastrar um usuario existente

Cenario 03: Verificar usuário já existente
    Conferir se o usuario foi cadastrado corretamente

Cenario 04: Login
    Criar um usuario novo
    Cadastrar o usuario criado na ServeRest
    Conferir se o usuario foi cadastrado corretamente
    Fazer Login do usuario criado