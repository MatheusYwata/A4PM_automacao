*** Settings ***

Resource    ${CURDIR}/../../common/main.resource
Resource    ${CURDIR}/../../share/gherkin.robot
Resource    ${CURDIR}/../../share/setup_teardown.robot
Resource    ${CURDIR}/../../resource/pep.resource


Test Setup      abrir site
Test Teardown   fechar navegador

*** Test Cases ***

Cenário 1 - Verificar a tabela de dados do cubo PEP - Atendimento Ambulatorial
    [Tags]    atend_ambulatorial
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em PEP - Atendimento Ambulatorial dentro do menu Select a cube
    E dê um clique em Qtd de Atendimentos Ambulatoriais dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Atendimentos Ambulatoriais    
    E o último cliente da lista deve ser "Mangaratiba"


Cenário 2 - Verificar a tabela de dados do cubo PEP - Atendimento Individual AB
    [Tags]    atend_individual_ab
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em PEP - Atendimento Individual AB dentro do menu Select a cube
    E dê um clique em Qtd de Atendimentos dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Atendimentos   
    E o último cliente da lista deve ser "Mangaratiba"