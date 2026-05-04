*** Settings ***

Resource   ${CURDIR}/../../common/main.resource

*** Variables ***
${BTN_LOGIN}    //button[@id='loginbtn']
${MENU_LATERAL}    id=show-sidebar
${RELATORIOS}    //span[normalize-space()='RELATÓRIOS']
${COVID}    //span[normalize-space()='Covid-19']
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

clique em Covid-19
    Wait Until Element Is Enabled    ${COVID}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${COVID}

clique em Triagem Covid-19 - Faixa estária por bairro
    Wait Until Element Is Enabled    css=a[ng-click*="r_triagem_covid19_faixa_etaria_por_bairro"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_triagem_covid19_faixa_etaria_por_bairro"]

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

# Cenário 2 - Verificar Triagem Covid-19 - Nominal
clique em Triagem Covid-19 - Nominal
    Wait Until Element Is Enabled    css=a[ng-click*="r_triagem_covid19_nominal"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_triagem_covid19_nominal"]

# Cenário 3 - Verificar Triagem Covid-19 - Status do Atendimento
clique em Triagem Covid-19 - Status do Atendimento
    Wait Until Element Is Enabled    css=a[ng-click*="r_triagem_covid19_status_atendimento"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_triagem_covid19_status_atendimento"]

# Cenário 4 - Verificar Vigilância - Casos de Covid-19 por Bairro
clique em Vigilância - Casos de Covid-19 por Bairro
    Wait Until Element Is Enabled    css=a[ng-click*="r_vigilancia_casos_bairro"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_vigilancia_casos_bairro"]

# Cenário 5 - Verificar Vigilância - Testes Covid-19
clique em Vigilância - Testes Covid-19
    Wait Until Element Is Enabled    css=a[ng-click*="r_vigilancia_testes_covid19"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_vigilancia_testes_covid19"]

# Cenário 6 - Verificar Vigilância - Testes Covid-19 por Paciente
clique em Vigilância - Testes Covid-19 por Paciente
    Wait Until Element Is Enabled    css=a[ng-click*="r_vigilancia_testes_civid_detalhamento_paciente"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_vigilancia_testes_civid_detalhamento_paciente"]