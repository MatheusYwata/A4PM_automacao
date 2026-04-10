*** Settings ***

Resource    ${CURDIR}/../../common/main.resource
Resource    ${CURDIR}/../../share/gherkin.robot
Resource    ${CURDIR}/../../share/setup_teardown.robot
Resource    ${CURDIR}/../../resource/resource_relatorios/telesaude.resource


Test Setup      abrir site
Test Teardown   fechar navegador

*** Test Cases ***

Cenário 1 - Verificar Telessaúde - Atendimentos por CBO e Idade
    [Tags]    cbo_idade
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Telessaúde
    E clique em Telessaúde - Atendimentos por CBO e Idade
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 2 - Verificar Telessaúde - Atendimentos por Profissional
    [Tags]    profissional
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Telessaúde
    E clique em Telessaúde - Atendimentos por Profissional
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 3 - Verificar Telessaúde - Morbidades
    [Tags]    morbidades
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Telessaúde
    E clique em Telessaúde - Morbidades
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 4 - Verificar Telessaúde - Sintomas
    [Tags]    sintomas
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Telessaúde
    E clique em Telessaúde - Sintomas
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções