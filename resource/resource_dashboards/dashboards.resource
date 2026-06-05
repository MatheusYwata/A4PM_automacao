*** Settings ***

Resource   ${CURDIR}/../../common/main.resource

*** Variables ***
${BTN_LOGIN}    //button[@id='loginbtn']
${MENU_LATERAL}    id=show-sidebar
${RELATORIOS}    //span[normalize-space()='RELATÓRIOS']
${DASHBOARDS}    //span[normalize-space()='DASHBOARDS']
${ATENCAO_BASICA}    //a[normalize-space()='Atenção Básica']
${COMPOSICAO_FILA_CONSULTAS}    //a[normalize-space()='Composição da Fila de Consultas']
${COMPOSICAO_FILA_EXAMES}    //a[normalize-space()='Composição da Fila de Exames']
${CONDICOES_SAUDE}    //a[normalize-space()='Condições de Saúde']
${CONSULTAS}    //a[normalize-space()='Consultas']
${EMERGENCIAS}    //a[normalize-space()='Emergência']
${EXAMES}    //a[normalize-space()='Exames']
${FARMACIA}    //a[normalize-space()='Farmácia']
# ${INTERNACOES}       //a[contains(@ng-click,'/Esus/Internacoes.dd')]
${INTERNACOES}    //a[normalize-space()='Internação']
${MAPA_TELESSAUDE}    //a[normalize-space()='Mapa de Telessaúde']
${MAPA_VIGILANCIA_EPIDEMIOLOGICA}    //a[normalize-space()='Mapa de Vigilância Epidemiológica']
${OFERTA_DEMANDA_CONSULTAS}    //a[normalize-space()='Oferta e Demanda de Consultas']
${OFERTA_DEMANDA_CONSULTAS_ESPECIALIZADAS}    //a[normalize-space()='Oferta e Demanda de Consultas Especializadas']
${OFERTA_DEMANDA_EXAMES}    //a[normalize-space()='Oferta e Demanda de Exames']
${PAINEL_ATENCAO_BASICA}    //a[normalize-space()='Painel de Atenção Básica']
${PAINEL_EMERGENCIA}    //a[normalize-space()='Painel de Emergência']
${PAINEL_INTERNACAO}    //a[normalize-space()='Painel de Internação']
${PAINEL_LEITOS}    //a[normalize-space()='Painel de Leitos']
${VISAO_GERAL}    //a[normalize-space()='Visão Geral']

${SELECT}=    xpath=//div[contains(.,'Código do Cliente')]/following::select[1]
${LOCAL}    Mangaratiba

*** Keywords ***
# Cenário 1 - Verificar Atenção Básica
o usuário esteja na página de login e acesse com login válido
    Wait Until Element Is Visible    id=username    10s
    Click Element    id=username
    Input Text    id=username    ${LOGIN_VALIDO}
    Click Element    id=j_password
    Input Text    id=j_password    ${SENHA_VALIDA}
    Wait Until Element Is Visible    ${BTN_LOGIN}
    Sleep    1s
    Click Element    ${BTN_LOGIN}

acesse o menu lateral
    Wait Until Element Is Enabled    ${MENU_LATERAL}   
    Wait Until Keyword Succeeds    10s    1s    Click Element    ${MENU_LATERAL}   

clique em Dashboards
    Wait Until Element Is Enabled    ${DASHBOARDS}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${DASHBOARDS}

clique em Atenção Básica
    Wait Until Element Is Enabled    ${ATENCAO_BASICA}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${ATENCAO_BASICA}

clicar na seleção de Locais
    Wait Until Element Is Visible
    ...    xpath=//iframe[contains(@class,'main-frame') and not(contains(@class,'ng-hide'))]
    ...    60s

    Select Frame
    ...    xpath=//iframe[contains(@class,'main-frame') and not(contains(@class,'ng-hide'))]

    Wait Until Element Is Visible
    ...    xpath=//button[contains(@class,'dropdown-toggle')]
    ...    20s

    Wait Until Page Does Not Contain Element
    ...    xpath=//div[contains(@class,'blockOverlay')]
    ...    30s
 
    Execute JavaScript
    ...    document.querySelector("button.dropdown-toggle").click()

    Wait Until Element Is Visible
    ...    xpath=//a[contains(text(),'${LOCAL}')]
    ...    10s

    # Wait Until Element Is Visible
    # ...    xpath=//ul[@id='selectcli']
    # ...    10s

o ${LOCAL} deve aparecer entre as opções
    # Element Should Be Visible
    # ...    xpath=//ul[@id='selectcli']//a[contains(text(),'${LOCAL}')]

    Element Should Be Visible
    ...    xpath=//a[contains(text(),'${LOCAL}')]

# Cenário 2 - Verificar Composição da Fila de Consultas
clique em Composição da Fila de Consultas
    Wait Until Element Is Enabled    ${COMPOSICAO_FILA_CONSULTAS}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${COMPOSICAO_FILA_CONSULTAS}

# Cenário 3 - Verificar Composição da Fila de Exames
clique em Composição da Fila de Exames
    Wait Until Element Is Enabled    ${COMPOSICAO_FILA_EXAMES}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${COMPOSICAO_FILA_EXAMES}

# Cenário 4 - Verificar Condições de Saúde
clique em Condições de Saúde
    Wait Until Element Is Enabled    ${CONDICOES_SAUDE}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${CONDICOES_SAUDE}

# Cenário 5 - Verificar Consultas
clique em Consultas
    Wait Until Element Is Enabled    ${CONSULTAS}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${CONSULTAS}

# Cenário 6 - Verificar Emergências
clique em Emergências
    Wait Until Element Is Enabled    ${EMERGENCIAS}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${EMERGENCIAS}

# Cenário 7 - Verificar Exames
clique em Exames
    Wait Until Element Is Enabled    ${EXAMES}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${EXAMES}

# Cenário 8 - Verificar Farmácia
clique em Farmácia
    Wait Until Element Is Enabled    ${FARMACIA}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${FARMACIA}
    
# Cenário 9 - Verificar Internações
clique em Internações
    Wait Until Element Is Not Visible    id=loading    30s
    Wait Until Element Is Enabled    ${INTERNACOES}
    Wait Until Keyword Succeeds    30s    1s   
    ...     Click Element    ${INTERNACOES}

# Cenário 10 - Verificar Mapa de TelessaúdeExecute Javascript
clique em Mapa de Telessaúde
    Wait Until Element Is Enabled    ${MAPA_TELESSAUDE}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${MAPA_TELESSAUDE}

# Cenário 11 - Verificar Mapa de Vigilância Epidemiológica
clique em Mapa de Vigilância Epidemiológica
    Wait Until Element Is Enabled    ${MAPA_VIGILANCIA_EPIDEMIOLOGICA}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${MAPA_VIGILANCIA_EPIDEMIOLOGICA}

# Cenário 12 - Verificar Oferta e Demanda de Consultas
clique em Oferta e Demanda de Consultas
    Wait Until Element Is Enabled    ${OFERTA_DEMANDA_CONSULTAS}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${OFERTA_DEMANDA_CONSULTAS}

# Cenário 13 - Verificar Oferta e Demanda de Consultas Especializadas
clique em Oferta e Demanda de Consultas Especializadas
    Wait Until Element Is Enabled    ${OFERTA_DEMANDA_CONSULTAS_ESPECIALIZADAS}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${OFERTA_DEMANDA_CONSULTAS_ESPECIALIZADAS}

# Cenário 14 - Verificar Oferta e Demanda de Exames
clique em Oferta e Demanda de Exames
    Wait Until Element Is Enabled    ${OFERTA_DEMANDA_EXAMES}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${OFERTA_DEMANDA_EXAMES}

# Cenário 15 - Verificar Painel de Atenção Básica
clique em Painel de Atenção Básica
    Wait Until Element Is Enabled    ${PAINEL_ATENCAO_BASICA}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${PAINEL_ATENCAO_BASICA}

# Cenário 16 - Verificar Painel de Emergência
clique em Painel de Emergência
    Wait Until Element Is Enabled    ${PAINEL_EMERGENCIA}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${PAINEL_EMERGENCIA}

# Cenário 17 - Verificar Painel de Internação
clique em Painel de Internação
    Wait Until Element Is Enabled    ${PAINEL_INTERNACAO}  30s
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${PAINEL_INTERNACAO}

# Cenário 18 - Verificar Painel de Leitos
clique em Painel de Leitos
    Wait Until Element Is Enabled    ${PAINEL_LEITOS}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${PAINEL_LEITOS}

# Cenário 19 - Verificar Visão Geral
clique em Visão Geral
    Wait Until Element Is Enabled    ${VISAO_GERAL}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${VISAO_GERAL}