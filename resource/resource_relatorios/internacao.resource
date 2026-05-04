*** Settings ***

Resource   ${CURDIR}/../../common/main.resource

*** Variables ***
${BTN_LOGIN}    //button[@id='loginbtn']
${MENU_LATERAL}    id=show-sidebar
${RELATORIOS}    //span[normalize-space()='RELATÓRIOS']
${INTERNACAO}    (//span[contains(text(),'Internação')])[2]
${SELECT}=    xpath=//div[contains(.,'Cliente')]/following::select[1]

*** Keywords ***

# Cenário 1 - Verificar Acompanhamento de Gestantes
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

clique em Internação
    Wait Until Element Is Enabled    ${INTERNACAO}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${INTERNACAO}

clique em Censo Analítico da Internação
    Wait Until Element Is Enabled    css=a[ng-click*="r_censo_analitico"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_censo_analitico"]

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
    Page Should Contain Element    xpath=//div[contains(.,'Cliente')]/following::select[1]//option[contains(.,'Mangaratiba')]

# Cenário 2 - Verificar Diagnóstico por Setor
clique em Diagnóstico por Setor
    Wait Until Element Is Enabled    css=a[ng-click*="r_internacao_diagnostico_por_setor"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_internacao_diagnostico_por_setor"]

# Cenário 3 - Verificar Estatística Mensal por Setor
clique em Estatística Mensal por Setor
    Wait Until Element Is Enabled    css=a[ng-click*="r_report_internacao_estatistica_mensal_setor"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_report_internacao_estatistica_mensal_setor"]

# Cenário 4 - Verificar Histórico de Pacientes na Internação
clique em Histórico de Pacientes na Internação
    Wait Until Element Is Enabled    css=a[ng-click*="r_historico_paciente_internacao"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_historico_paciente_internacao"]

# Cenário 5 - Verificar Internações por Doenças Respiratórias
clique em Internações por Doenças Respiratórias
    Wait Until Element Is Enabled    css=a[ng-click*="r_internacoes_por_doencas_respiratorias"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_internacoes_por_doencas_respiratorias"]

# Cenário 6 - Verificar Internações por Munícipes
clique em Internações por Munícipes    
    Wait Until Element Is Enabled    css=a[ng-click*="r_report_internacao_municipes"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_report_internacao_municipes"]

# Cenário 7 - Verificar Óbitos Diários
clique em Óbitos Diários
    Wait Until Element Is Enabled    css=a[ng-click*="r_report_internacao_obitos_diarios"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_report_internacao_obitos_diarios"]

# Cenário 8 - Verificar Pacientes Internados Acima da Média
clique em Pacientes Internados Acima da Média
    Wait Until Element Is Enabled    css=a[ng-click*="r_pacientes_tempo_internacao_acima_media"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_pacientes_tempo_internacao_acima_media"]

# Cenário 9 - Verificar Pacientes Internados no Dia
clique em Pacientes Internados no Dia
    Wait Until Element Is Enabled    css=a[ng-click*="r_pacientes_internados_dia"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_pacientes_internados_dia"]

# Cenário 10 - Verificar Pacientes Internados por Diagnóstico
clique em Pacientes Internados por Diagnóstico
    Wait Until Element Is Enabled    css=a[ng-click*="r_internacao_pacientes_localizacao_fisica"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_internacao_pacientes_localizacao_fisica"]

# Cenário 11 - Verificar Pacientes Internados por Localização Física
clique em Pacientes Internados por Localização Física
    Wait Until Element Is Enabled    css=a[ng-click*="r_internacao_pacientes_localizacao_fisica"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_internacao_pacientes_localizacao_fisica"]

# Cenário 12 - Verificar Taxa de Mortalidade com Média de Permanência
clique em Taxa de Mortalidade com Média de Permanência
    Wait Until Element Is Enabled    css=a[ng-click*="r_report_internacao_mortalidade_e_permanencia_setor"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_report_internacao_mortalidade_e_permanencia_setor"]

# Cenário 13 - Verificar Taxa de Ocupação por Setor
clique em Taxa de Ocupação por Setor
    Wait Until Element Is Enabled    css=a[ng-click*="r_report_internacao_taxa_ocupacao_setor"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_report_internacao_taxa_ocupacao_setor"]

# Cenário 14 - Verificar Taxa de Patologia da Internação
clique em Taxa de Patologia da Internação
    Wait Until Element Is Enabled    css=a[ng-click*="r_taxa_patologia_internacao"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_taxa_patologia_internacao"]