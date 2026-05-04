*** Settings ***

Resource    ${CURDIR}/../../common/main.resource
Resource    ${CURDIR}/../../share/gherkin.robot
Resource    ${CURDIR}/../../share/setup_teardown.robot
Resource    ${CURDIR}/../../resource/resource_relatorios/emergencia.resource


Test Setup      abrir site headless
Test Teardown   fechar navegador

*** Test Cases ***

Cenário 1 - Verificar Atendimentos de Emergência por Ocupação
    [Tags]    emerg_ocupacao
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Emergência
    E clique em Atendimentos de Emergência por Ocupação
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 2 - Verificar Atendimentos de Emergência por Profissional
    [Tags]    emerg_profissional
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Emergência
    E clique em Atendimentos de Emergência por Profissional
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 3 - Verificar Atendimentos de Emergência por Setor
    [Tags]    emerg_atend_setor
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Emergência
    E clique em Atendimentos de Emergência por Setor
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 4 - Verificar Atendimentos por Classificação de Risco
    [Tags]    emerg_risco
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Emergência
    E clique em Atendimentos de Emergência por Classificação de Risco
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 5 - Verificar Boletins por Especialização
    [Tags]    emerg_boletins
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Emergência
    E clique em Boletins por Especialização
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 6 - Verificar Boletins por Faixa Etária e Sexo do Paciente
    [Tags]    emerg_faixa_etaria
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Emergência
    E clique em Boletins por Faixa Etária e Sexo do Paciente
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 7 - Verificar Boletins Nominal por Faixa Etária
    [Tags]    emerg_nominal
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Emergência
    E clique em Boletins Nominal por Faixa Etária
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 8 - Verificar Boletins por Município
    [Tags]    emerg_municipio
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Emergência
    E clique em Boletins por Município
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 9 - Verificar Boletins por Setor
    [Tags]    emerg_setor
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Emergência
    E clique em Boletins por Setor
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 10 - Verificar Pacientes de Emergência por Setor
    [Tags]    emerg_pacientes_setor
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Emergência
    E clique em Pacientes de Emergência por Setor
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 11 - Verificar Nominal de Boletins
    [Tags]    emerg_nominal_boletins
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Emergência
    E clique em Nominal de Boletins
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 12 - Verificar Primeiro Atendimento Após Classificação
     [Tags]    emerg_primeiro_atendimento
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Emergência
    E clique em Primeiro Atendimento Após Classificação
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 13 - Verificar Tempo Médio de atendimento por setor
     [Tags]    emerg_tempo_medio_atendimento
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Emergência
    E clique em Tempo Médio de atendimento por setor
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 14 - Verificar Tempo Médio de espera após classificação
     [Tags]    emerg_tempo_medio_classificacao
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Emergência
    E clique em Tempo Médio de espera após classificação
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 15 - Verificar Tempo Médio de espera por Classificação de risco
     [Tags]    emerg_tempo_medio_risco
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Emergência
    E clique em Tempo Médio de espera por Classificação de risco
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 16 - Verificar Tempo Médio para Atendimento Médico
     [Tags]    emerg_tempo_medio_medico
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Emergência
    E clique em Tempo Médio para Atendimento Médico
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 17 - Verificar Tempo de Permanência em até 24h
    [Tags]    emerg_tempo_permanencia
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Emergência
    E clique em Tempo de Permanência em até 24h
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções