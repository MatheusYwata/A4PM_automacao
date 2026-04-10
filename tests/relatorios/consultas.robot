*** Settings ***

Resource    ${CURDIR}/../../common/main.resource
Resource    ${CURDIR}/../../share/gherkin.robot
Resource    ${CURDIR}/../../share/setup_teardown.robot
Resource    ${CURDIR}/../../resource/resource_relatorios/consultas.resource


Test Setup      abrir site
Test Teardown   fechar navegador

*** Test Cases ***

Cenário 1 - Verificar Consultas Agendadas pela Fila
    [Tags]    consultas_fila
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Consultas
    E clique em Consultas Agendadas pela Fila
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 2 - Verificar Consultas por Objetivo
    [Tags]    consultas_objetivo
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Consultas
    E clique em Consultas por Objetivo
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 3 - Verificar Entradas e Saídas na Fila de Consultas
    [Tags]    entradas_saidas
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Consultas
    E clique em Entradas e Saídas na Fila de Consultas
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 4 - Verificar Entradas na Fila de Consultas
    [Tags]    entradas
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Consultas
    E clique em Entradas na Fila de Consultas
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 5 - Verificar Saídas na Fila de Consultas
    [Tags]    saidas
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Consultas
    E clique em Saídas na Fila de Consultas
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 6 - Verificar Tamanho da Fila de Consultas
    [Tags]    tamanho
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Consultas
    E clique em Tamanho da Fila de Consultas
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 7 - Verificar Mensal de Consultas
    [Tags]    mensal
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Consultas
    E clique em Mensal de Consultas
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 8 - Verificar Mensal de Consultas por Profissional de Saúde
    [Tags]    mensal_profissional
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Consultas
    E clique em Mensal de Consultas por Profissional de Saúde
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 9 - Verificar Produtividade de Consultas
    [Tags]    produtividade
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Consultas
    E clique em Produtividade de Consultas
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 10 - Verificar Produtividade de Usuários Saída da Fila
    [Tags]    produtividade_usuarios
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Consultas
    E clique em Produtividade de Usuários Saída da Fila
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 11 - Verificar Saída da Fila por Usuários - Simplificado
    [Tags]    usuarios_simplif
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Consultas
    E clique em Saída da Fila por Usuários - Simplificado
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções