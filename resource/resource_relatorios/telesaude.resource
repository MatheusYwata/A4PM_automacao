*** Settings ***

Resource   ${CURDIR}/../../common/main.resource

*** Variables ***
${BTN_LOGIN}    //button[@id='loginbtn']
${MENU_LATERAL}    id=show-sidebar
${RELATORIOS}    //span[normalize-space()='RELATÓRIOS']
${TELESSAUDE}    //span[normalize-space()='Telessaúde']
${SELECT}=    xpath=//div[contains(.,'Cliente')]/following::select[1]

*** Keywords ***

# Cenário 1 - Verificar Telessaúde - Atendimentos por CBO e Idade
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

clique em Telessaúde
    Wait Until Element Is Enabled    ${TELESSAUDE}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${TELESSAUDE}

clique em Telessaúde - Atendimentos por CBO e Idade
    Wait Until Element Is Enabled    css=a[ng-click*="r_telessaude_atendimentos_profissional_idade"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_telessaude_atendimentos_profissional_idade"]

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

# Cenário 2 - Verificar Telessaúde - Atendimentos por Profissional
clique em Telessaúde - Atendimentos por Profissional
    Wait Until Element Is Enabled    css=a[ng-click*="r_telessaude_atendimentos_profissional"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_telessaude_atendimentos_profissional"]

# Cenário 3 - Verificar Telessaúde - Morbidades
clique em Telessaúde - Morbidades
    Wait Until Element Is Enabled    css=a[ng-click*="r_telessaude_morbidades"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_telessaude_morbidades"]

# Cenário 4 - Verificar Telessaúde - Sintomas
clique em Telessaúde - Sintomas
    Wait Until Element Is Enabled    css=a[ng-click*="r_telessaude_sintomas"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_telessaude_sintomas"]