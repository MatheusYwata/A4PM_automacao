*** Settings ***

Resource   ${CURDIR}/../../common/main.resource

*** Variables ***
${BTN_LOGIN}    //button[@id='loginbtn']
${MENU_LATERAL}    id=show-sidebar
${RELATORIOS}    //span[normalize-space()='RELATÓRIOS']
${ATENCAO_BASICA}    //span[normalize-space()='Atenção Básica - Novo']
${SELECT}=    xpath=//div[contains(.,'Código do Cliente')]/following::select[1]

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

clique em Atenção Básica - Novo
    Wait Until Element Is Enabled    ${ATENCAO_BASICA}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${ATENCAO_BASICA}

clique em Acompanhamento de Gestantes
    Wait Until Element Is Enabled    css=a[ng-click*="r_acompanhamento_gestantes"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_acompanhamento_gestantes"]

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

# Cenário 2 - Verificar Acompanhamento de Diabéticos
clique em Acompanhamento de Diabéticos
    Wait Until Element Is Enabled    css=a[ng-click*="r_ultimos_atendimentos_diabeticos"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_ultimos_atendimentos_diabeticos"]

# Cenário 3 - Verificar Acompanhamento de Hipertensos
clique em Acompanhamento de Hipertensos
    Wait Until Element Is Enabled    css=a[ng-click*="r_ultimos_atendimentos_hipertensos"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_ultimos_atendimentos_hipertensos"]

# Cenário 4 - Verificar Acompanhamento de Visita Domiciliar
clique em Acompanhamento de Visita Domiciliar
    Wait Until Element Is Enabled    css=a[ng-click*="r_report_acompanhamento_visita_domiciliar_detalhado"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_report_acompanhamento_visita_domiciliar_detalhado"]

# Cenário 5 - Verificar Acompanhamento de Visita Domiciliar Simplificado
clique em Acompanhamento de Visita Domiciliar Simplificado
    Wait Until Element Is Enabled    css=a[ng-click*="r_report_acompanhamento_visita_domiciliar_simplificado"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_report_acompanhamento_visita_domiciliar_simplificado"]

# Cenário 6 - Verificar Atendimentos sem Cadastro em AB
clique em Atendimentos sem Cadastro em AB
    Wait Until Element Is Enabled    css=a[ng-click*="r_atendimentos_sem_cadastro_ab"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_atendimentos_sem_cadastro_ab"]

# Cenário 7 - Verificar Acompanhamento Citopatológico
clique em Acompanhamento Citopatológico
    Wait Until Element Is Enabled    css=a[ng-click*="r_acompanhamento_citopatologico"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_acompanhamento_citopatologicos_realizados"]

# Cenário 8 - Verificar Cadastro Ativo por Unidade e Idade
clique em Cadastro Ativo por Unidade e Idade
    Wait Until Element Is Enabled    css=a[ng-click*="r_cadastros_por_idade"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_cadastros_por_idade"]

# Cenário 9 - Verificar Cadastro de Hipertensos com PA Aferida
clique em Cadastro de Hipertensos com PA Aferida
    Wait Until Element Is Enabled    css=a[ng-click*="pacientes_hipertensos_com_pressao_arterial_aferida"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="pacientes_hipertensos_com_pressao_arterial_aferida"]

# Cenário 10 - Verificar Cadastro Individual Nominal
clique em Cadastro Individual Nominal
    Wait Until Element Is Enabled    css=a[ng-click*="r_nominal_cadastros_ativos"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_nominal_cadastros_ativos"]

# Cenário 11 - Verificar Gestantes Ativas
clique em Gestantes Ativas
    Wait Until Element Is Enabled    css=a[ng-click*="r_gestantes_ativas"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_gestantes_ativas"]

# Cenário 12 - Verificar Gestantes com exame de HIV e Sífilis avaliados
clique em Gestantes com exame de HIV e Sífilis avaliados
    Wait Until Element Is Enabled    css=a[ng-click*="r_gestantes_hiv_sifilis_avaliados"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_gestantes_hiv_sifilis_avaliados"]

# Cenário 13 - Verificar Indicadores Atenção Básica - Cadastro
clique em Indicadores Atenção Básica - Cadastro
    Wait Until Element Is Enabled    css=a[ng-click*="indicadores_atencao_basica_cadastro"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="indicadores_atencao_basica_cadastro"]

# Cenário 14 - Verificar Indicadores Atenção Básica - Consultas
clique em Indicadores Atenção Básica - Consultas
    Wait Until Element Is Enabled    css=a[ng-click*="indicadores_atencao_basica_consultas"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="indicadores_atencao_basica_consultas"]

# Cenário 15 - Verificar Indicadores Atenção Básica - Gestantes 
clique em Indicadores Atenção Básica - Gestantes
    Wait Until Element Is Enabled    css=a[ng-click*="indicadores_atencao_basica_gestantes"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="indicadores_atencao_basica_gestantes"]

# Cenário 16 - Verificar Indicadores Atenção Básica - Resumo
clique em Indicadores Atenção Básica - Resumo
    Wait Until Element Is Enabled    css=a[ng-click*="indicadores_atencao_basica_resumo"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="indicadores_atencao_basica_resumo"]

# Cenário 17 - Verificar Nominal de Condições de Saúde
clique em Nominal de Condições de Saúde
    Wait Until Element Is Enabled    css=a[ng-click*="r_nominal_condicoes_saude"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_nominal_condicoes_saude"]

# Cenário 18 - Verificar Pacientes Diabéticos Insulino Dependentes
clique em Pacientes Diabéticos Insulino Dependentes
    Wait Until Element Is Enabled    css=a[ng-click*="r_report_pacientes_diabeticos_insulino_dependentes"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_report_pacientes_diabeticos_insulino_dependentes"]

# Cenário 19 - Verificar Pacientes Hipertensos e Diabéticos por Faixa etária
clique em Pacientes Hipertensos e Diabéticos por Faixa etária
    Wait Until Element Is Enabled    css=a[ng-click*="r_report_pacientes_hipertensos_diabeticos_faixa_etaria"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_report_pacientes_hipertensos_diabeticos_faixa_etaria"]

# Cenário 20 - Verificar Pacientes Hipertensos e Diabéticos por sexo
clique em Pacientes Hipertensos e Diabéticos por sexo
    Wait Until Element Is Enabled    css=a[ng-click*="r_report_pacientes_hipertensos_diabeticos_sexo"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_hipertensos_diabeticos_sexo"]

# Cenário 21 - Verificar Primeira Consulta de Gestante
clique em Primeira Consulta de Gestante
    Wait Until Element Is Enabled    css=a[ng-click*="r_primeira_consulta_gestantes"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_primeira_consulta_gestantes"]

# Cenário 22 - Verificar Produtividade dos Agentes Comunitários de Saúde
clique em Produtividade dos Agentes Comunitários de Saúde
    Wait Until Element Is Enabled    css=a[ng-click*="r_report_produtividade_agentes_comunitarios_saude"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_report_produtividade_agentes_comunitarios_saude"]

# Cenário 23 - Verificar Produtividade de Equipe
clique em Produtividade de Equipe
    Wait Until Element Is Enabled    css=a[ng-click*="r_report_produtividade_equipe"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_report_produtividade_equipe"]

# Cenário 24 - Verificar Produtividade Sintético
clique em Produtividade Sintético
    Wait Until Element Is Enabled    css=a[ng-click*="r_produtividade_ab"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_produtividade_ab"]