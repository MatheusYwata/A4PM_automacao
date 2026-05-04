*** Settings ***

Resource   ${CURDIR}/../../common/main.resource

*** Variables ***
${BTN_LOGIN}    //button[@id='loginbtn']
${MENU_LATERAL}    id=show-sidebar
${RELATORIOS}    //span[normalize-space()='RELATÓRIOS']
${EMERGENCIA}    (//span[contains(text(),'Emergência')])[2]
${SELECT}=    xpath=//div[contains(.,'Código do Cliente')]/following::select[1]


*** Keywords ***
# Cenário 1 - Cenário 1 - Verificar Atendimentos de Emergência por Ocupação
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

clique em Relatórios
    Wait Until Element Is Enabled    ${RELATORIOS}    
    Wait Until Keyword Succeeds    10s    1s    
    ...    Click Element    ${RELATORIOS} 

clique em Emergência
    Wait Until Element Is Enabled    ${EMERGENCIA}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${EMERGENCIA}

clique em Atendimentos de Emergência por Ocupação
    Wait Until Element Is Enabled    css=a[ng-click*="r_atendimentos_ocupacao"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_atendimentos_ocupacao"]

clicar na seleção de Código do Cliente
    Wait Until Element Is Visible
    ...    xpath=//iframe[contains(@class,'main-frame') and not(contains(@class,'ng-hide'))]
    ...    60s

    Select Frame
    ...    xpath=//iframe[contains(@class,'main-frame') and not(contains(@class,'ng-hide'))]

    Wait Until Element Is Visible    ${SELECT}    60s
    Sleep    2s
    Click Element    ${SELECT}
    Sleep    2s

Mangaratiba deve aparecer entre as opções
    Page Should Contain Element    xpath=//div[contains(.,'Código do Cliente')]/following::select[1]//option[contains(.,'Mangaratiba')]

# Cenário 2 - Verificar Atendimentos de Emergência por Profissional
clique em Atendimentos de Emergência por Profissional
    Wait Until Element Is Enabled    css=a[ng-click*="r_atendimentos_emergencia_por_profissional"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_atendimentos_emergencia_por_profissional"]

# Cenário 3 - Verificar Atendimentos de Emergência por Setor
clique em Atendimentos de Emergência por Setor
    Wait Until Element Is Enabled    css=a[ng-click*="r_atendimentos_emergencia_por_setor"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_atendimentos_emergencia_por_setor"]

# Cenário 4 - Verificar Atendimentos por Classificação de Risco
clique em Atendimentos de Emergência por Classificação de Risco
    Wait Until Element Is Enabled    css=a[ng-click*="r_atendimentos_classificacao_risco"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_atendimentos_classificacao_risco"]

# Cenário 5 - Verificar Boletins por Especialização
clique em Boletins por Especialização
    Wait Until Element Is Enabled    css=a[ng-click*="r_report_boletins_especializacao"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_report_boletins_especializacao"]

# Cenário 6 - Verificar Boletins por Faixa Etária e Sexo do Paciente
clique em Boletins por Faixa Etária e Sexo do Paciente
    Wait Until Element Is Enabled    css=a[ng-click*="r_report_boletins_faixa_etaria_sexo"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_report_boletins_faixa_etaria_sexo"]

# Cenário 7 - Verificar Boletins Nominal por Faixa Etária
clique em Boletins Nominal por Faixa Etária
    Wait Until Element Is Enabled    css=a[ng-click*="r_report_boletins_faixa_etaria"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_report_boletins_faixa_etaria"]

# Cenário 8 - Verificar Boletins por Município
clique em Boletins por Município
    Wait Until Element Is Enabled    css=a[ng-click*="r_report_boletins_municipio"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_report_boletins_municipio"]

# Cenário 9 - Verificar Boletins por Setor
clique em Boletins por Setor
    Wait Until Element Is Enabled    css=a[ng-click*="r_report_boletins_setor"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_report_boletins_setor"]

# Cenário 10 - Verificar Pacientes de Emergência por Setor
clique em Pacientes de Emergência por Setor
    Wait Until Element Is Enabled    css=a[ng-click*="r_pacientes_emergencia_por_setor"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_pacientes_emergencia_por_setor"]

# Cenário 11 - Verificar Nominal de Boletins
clique em Nominal de Boletins
    Wait Until Element Is Enabled    css=a[ng-click*="r_nominal_boletins_pep"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_nominal_boletins_pep"]

# Cenário 12 - Verificar Primeiro Atendimento Após Classificação
clique em Primeiro Atendimento Após Classificação
    Wait Until Element Is Enabled    css=a[ng-click*="r_primeiro_atendimento_apos_classificacao_risco"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_primeiro_atendimento_apos_classificacao_risco"]

# Cenário 13 - Verificar Tempo Médio de atendimento por setor
clique em Tempo Médio de atendimento por setor
    Wait Until Element Is Enabled    css=a[ng-click*="r_tempo_medio_espera_setor"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_tempo_medio_espera_setor"]

# Cenário 14 - Verificar Tempo Médio de espera após classificação
clique em Tempo Médio de espera após classificação
    Wait Until Element Is Enabled    css=a[ng-click*="r_tempo_medio_espera_classificacao_por_profissional"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_tempo_medio_espera_classificacao_por_profissional"]

# Cenário 15 - Verificar Tempo Médio de espera por Classificação de risco
clique em Tempo Médio de espera por Classificação de risco
    Wait Until Element Is Enabled    css=a[ng-click*="r_tempo_medio_espera_classificacao"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_tempo_medio_espera_classificacao"]

# Cenário 16 - Verificar Tempo Médio para Atendimento Médico
clique em Tempo Médio para Atendimento Médico
    Wait Until Element Is Enabled    css=a[ng-click*="r_tempo_medio_para_atendimento_medico"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_tempo_medio_para_atendimento_medico"]

# Cenário 17 - Verificar Tempo de Permanência em até 24h
clique em Tempo de Permanência em até 24h
    Wait Until Element Is Enabled    css=a[ng-click*="r_tempo_permanencia_24h_emergencia"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_tempo_permanencia_24h_emergencia"]