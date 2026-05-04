*** Settings ***

Resource    ${CURDIR}/../../common/main.resource
Resource    ${CURDIR}/../../share/gherkin.robot
Resource    ${CURDIR}/../../share/setup_teardown.robot
Resource    ${CURDIR}/../../resource/resource_relatorios/internacao.resource


Test Setup      abrir site headless
Test Teardown   fechar navegador

*** Test Cases ***

Cenário 1 - Verificar Censo Analítico da Internação
    [Tags]    censo
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Internação
    E clique em Censo Analítico da Internação
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 2 - Verificar Diagnóstico por Setor
    [Tags]    diagnostico
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Internação
    E clique em Diagnóstico por Setor
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 3 - Verificar Estatística Mensal por Setor
    [Tags]    estatistica
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Internação
    E clique em Estatística Mensal por Setor
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 4 - Verificar Histórico de Pacientes na Internação
    [Tags]    historico
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Internação
    E clique em Histórico de Pacientes na Internação
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 5 - Verificar Internações por Doenças Respiratórias
    [Tags]    doencas_respirat
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Internação
    E clique em Internações por Doenças Respiratórias
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 6 - Verificar Internações por Munícipes
    [Tags]    municipes
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Internação
    E clique em Internações por Munícipes
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 7 - Verificar Óbitos Diários
    [Tags]    obitos
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Internação
    E clique em Óbitos Diários
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 8 - Verificar Pacientes Internados Acima da Média
    [Tags]    pacientes_acima
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Internação
    E clique em Pacientes Internados Acima da Média
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 9 - Verificar Pacientes Internados no Dia
    [Tags]    pacientes_dia
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Internação
    E clique em Pacientes Internados no Dia
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 10 - Verificar Pacientes Internados por Diagnóstico
    [Tags]    pacientes_diagnostico
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Internação
    E clique em Pacientes Internados por Diagnóstico
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 11 - Verificar Pacientes Internados por Localização Física
    [Tags]    pacientes_local
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Internação
    E clique em Pacientes Internados por Localização Física
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 12 - Verificar Taxa de Mortalidade com Média de Permanência
    [Tags]    taxa_mortalidade
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Internação
    E clique em Taxa de Mortalidade com Média de Permanência
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 13 - Verificar Taxa de Ocupação por Setor
    [Tags]    taxa_ocupacao
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Internação
    E clique em Taxa de Ocupação por Setor
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 14 - Verificar Taxa de Patologia da Internação
    [Tags]    taxa_patologia
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Internação
    E clique em Taxa de Patologia da Internação
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções