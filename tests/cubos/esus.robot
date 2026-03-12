*** Settings ***

Resource    ${CURDIR}/../../common/main.resource
Resource    ${CURDIR}/../../share/gherkin.robot
Resource    ${CURDIR}/../../share/setup_teardown.robot
Resource    ${CURDIR}/../../resource/esus.resource


Test Setup      abrir site
Test Teardown   fechar navegador

*** Test Cases ***

Cenário 1 - Verificar a tabela de dados do cubo Esus - Boletins de Emergência
    [Tags]    boletins_emergencia
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Boletins de Emergência dentro do menu Select a cube
    E dê um clique em Qtd de Boletins dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Boletins    
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 2 - Verificar a tabela de dados do cubo Esus - Consultas
    [Tags]    consultas
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Consultas dentro do menu Select a cube
    E dê um clique em Qtd de Consultas dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Consultas Disponilizadas   
    E o último cliente da lista deve ser "Mangaratiba"