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

# Cenário 1 - Verificar a tabela de dados do cubo PEP - Atendimento Ambulatorial
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
    Sleep    5s

clique em PEP - Atendimento Ambulatorial dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Atendimento%20Ambulatorial
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
    Sleep    10s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.sync_query()
    Sleep    10s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s

    Wait Until Page Does Not Contain    Carregando...    60s


dê um clique em Qtd de Atendimentos Ambulatoriais dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Atendimentos Ambulatoriais"]
    Click Element    css=a[measure="Qtd de Atendimentos Ambulatoriais"]

clicar em Cliente dentro do menu Dimensões > Cliente
        Wait Until Element Is Visible    ${CLIENTE}    20s
    Click Element    ${CLIENTE}
    Wait Until Element Is Visible
    ...    ${CLIENTE_2}
    ...    20s

    Click Element
    ...    ${CLIENTE_2}

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Atendimentos Ambulatoriais    
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

o último cliente da lista deve ser "Mangaratiba"    
    Element Text Should Be    ${ULTIMO_CLIENTE}    Mangaratiba

# Cenário 2 - Verificar a tabela de dados do cubo PEP - Atendimento Individual AB

clique em PEP - Atendimento Individual AB dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/PEP%20-%20Atendimento%20Individual%20AB
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
    Sleep    10s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.sync_query()
    Sleep    10s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s

    Wait Until Page Does Not Contain    Carregando...    60s


dê um clique em Qtd de Atendimentos dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Atendimentos"]
    Click Element    css=a[measure="Qtd de Atendimentos"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Atendimentos   
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 3 - Verificar a tabela de dados do cubo PEP - Atendimento Individual AB - Anamneses

clique em PEP - Atendimento Individual AB - Anamneses dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/PEP%20-%20Anamneses
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
    Sleep    10s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.sync_query()
    Sleep    10s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s

    Wait Until Page Does Not Contain    Carregando...    60s

dê um clique em Qtd de Anamneses dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Anamneses"]
    Click Element    css=a[measure="Qtd de Anamneses"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Anamneses  
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 4 - Verificar a tabela de dados do cubo PEP - Atendimentos Odontológicos - AB

clique em PEP - Atendimentos Odontológicos - AB dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/PEP%20-%20Atendimentos%20Odontologicos%20-%20AB
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
    Sleep    10s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.sync_query()
    Sleep    10s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s

    Wait Until Page Does Not Contain    Carregando...    60s



# Cenário 5 - Verificar a tabela de dados do cubo PEP - Atendimentos de Emergência por Profissional

clique em PEP - Atendimentos de Emergência por Profissional dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/PEP%20-%20Atendimentos%20por%20Profissional%20-%20Atendimentos
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
    Sleep    10s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.sync_query()
    Sleep    10s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s

dê um clique em Atendimentos por Profissional dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Atendimentos por Profissional"]
    Click Element    css=a[measure="Atendimentos por Profissional"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Atendimentos por Profissional
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 6 - Verificar a tabela de dados do cubo PEP - Atendimentos de Emergência por Registro
clique em PEP - Atendimentos de Emergência por Registro dentro do menu Select a cube    
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/PEP%20-%20Atendimentos%20de%20Emergencia%20-%20Atendimentos
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
    Sleep    10s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.sync_query()
    Sleep    10s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s

dê um clique em Atendimentos por Registros dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Atendimentos por Registros"]
    Click Element    css=a[measure="Atendimentos por Registros"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Atendimentos por Registros
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 7 - Verificar a tabela de dados do cubo PEP - Boletins de Emergência
clique em PEP - Boletins de Emergência dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/PEP%20-%20Boletins%20de%20Emergencia

    Execute Javascript
    ...  var s=document.querySelector("select.cubes");
    ...  s.dispatchEvent(new Event('change',{bubbles:true}));
    Sleep    2s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.new_query()
    Sleep    10s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.sync_query()
    Sleep    10s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s

dê um clique em Qtd de Boletins dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Boletins"]
    Click Element    css=a[measure="Qtd de Boletins"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Boletins
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 8 - Verificar a tabela de dados do cubo PEP - Cadastro Atendimento Odontógico AB

clique em PEP - Cadastro Atendimento Odontógico AB dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/PEP%20-%20Atendimento%20Odontologico
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
    Sleep    10s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.sync_query()
    Sleep    10s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s

# Cenário 9 - Verificar a tabela de dados do cubo PEP - Consulta de Atenção Básica
clique em PEP - Consulta de Atenção Básica dentro do menu Select a cube
        Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/PEP%20-%20Consulta%20de%20Atencao%20Basica
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
    Sleep    10s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.sync_query()
    Sleep    10s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s

dê um clique em Qtd de Consultas dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Consultas"]
    Click Element    css=a[measure="Qtd de Consultas"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Consultas
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 10 - Verificar a tabela de dados do cubo PEP - Encaminhamentos

clique em PEP - Encaminhamentos dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/PEP%20-%20Encaminhamentos
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
    Sleep    10s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.sync_query()
    Sleep    10s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s

dê um clique em Qtd de Encaminhamentos dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Encaminhamentos"]
    Click Element    css=a[measure="Qtd de Encaminhamentos"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Encaminhamentos
    Wait Until Element Is Visible    ${TABELA}    timeout=120s


# Cenário 11 - Verificar a tabela de dados do cubo PEP - Escuta Inicial
clique em PEP - Escuta Inicial dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/PEP%20-%20Escuta%20Inicial
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
    Sleep    10s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.sync_query()
    Sleep    10s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s

dê um clique em Qtd de Escutas dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Escutas"]
    Click Element    css=a[measure="Qtd de Escutas"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Escutas
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

#Cenário 12 - Verificar a tabela de dados do cubo PEP - Procedimentos AB
clique em PEP - Procedimentos AB dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/PEP%20-%20Procedimentos
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
    Sleep    10s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.sync_query()
    Sleep    10s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s

dê um clique em Qtd de Procedimentos dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Procedimentos"]
    Click Element    css=a[measure="Qtd de Procedimentos"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Procedimentos
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 13 - Verificar a tabela de dados do cubo PEP - Procedimentos Ambulatoriais
clique em PEP - Procedimentos Ambulatoriais dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/PEP%20-%20Procedimentos%20Ambulatoriais
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
    Sleep    10s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.sync_query()
    Sleep    10s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s

# Cenário 14 - Verificar a tabela de dados do cubo PEP - Procedimentos Emergenciais
clique em PEP - Procedimentos Emergenciais dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/PEP%20-%20Procedimentos%20Emergenciais
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
    Sleep    10s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.sync_query()
    Sleep    10s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s


# Cenário 15 - Verificar a tabela de dados do cubo PEP - Receitas

clique em PEP - Receitas dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/PEP%20-%20Receitas
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
    Sleep    10s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.sync_query()
    Sleep    10s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s

dê um clique em Qtd de Medicamentos Receitados dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Medicamentos Receitados"]
    Click Element    css=a[measure="Qtd de Medicamentos Receitados"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Medicamentos Receitados
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 16 - Verificar a tabela de dados do cubo PEP - SOAP

clique em PEP - SOAP dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/PEP%20-%20Soap
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
    Sleep    10s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.sync_query()
    Sleep    10s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s

dê um clique em Qtd de SOAP dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de SOAP"]
    Click Element    css=a[measure="Qtd de SOAP"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de SOAP 
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 17 - Verificar a tabela de dados do cubo PEP - Solicitação de Exames

clique em PEP - Solicitação de Exames dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/PEP%20-%20Solicitacao%20de%20Exames
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
    Sleep    10s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.sync_query()
    Sleep    10s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s

dê um clique em Qtd de Exames dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Exames"]
    Click Element    css=a[measure="Qtd de Exames"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Exames 
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 18 - Verificar a tabela de dados do cubo PEP - Vacinação

clique em PEP - Vacinação dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/PEP%20-%20Vacinacao
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
    Sleep    10s

    Execute Javascript
    ...    Saiku.tabs._tabs[0].content.sync_query()
    Sleep    10s

    Wait Until Element Is Visible    ${OKAY}    10s    
    Click Element    ${OKAY}
    Sleep    3s

dê um clique em Qtd Gestante dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd Gestante"]
    Click Element    css=a[measure="Qtd Gestante"]
    

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd Gestante 
    Wait Until Element Is Visible    ${TABELA}    timeout=120s