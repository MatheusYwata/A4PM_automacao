*** Settings ***

Resource    ${CURDIR}/../../common/main.resource
Resource    ${CURDIR}/../../share/gherkin.robot
Resource    ${CURDIR}/../../share/setup_teardown.robot
Resource    ${CURDIR}/../../resource/resource_dashboards/dashboards.resource


Test Setup      abrir site igorando erros de certificado
Test Teardown   fechar navegador

*** Test Cases ***

Cenário 1 - Verificar Atenção Básica
    [Tags]    atencao_basica_dashboard
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Dashboards
    E clique em Atenção Básica
    Quando clicar na seleção de Locais
    Então o ${LOCAL} deve aparecer entre as opções

Cenário 2 - Verificar Composição da Fila de Consultas
    [Tags]    composicao_fila_consultas_dashboard
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Dashboards
    E clique em Composição da Fila de Consultas
    Quando clicar na seleção de Locais
    Então o ${LOCAL} deve aparecer entre as opções

Cenário 3 - Verificar Composição da Fila de Exames
    [Tags]    composicao_fila_exames_dashboard
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Dashboards
    E clique em Composição da Fila de Exames
    Quando clicar na seleção de Locais
    Então o ${LOCAL} deve aparecer entre as opções

Cenário 4 - Verificar Condições de Saúde
    [Tags]    condicoes_saude_dashboard
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Dashboards
    E clique em Condições de Saúde
    Quando clicar na seleção de Locais
    Então o ${LOCAL} deve aparecer entre as opções

Cenário 5 - Verificar Consultas
    [Tags]    consultas_dashboard
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Dashboards
    E clique em Consultas
    Quando clicar na seleção de Locais
    Então o ${LOCAL} deve aparecer entre as opções

Cenário 6 - Verificar Emergências
    [Tags]    emergencias_dashboard
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Dashboards
    E clique em Emergências
    Quando clicar na seleção de Locais
    Então o ${LOCAL} deve aparecer entre as opções

Cenário 7 - Verificar Exames
    [Tags]    exames_dashboard
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Dashboards
    E clique em Exames
    Quando clicar na seleção de Locais
    Então o ${LOCAL} deve aparecer entre as opções

Cenário 8 - Verificar Farmácia
    [Tags]    farmacia_dashboard
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Dashboards
    E clique em Farmácia
    Quando clicar na seleção de Locais
    Então o ${LOCAL} deve aparecer entre as opções

Cenário 9 - Verificar Internações
    [Tags]    internacoes_dashboard
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Dashboards
    E clique em Internações
    Quando clicar na seleção de Locais
    Então o ${LOCAL} deve aparecer entre as opções

Cenário 10 - Verificar Mapa de Telessaúde
    [Tags]    mapa_telessaude_dashboard
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Dashboards
    E clique em Mapa de Telessaúde
    Quando clicar na seleção de Locais
    Então o ${LOCAL} deve aparecer entre as opções

Cenário 11 - Verificar Mapa de Vigilância Epidemiológica
    [Tags]    mapa_vigilancia_epid_dashboard
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Dashboards
    E clique em Mapa de Vigilância Epidemiológica
    Quando clicar na seleção de Locais
    Então o ${LOCAL} deve aparecer entre as opções

Cenário 12 - Verificar Oferta e Demanda de Consultas
    [Tags]    ofer_dem_consult_dashboard
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Dashboards
    E clique em Oferta e Demanda de Consultas
    Quando clicar na seleção de Locais
    Então o ${LOCAL} deve aparecer entre as opções

Cenário 13 - Verificar Oferta e Demanda de Consultas Especializadas
    [Tags]    ofer_dem_consult_esp_dashboard
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Dashboards
    E clique em Oferta e Demanda de Consultas Especializadas
    Quando clicar na seleção de Locais
    Então o ${LOCAL} deve aparecer entre as opções

Cenário 14 - Verificar Oferta e Demanda de Exames
    [Tags]    ofer_dem_exames_dashboard
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Dashboards
    E clique em Oferta e Demanda de Exames
    Quando clicar na seleção de Locais
    Então o ${LOCAL} deve aparecer entre as opções

Cenário 15 - Verificar Painel de Atenção Básica
    [Tags]    painel_atencao_basica_dashboard
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Dashboards
    E clique em Painel de Atenção Básica
    Quando clicar na seleção de Locais
    Então o ${LOCAL} deve aparecer entre as opções

Cenário 16 - Verificar Painel de Emergência
    [Tags]    painel_emergencia_dashboard
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Dashboards
    E clique em Painel de Emergência
    Quando clicar na seleção de Locais
    Então o ${LOCAL} deve aparecer entre as opções

Cenário 17 - Verificar Painel de Internação
    [Tags]    painel_internacao_dashboard
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Dashboards
    E clique em Painel de Internação
    Quando clicar na seleção de Locais
    Então o ${LOCAL} deve aparecer entre as opções

Cenário 18 - Verificar Painel de Leitos
    [Tags]    painel_leitos_dashboard
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Dashboards
    E clique em Painel de Leitos
    Quando clicar na seleção de Locais
    Então o ${LOCAL} deve aparecer entre as opções

Cenário 19 - Verificar Visão Geral
    [Tags]    visao_geral_dashboard
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Dashboards
    E clique em Visão Geral
    Quando clicar na seleção de Locais
    Então o ${LOCAL} deve aparecer entre as opções