*** Settings ***

Resource    ${CURDIR}/../../common/main.resource
Resource    ${CURDIR}/../../share/gherkin.robot
Resource    ${CURDIR}/../../share/setup_teardown.robot
Resource    ${CURDIR}/../../resource/resource_relatorios/covid.resource


Test Setup      abrir site igorando erros de certificado
Test Teardown   fechar navegador

*** Test Cases ***

Cenário 1 - Verificar Triagem Covid-19 - Faixa estária por bairro
    [Tags]    triagem_bairro
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Covid-19
    E clique em Triagem Covid-19 - Faixa estária por bairro
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 2 - Verificar Triagem Covid-19 - Nominal
    [Tags]    triagem_nominal
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Covid-19
    E clique em Triagem Covid-19 - Nominal
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 3 - Verificar Triagem Covid-19 - Status do Atendimento
    [Tags]    triagem_status
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Covid-19
    E clique em Triagem Covid-19 - Status do Atendimento
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 4 - Verificar Vigilância - Casos de Covid-19 por Bairro
    [Tags]    vigilancia_casos
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Covid-19
    E clique em Vigilância - Casos de Covid-19 por Bairro
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 5 - Verificar Vigilância - Testes Covid-19
    [Tags]    vigilancia_testes
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Covid-19
    E clique em Vigilância - Testes Covid-19
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 6 - Verificar Vigilância - Testes Covid-19 por Paciente
    [Tags]    vigilancia_testes_paciente
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Covid-19
    E clique em Vigilância - Testes Covid-19 por Paciente
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções