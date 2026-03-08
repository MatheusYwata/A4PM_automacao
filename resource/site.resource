*** Settings ***

Resource   ${CURDIR}/../common/main.resource

*** Variables ***
${BTN_LOGIN}    //button[@id='loginbtn']
${MENU_LATERAL}    id=show-sidebar
${EXP_NOVA_ANALISE}    //span[normalize-space()='EXPLORAR NOVA ANÁLISE']
${CUBOS}    css=select.cubes
${OKAY}    css=a[href="#okay"]
${QTD_ATENDIMENTOS}    css=a[measure="Qtd de Atendimentos"]
${CLIENTE}    //body/div[@id='tab_panel']/div[@class='tab_container']/div[@class='sidebar ui-droppable']/div[@class='metadata_attribute_wrapper']/div/div[@class='sidebar_inner dimension_tree']/ul/li[1]
${CLIENTE_2}    //li[@class='hide d_level ui-draggable ui-draggable-handle ui-draggable-disabled']//a[@title='Cliente'][normalize-space()='Cliente']
${TABELA}    id=table_13
${ULTIMO_CLIENTE}    xpath=//*[@id="table_13"]//tbody/tr[last()]/th/div

*** Keywords ***


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

clique em AB - Atendimento Domiciliar dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Atendimento%20Domiciliar
    Sleep    2s

    Execute Javascript
    ...  var s=document.querySelector("select.cubes");
    ...  s.dispatchEvent(new Event('change',{bubbles:true}));
    Sleep    2s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    
    Wait Until Page Does Not Contain    Carregando...    60s
    # Execute Javascript
    # ...    Saiku.tabs._tabs[0].content.new_query()

    # Execute Javascript

    # Wait Until Element Is Visible    ${OKAY}    10s
    # Click Element    ${OKAY}

    # Recuperar Query Se Travar
    # Wait Until Keyword Succeeds
    # ...    2 min
    # ...    15s
    # ...    Recuperar Query Se Travar
    

# Recuperar Query Se Travar
#     ${carregando}=    Run Keyword And Return Status
#     ...    Wait Until Page Does Not Contain    Carregando...    15s

#     IF    not ${carregando}
#         Log    Query travou - tentando recuperar

#         Execute Javascript
#         ...    Saiku.tabs._tabs[0].content.refresh()

#         Sleep    5s

#         ${recuperou}=    Run Keyword And Return Status
#         ...    Wait Until Page Does Not Contain    Carregando...    20s

#         IF    not ${recuperou}
#             Log    Refresh não resolveu - recriando query

#             Execute Javascript
#             ...    Saiku.tabs._tabs[0].content.new_query()

#             Wait Until Element Is Visible    ${OKAY}    10s
#             Click Element    ${OKAY}

#             Execute Javascript
#             ...    Saiku.tabs._tabs[0].content.sync_query()

#             Wait Until Page Does Not Contain    Carregando...    60s
#         END
#     END

dê um clique em Qtd de Atendimentos dentro do menu Medidas
    Wait Until Element Is Visible    ${QTD_ATENDIMENTOS}
    Click Element    ${QTD_ATENDIMENTOS}

clicar em Cliente dentro do menu Dimensões > Cliente
    Wait Until Element Is Visible    xpath=//a[@title="Cliente"]    20s
    Click Element    xpath=//a[@title="Cliente"]
    Wait Until Element Is Visible
    ...    xpath=//ul[contains(@class,'d_hierarchy')]//a[normalize-space()='Cliente']
    ...    20s

    Click Element
    ...    xpath=//ul[contains(@class,'d_hierarchy')]//a[normalize-space()='Cliente']

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Atendimentos    
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

o último cliente da lista deve ser "Mangaratiba"    
    Element Text Should Be    ${ULTIMO_CLIENTE}    Mangaratiba