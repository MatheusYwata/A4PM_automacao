*** Settings ***

Resource   ${CURDIR}/../common/main.resource

*** Variables ***
${BTN_LOGIN}    //button[@id='loginbtn']
${MENU_LATERAL}    id=show-sidebar
${EXP_NOVA_ANALISE}    //span[normalize-space()='EXPLORAR NOVA ANÁLISE']
${CUBOS}    css=select.cubes
${OKAY}    css=a[href="#okay"]
${QTD_ATENDIMENTOS}    css=a[measure="Qtd de Atendimentos"]
${CLIENTE}    xpath=//a[@title="Cliente"]
${CLIENTE_2}    xpath=//ul[contains(@class,'d_hierarchy')]//a[normalize-space()='Cliente']
${TABELA}    id=table_13
${ULTIMO_CLIENTE}    xpath=//*[@id="table_13"]//tbody/tr[last()]/th/div
${QTD_ATEND_INDIVIDUAL}    css=a[measure="Qtd de Atendimento Individual"]


*** Keywords ***

#Cenário 1 - Verificar a tabela de dados do cubo AB - Atendimento Domiciliar
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


dê um clique em Qtd de Atendimentos dentro do menu Medidas
    Wait Until Element Is Visible    ${QTD_ATENDIMENTOS}
    Click Element    ${QTD_ATENDIMENTOS}

clicar em Cliente dentro do menu Dimensões > Cliente
    Wait Until Element Is Visible    ${CLIENTE}    20s
    Click Element    ${CLIENTE}
    Wait Until Element Is Visible
    ...    ${CLIENTE_2}
    ...    20s

    Click Element
    ...    ${CLIENTE_2}

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Atendimentos    
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

o último cliente da lista deve ser "Mangaratiba"    
    Element Text Should Be    ${ULTIMO_CLIENTE}    Mangaratiba


#Cenário 2 - Verificar a tabela de dados do cubo AB - Atendimento Individual
clique em AB - Atendimento Individual dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Atendimento%20Individual
    Sleep    2s

    Execute Javascript
    ...  var s=document.querySelector("select.cubes");
    ...  s.dispatchEvent(new Event('change',{bubbles:true}));
    Sleep    2s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    
    Wait Until Page Does Not Contain    Carregando...    60s

dê um clique em Qtd de Atendimento Individual dentro do menu Medidas
    Wait Until Element Is Visible    ${QTD_ATEND_INDIVIDUAL}
    Click Element    ${QTD_ATEND_INDIVIDUAL}

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Atendimento Individual
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

#Cenário 3 - Verificar a tabela de dados do cubo AB - Atendimentos Odontológicos
clique em AB - Atendimentos Odontológicos por Tipo de Atendimento dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/AB%20-%20Atendimentos%20Odontologicos
    Sleep    2s

    Execute Javascript
    ...  var s=document.querySelector("select.cubes");
    ...  s.dispatchEvent(new Event('change',{bubbles:true}));
    Sleep    2s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    
    Wait Until Page Does Not Contain    Carregando...    60s

# Cenário 4 - Verificar a tabela de dados do cubo AB - Atividade Coletiva
clique em AB - Atividade Coletiva dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Atividade%20Coletiva
    Sleep    2s

    Execute Javascript
    ...  var s=document.querySelector("select.cubes");
    ...  s.dispatchEvent(new Event('change',{bubbles:true}));
    Sleep    2s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    
    Wait Until Page Does Not Contain    Carregando...    60s

dê um clique em Qtd de Atividades Coletivas dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Atividades Coletivas"]    20s
    Click Element    css=a[measure="Qtd de Atividades Coletivas"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Atividades Coletivas
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 5 - Verificar a tabela de dados do cubo AB - Cadastro de Atendimento Odontológico
clique em AB - Cadastro de Atendimento Odontológico dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Atendimento%20Odontologico
    Sleep    2s

    Execute Javascript
    ...  var s=document.querySelector("select.cubes");
    ...  s.dispatchEvent(new Event('change',{bubbles:true}));
    Sleep    2s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    
    Wait Until Page Does Not Contain    Carregando...    60s

# Cenário 6 - Verificar a tabela de dados do cubo AB - Cadastro Domiciliar
clique em AB - Cadastro Domiciliar dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Cadastro%20Domiciliar
    Sleep    2s

    Execute Javascript
    ...  var s=document.querySelector("select.cubes");
    ...  s.dispatchEvent(new Event('change',{bubbles:true}));
    Sleep    2s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    
    Wait Until Page Does Not Contain    Carregando...    60s

dê um clique em Qtd de Moradores Cadastrados dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Moradores"]    20s
    Click Element    css=a[measure="Qtd de Moradores"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Moradores
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

#Cenário 7 - Verificar a tabela de dados do cubo AB - Cadastro Familiar
clique em AB - Cadastro Familiar dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Cadastro%20Familiar
    Sleep    2s

    Execute Javascript
    ...  var s=document.querySelector("select.cubes");
    ...  s.dispatchEvent(new Event('change',{bubbles:true}));
    Sleep    2s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    
    Wait Until Page Does Not Contain    Carregando...    60s

dê um clique em Qtd de Membros das Famílias dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Membros das Familias"]    20s
    Click Element    css=a[measure="Qtd de Membros das Familias"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Membros das Famílias
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 8 - Verificar a tabela de dados do cubo AB - Cadastro Individual
clique em AB - Cadastro Individual dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Cadastro%20Individual
    Sleep    2s

    Execute Javascript
    ...  var s=document.querySelector("select.cubes");
    ...  s.dispatchEvent(new Event('change',{bubbles:true}));
    Sleep    2s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    
    Wait Until Page Does Not Contain    Carregando...    60s

dê um clique em Qtd de Total de Pacientes Cadastrados dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Total de Pacientes Cadastrados"]    20s
    Click Element    css=a[measure="Qtd de Total de Pacientes Cadastrados"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Total de Pacientes Cadastrados
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 9 - Verificar a tabela de dados do cubo AB - Consumo Alimentar - Acima de 2 Anos
clique em AB - Consumo Alimentar - Acima de 2 Anos dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Consumo%20Alimentar%20-%20Acima%20de%202%20Anos
    Sleep    2s

    Execute Javascript
    ...  var s=document.querySelector("select.cubes");
    ...  s.dispatchEvent(new Event('change',{bubbles:true}));
    Sleep    2s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    
    Wait Until Page Does Not Contain    Carregando...    60s

dê um clique em Qtd de Total de Pacientes por Consumo dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Pacientes por Consumo"]    20s
    Click Element    css=a[measure="Qtd de Pacientes por Consumo"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Total de Pacientes por Consumo
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 10 - Verificar a tabela de dados do cubo AB - Consumo Alimentar - Até 6 Meses
clique em AB - Consumo Alimentar - Até 6 Meses dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Consumo%20Alimentar%20-%20Ate%206%20Meses
    Sleep    2s

    Execute Javascript
    ...  var s=document.querySelector("select.cubes");
    ...  s.dispatchEvent(new Event('change',{bubbles:true}));
    Sleep    2s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    
    Wait Until Page Does Not Contain    Carregando...    60s

# Cenário 11 - Verificar a tabela de dados do cubo AB - Consumo Alimentar - De 6 a 23 Meses
clique em AB - Consumo Alimentar - De 6 a 23 Meses dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Consumo%20Alimentar%20-%20De%206%20a%2023%20Meses
    Sleep    2s

    Execute Javascript
    ...  var s=document.querySelector("select.cubes");
    ...  s.dispatchEvent(new Event('change',{bubbles:true}));
    Sleep    2s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    
    Wait Until Page Does Not Contain    Carregando...    60s

# Cenário 12 - Verificar a tabela de dados do cubo AB - Procedimentos
clique em AB - Procedimentos dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Procedimentos
    Sleep    2s

    Execute Javascript
    ...  var s=document.querySelector("select.cubes");
    ...  s.dispatchEvent(new Event('change',{bubbles:true}));
    Sleep    2s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    
    Wait Until Page Does Not Contain    Carregando...    60s

dê um clique em Qtd de Procedimentos dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Procedimentos"]    20s
    Click Element    css=a[measure="Qtd de Procedimentos"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Procedimentos
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 13 - Verificar a tabela de dados do cubo AB - Procedimentos Consolidados
clique em AB - Procedimentos Consolidados dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Procedimentos%20Consolidados
    Sleep    2s

    Execute Javascript
    ...  var s=document.querySelector("select.cubes");
    ...  s.dispatchEvent(new Event('change',{bubbles:true}));
    Sleep    2s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    
    Wait Until Page Does Not Contain    Carregando...    60s

# Cenário 14 - Verificar a tabela de dados do cubo AB - Vacinação
clique em AB - Vacinação dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Vacinacao
    Sleep    2s

    Execute Javascript
    ...  var s=document.querySelector("select.cubes");
    ...  s.dispatchEvent(new Event('change',{bubbles:true}));
    Sleep    2s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    
    Wait Until Page Does Not Contain    Carregando...    60s

dê um clique em Qtd Gestante dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd Gestante"]    20s
    Click Element    css=a[measure="Qtd Gestante"]    

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd Gestante
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 15 - Verificar a tabela de dados do cubo AB - Visita Domiciliar
clique em AB - Visita Domiciliar dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Visita%20Domiciliar
    Sleep    2s

    Execute Javascript
    ...  var s=document.querySelector("select.cubes");
    ...  s.dispatchEvent(new Event('change',{bubbles:true}));
    Sleep    2s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    
    Wait Until Page Does Not Contain    Carregando...    60s

dê um clique em Qtd de Visitas Domiciliares dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Visitas Domiciliares"]    20s
    Click Element    css=a[measure="Qtd de Visitas Domiciliares"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Visitas Domiciliares
    Wait Until Element Is Visible    ${TABELA}    timeout=120s



