*** Settings ***
Resource    ../../resources/company.resource
Resource    ../../resources/common.resource
Resource    ../../resources/login.resource

Test Setup       Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***

Cenario 01: Cadastrar nova empresa
    Realizar Login
    Verificar Redirecionamento Para Home
    Verificar Elemento Cadastros Visivel
    Acessar Pagina Empresas
    Cadastrar Nova Empresa  

Cenario 02: Editar Cadastro de Empresa
    Realizar Login
    Verificar Redirecionamento Para Home
    Verificar Elemento Cadastros Visivel
    Acessar Pagina Empresas
    Editar Primeira Empresa