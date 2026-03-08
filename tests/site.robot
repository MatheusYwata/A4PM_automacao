*** Settings ***

Resource    ${CURDIR}/../common/main.resource
Resource    ${CURDIR}/../share/gherkin.robot
Resource    ${CURDIR}/../share/setup_teardown.robot
Resource    ${CURDIR}/../resource/site.resource


Test Setup      abrir site
Test Teardown   fechar navegador

*** Test Cases ***

Cenário 1 - 
    [Tags]    Atendimento_Domiciliar
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em AB - Atendimento Domiciliar dentro do menu Select a cube
    E dê um clique em Qtd de Atendimentos dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Atendimentos    
    E o último cliente da lista deve ser "Mangaratiba"