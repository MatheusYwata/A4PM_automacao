*** Settings ***

Resource   ${CURDIR}/../../common/main.resource

*** Variables ***
${BTN_LOGIN}    //button[@id='loginbtn']
${MENU_LATERAL}    id=show-sidebar
${RELATORIOS}    //span[normalize-space()='RELATÓRIOS']
${EXAMES}    (//span[contains(text(),'Exames')])[2]
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

clique em Exames
    Wait Until Element Is Enabled    ${EXAMES}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${EXAMES}

clique em Entradas e Saídas na Fila de Exames
    Wait Until Element Is Enabled    css=a[ng-click*="r_entradas_saidas_fila_exames"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_entradas_saidas_fila_exames"]

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