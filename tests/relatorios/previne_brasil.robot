*** Settings ***

Resource    ${CURDIR}/../../common/main.resource
Resource    ${CURDIR}/../../share/gherkin.robot
Resource    ${CURDIR}/../../share/setup_teardown.robot
Resource    ${CURDIR}/../../resource/resource_relatorios/previne_brasil.resource


Test Setup      abrir site
Test Teardown   fechar navegador

*** Test Cases ***

Cenário 1 - Verificar Relatórios
    [Tags]    relatorios
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Consultas
    E clique em Relatórios
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções