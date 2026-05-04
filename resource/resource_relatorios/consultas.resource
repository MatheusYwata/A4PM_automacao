*** Settings ***

Resource   ${CURDIR}/../../common/main.resource

*** Variables ***
${BTN_LOGIN}    //button[@id='loginbtn']
${MENU_LATERAL}    id=show-sidebar
${RELATORIOS}    //span[normalize-space()='RELATÓRIOS']
${CONSULTAS}    (//span[contains(text(),'Consultas')])[2]          
${SELECT}=    xpath=//div[contains(.,'Código do Cliente')]/following::select[1]


*** Keywords ***
# Cenário 1 - Verificar Consultas Agendadas pela Fila
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

clique em Consultas
    Wait Until Element Is Enabled    ${CONSULTAS}
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    ${CONSULTAS}

clique em Consultas Agendadas pela Fila
    Wait Until Element Is Enabled    css=a[ng-click*="r_consultas_agendadas_fila"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_consultas_agendadas_fila"]

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

# Cenário 2 - Verificar Consultas por Objetivo
clique em Consultas por Objetivo
    Wait Until Element Is Enabled    css=a[ng-click*="r_consultas_por_objetivo"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_consultas_por_objetivo"]

# Cenário 3 - Verificar Entradas e Saídas na Fila de Consultas
clique em Entradas e Saídas na Fila de Consultas
    Wait Until Element Is Enabled    css=a[ng-click*="r_entradas_saidas_fila_consultas"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_entradas_saidas_fila_consultas"]

# Cenário 4 - Verificar Entradas na Fila de Consultas
clique em Entradas na Fila de Consultas
    Wait Until Element Is Enabled    css=a[ng-click*="r_entrada_fila_consultas_unidades"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_entrada_fila_consultas_unidades"]

# Cenário 5 - Verificar Saídas na Fila de Consultas
clique em Saídas na Fila de Consultas
    Wait Until Element Is Enabled    css=a[ng-click*="r_saida_fila_consultas_unidades"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_saida_fila_consultas_unidades"]

# Cenário 6 - Verificar Tamanho da Fila de Consultas
clique em Tamanho da Fila de Consultas
    Wait Until Element Is Enabled    css=a[ng-click*="r_tamanho_fila_consultas"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_tamanho_fila_consultas"]

# Cenário 7 - Verificar Mensal de Consultas
clique em Mensal de Consultas
    Wait Until Element Is Enabled    css=a[ng-click*="r_consultas_ocupacao"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_consultas_ocupacao"]

# Cenário 8 - Cenário 8 - Verificar Mensal de Consultas por Profissional de Saúde
clique em Mensal de Consultas por Profissional de Saúde
    Wait Until Element Is Enabled    css=a[ng-click*="r_consultas_profissional_saude."]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_consultas_profissional_saude."]

# Cenário 9 - Verificar Produtividade de Consultas
clique em Produtividade de Consultas
    Wait Until Element Is Enabled    css=a[ng-click*="r_produtividade_consultas"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_produtividade_consultas"]

# Cenário 10 - Verificar Produtividade de Usuários Saída da Fila
clique em Produtividade de Usuários Saída da Fila
    Wait Until Element Is Enabled    css=a[ng-click*="r_produtividade_usuarios_saida_fila_consultas"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_produtividade_usuarios_saida_fila_consultas"]

# Cenário 11 - Verificar Saída da Fila por Usuários - Simplificado
clique em Saída da Fila por Usuários - Simplificado
    Wait Until Element Is Enabled    css=a[ng-click*="r_produtividade_usuarios_saida_fila_consultas_simplificado"]
    Wait Until Keyword Succeeds    10s    1s   
    ...     Click Element    css=a[ng-click*="r_produtividade_usuarios_saida_fila_consultas_simplificado"]