*** Settings ***

Resource   ${CURDIR}/../common/main.resource

*** Variables ***
${BTN_LOGIN}    //button[@id='loginbtn']
${MENU_LATERAL}    id=show-sidebar
${EXP_NOVA_ANALISE}    //span[normalize-space()='EXPLORAR NOVA ANÁLISE']
${CUBOS}    css=select.cubes
${OKAY}    css=a[href="#okay"]
${CLIENTE}    xpath=//a[@title="Cliente"]
${CLIENTE_2}    xpath=//ul[contains(@class,'d_hierarchy')]//a[normalize-space()='Cliente']
${TABELA}    id=table_13
${ULTIMO_CLIENTE}    xpath=//*[@id="table_13"]//tbody/tr[last()]/th/div



*** Keywords ***

# Cenário 1 - Verificar a tabela de dados do cubo Esus - Boletins de Emergência
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

clique em Explorar Nova Análise
    Wait Until Element Is Enabled    ${EXP_NOVA_ANALISE}    
    Wait Until Keyword Succeeds    10s    1s    Click Element    ${EXP_NOVA_ANALISE}   

clique em Esus - Boletins de Emergência dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Atendimentos%20de%20Emergencia%20-%20Boletins
    Sleep    2s

    Execute Javascript
    ...  var s=document.querySelector("select.cubes");
    ...  s.dispatchEvent(new Event('change',{bubbles:true}));
    Sleep    2s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.new_query()
    Sleep    3s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.sync_query()
    Sleep    3s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s

    Wait Until Page Does Not Contain    Carregando...    60s

dê um clique em Qtd de Boletins dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Boletins - Atendimentos"]
    Click Element    css=a[measure="Qtd de Boletins - Atendimentos"]

clicar em Cliente dentro do menu Dimensões > Cliente
        Wait Until Element Is Visible    ${CLIENTE}    20s
    Click Element    ${CLIENTE}
    Wait Until Element Is Visible
    ...    ${CLIENTE_2}
    ...    20s

    Click Element
    ...    ${CLIENTE_2}

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Boletins  
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

o último cliente da lista deve ser "Mangaratiba"    
    Element Text Should Be    ${ULTIMO_CLIENTE}    Mangaratiba

# Cenário 2 - Verificar a tabela de dados do cubo AB - Atendimento Domiciliar
clique em Esus - Consultas dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Consultas
    Sleep    2s

    Execute Javascript
    ...  var s=document.querySelector("select.cubes");
    ...  s.dispatchEvent(new Event('change',{bubbles:true}));
    Sleep    2s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.new_query()
    Sleep    3s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.sync_query()
    Sleep    3s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s

    Wait Until Page Does Not Contain    Carregando...    60s


dê um clique em Qtd de Consultas dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Consultas Disponibilizadas"]
    Click Element    css=a[measure="Qtd de Consultas Disponibilizadas"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Consultas Disponilizadas  
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

