*** Settings ***

Resource   ${CURDIR}/../../common/main.resource
Resource    ${CURDIR}/../../resource/resource_cubos/esus.resource

*** Variables ***
# ${BTN_LOGIN}    //button[@id='loginbtn']
# ${MENU_LATERAL}    id=show-sidebar
# ${EXP_NOVA_ANALISE}    //span[normalize-space()='EXPLORAR NOVA ANÁLISE']
# ${CUBOS}    css=select.cubes
# ${TABELA}    id=table_13
# ${OKAY}    css=a[href="#okay"]
${DATA_INTERNACAO}    xpath=//a[@title='Data da Internação']
${MES_INTERNACAO}    xpath=//a[@title='Mês da Internação']
${DIA_INTERNACAO}    xpath=(//a[@title='Dia da Internação'])[2]
${UNIDADE_SAUDE_FOLDER}    xpath=//a[@title='Unidade de Saúde' and contains(@class,'folder_collapsed')]
${UNIDADE_SAUDE}    xpath=(//a[@title='Unidade de Saúde' and contains(@class,'level')])[1]
${SETOR_FOLDER}    xpath=//a[@title='Setor' and contains(@class,'folder_collapsed')]
${SETOR}    xpath=(//a[@title='Setor' and contains(@class,'level')])[1]
${MES_LINHA}    xpath=//a[@title='Mês da Internação'][normalize-space()='Mês da Internação']
${MES_ATUAL}    xpath=//label[@class='caption' and normalize-space()='2026/JUN']
${BTN_OK}    //a[@href='#save']
${RUN_QUERY}    xpath=//a[@href='#run_query']
${EXPORT_CSV}    xpath=//a[@href='#export_csv']

*** Keywords ***

o usuário esteja na página de login da saudesgo e acesse com login válido
    Wait Until Element Is Visible    id=username    10s
    Click Element    id=username
    Input Text    id=username    ${LOGIN_VALIDO_SGO}
    Click Element    id=j_password
    Input Text    id=j_password    ${SENHA_VALIDA_SGO}
    Wait Until Element Is Visible    ${BTN_LOGIN}
    Sleep    1s
    Click Element    ${BTN_LOGIN}


clicar em Mês da Internação e Dia da Internação dentro do menu Dimensões > Data da Internação
    Wait Until Element Is Visible    ${DATA_INTERNACAO}    30s
    Click Element    ${DATA_INTERNACAO} 
    Aguardar Overlay Sumir
    Wait Until Element Is Visible    ${MES_INTERNACAO}    30s
    Click Element    ${MES_INTERNACAO}
    Aguardar Overlay Sumir
    Wait Until Element Is Visible    ${DIA_INTERNACAO}    30s
    Click Element    ${DIA_INTERNACAO}

    # Sleep    6s


clicar em Unidade de Saúde dentro do menu Dimensões > Unidade de Saúde
    # Expande o folder
    ${folder}=    Get WebElement    ${UNIDADE_SAUDE_FOLDER}
    Execute JavaScript    arguments[0].click();    ARGUMENTS    ${folder}

    # Clica no item interno
    Wait Until Element Is Visible
    ...    ${UNIDADE_SAUDE}
    ...    30s

    ${level}=    Get WebElement
    ...    ${UNIDADE_SAUDE}

    Execute JavaScript    arguments[0].click();    ARGUMENTS    ${level}

    Sleep    6s



clicar em Setor dentro do menu Dimensões > Setor
    # Expande o folder
    ${folder}=    Get WebElement    ${SETOR_FOLDER}
    Execute JavaScript    arguments[0].click();    ARGUMENTS    ${folder}

    # Clica no item interno
    Wait Until Element Is Visible
    ...    ${SETOR}
    ...    30s

    ${level}=    Get WebElement
    ...    ${SETOR}

    Execute JavaScript    arguments[0].click();    ARGUMENTS    ${level}

    Sleep    6s



clicar em Mês da Internação dentro da Linha
    Wait Until Element Is Visible    ${MES_LINHA}    30s
    Wait Until Keyword Succeeds    30s    1s   
    ...     Click Element    ${MES_LINHA} 

clicar no mês atual
    Wait Until Element Is Visible    ${MES_ATUAL}
    Click Element    ${MES_ATUAL}

clicar em OK
    Wait Until Element Is Visible    ${BTN_OK}    10s    
    Click Element    ${BTN_OK}

clicar na seta verde para rodar a query
    Wait Until Element Is Visible    ${RUN_QUERY}    30s 
    Wait Until Keyword Succeeds    30s    1s   
    ...     Click Element    ${RUN_QUERY}

o relatório for gerado com os dados corretos
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

clicar em exportar para Excel
    Limpar Downloads
    Wait Until Element Is Visible    ${EXPORT_CSV}    10s 
    Click Element    ${EXPORT_CSV}
    Sleep    5s

o relatório será exportado com sucesso
    Validar Download CSV

Aguardar Overlay Sumir
    Wait Until Element Is Not Visible
    ...    xpath=//div[contains(@class,'ui-widget-overlay')]
    ...    30s