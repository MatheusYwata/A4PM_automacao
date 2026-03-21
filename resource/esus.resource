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

# Cenário 3 - Verificar a tabela de dados do cubo Esus - Decartes de Produtos

clique em Esus - Decartes de Produtos dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Descartes%20de%20Produtos
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


dê um clique em Qtd de Produtos Descartados dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Produtos Descartados"]
    Click Element    css=a[measure="Qtd de Produtos Descartados"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Produtos Descartados 
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 4 - Verificar a tabela de dados do cubo Esus - Escala de Consultas

clique em Esus - Escala de Consultas dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Escala%20de%20Consultas
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


dê um clique em Qtd de Escalas dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Escalas"]
    Click Element    css=a[measure="Qtd de Escalas"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Escalas
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 5 - Verificar a tabela de dados do cubo Esus - Escala de Exames
clique em Esus - Escala de Exames dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Escala%20de%20Exames
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


dê um clique em Qtd Total de Escalas dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd Total de Escalas"]
    Click Element    css=a[measure="Qtd Total de Escalas"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd Total de Escalas
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 6 - Verificar a tabela de dados do cubo Esus - Exame

clique em Esus - Exame dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Exames
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


dê um clique em Qtd de Exames Disponibilizados dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Exames Disponibilizados"]
    Click Element    css=a[measure="Qtd de Exames Disponibilizados"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Exames Disponibilizados
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 7 - Verificar a tabela de dados do cubo Esus - Fila de Consultas

clique em Esus - Fila de Consultas dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Fila%20de%20Consultas
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


dê um clique em Tempo Médio em Dias Aguardando na Fila dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Tempo medio em dias aguardando na Fila"]
    Click Element    css=a[measure="Tempo medio em dias aguardando na Fila"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Tempo Médio em Dias Aguardando na Fila
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 8 - Verificar a tabela de dados do cubo Esus - Fila de Exames

clique em Esus - Fila de Exames dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Fila%20de%20Exames
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

# Cenário 9 - Verificar a tabela de dados do cubo Esus - Fila de Exames Subprocedimentos

clique em Esus - Fila de Exames Subprocedimentos dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Fila%20de%20Exames%20Subprocedimentos
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


dê um clique em Valor dos Subprocedimentos Agendados dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Valor dos Subprocedimentos Agendados"]
    Click Element    css=a[measure="Valor dos Subprocedimentos Agendados"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Valor dos Subprocedimentos Agendados
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 10 - Verificar a tabela de dados do cubo Esus - Fila de Internações

clique em Esus - Fila de Internações dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Fila%20de%20Internacoes
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


# Cenário 11 - Verificar a tabela de dados do cubo Esus - Internação

clique em Esus - Internação dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Internacao
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

dê um clique em Qtd de Internações dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Internacoes"]
    Click Element    css=a[measure="Qtd de Internacoes"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Internações
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 12 - Verificar a tabela de dados do cubo Esus - Movimentação de Produtos

clique em Esus - Movimentação de Produtos dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Movimentacao%20de%20Produtos
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

dê um clique em Valor do Produto dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Valor do Produto"]
    Click Element    css=a[measure="Valor do Produto"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Valor do Produto
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 13 - Verificar a tabela de dados do cubo Esus - Paciente Dia internação

clique em Esus - Paciente Dia internação dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Paciente%20Dia%20Internacao
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

dê um clique em Qtd Pacientes/Dia dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd Pacientes/Dia"]
    Click Element    css=a[measure="Qtd Pacientes/Dia"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd Pacientes/Dia
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 14 - Verificar a tabela de dados do cubo Esus - Pendências da Fila de Consultas

clique em Esus - Pendências da Fila de Consultas dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Pendencias%20Fila%20de%20Consultas
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

dê um clique em Qtd de Pacientes com Pendências dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Pacientes com Pendencias"]
    Click Element    css=a[measure="Qtd de Pacientes com Pendencias"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Pacientes com Pendências
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 15 - Verificar a tabela de dados do cubo Esus - Pendências da Fila de Exames

clique em Esus - Pendências da Fila de Exames dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Pendencias%20Fila%20de%20Exames
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

# Cenário 16 - Verificar a tabela de dados do cubo Esus - Situação Diária dos Leitos
clique em Esus - Situação Diária dos Leitos dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Situacao%20Diaria%20Leitos
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

dê um clique em Qtd de Leitos Operacionais/Dia dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Leitos Operacionais/Dia"]
    Click Element    css=a[measure="Qtd de Leitos Operacionais/Dia"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Leitos Operacionais/Dia
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 17 - Verificar a tabela de dados do cubo Esus - Situação da Fila de Consultas
clique em Esus - Situação da Fila de Consultas dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Situacao%20da%20Fila%20de%20Consultas
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

dê um clique em Qtd de Pacientes Aguardando na Fila dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Pacientes Aguardando na Fila"]
    Click Element    css=a[measure="Qtd de Pacientes Aguardando na Fila"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Pacientes Aguardando na Fila
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 18 - Verificar a tabela de dados do cubo Esus - Situação da Fila de Exames

clique em Esus - Situação da Fila de Exames dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Situacao%20da%20Fila%20de%20Exames
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

# Cenário 19 - Verificar a tabela de dados do cubo Esus - Situação da Fila de Internação
 
clique em Esus - Situação da Fila de Internação dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Situacao%20da%20Fila%20de%20Internacao
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

# Cenário 20 - Verificar a tabela de dados do cubo Esus - Situação de Leitos

clique em Esus - Situação de Leitos dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Situacao%20de%20Leitos
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

dê um clique em Qtd de Leitos dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Leitos"]
    Click Element    css=a[measure="Qtd de Leitos"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Leitos
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 21 - Verificar a tabela de dados do cubo Esus - Situação dos Atendimentos de Emergência

clique em Esus - Situação dos Atendimentos de Emergência dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Situacao%20Atual%20dos%20Boletins%20Atendimentos%20de%20Emergencia
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

dê um clique em Qtd de Atendimento de Emergência dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Atendimento de Emergencia"]
    Click Element    css=a[measure="Qtd de Atendimento de Emergencia"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Atendimento de Emergência
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 22 - Verificar a tabela de dados do cubo Esus - Situação dos Boletins de Emergência

clique em Esus - Situação dos Boletins de Emergência dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Situacao%20Atual%20dos%20Boletins%20de%20Emergencia
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

dê um clique em Qtd de Boletins de Emergência dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Boletins de Emergencia"]
    Click Element    css=a[measure="Qtd de Boletins de Emergencia"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Boletins de Emergência
    Wait Until Element Is Visible    ${TABELA}    timeout=120s

# Cenário 23 - Verificar a tabela de dados do cubo Esus - Tranferências de Internações

clique em Esus - Tranferências de Internações dentro do menu Select a cube
    Wait Until Page Contains Element    xpath=//iframe[contains(@src,"saiku-ui")]    120s
    Select Frame    xpath=//iframe[contains(@src,"saiku-ui")]
    Sleep    2s

    Wait Until Element Is Visible    css=select.cubes    20s
    Sleep    1s

    Select From List By Value
    ...    css=select.cubes
    ...    a4pm/a4pm/a4pm/Transferencias%20de%20Internacao
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

dê um clique em Qtd de Movimentações dentro do menu Medidas
    Wait Until Element Is Visible    css=a[measure="Qtd de Movimentacoes"]
    Click Element    css=a[measure="Qtd de Movimentacoes"]

o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Movimentações
    Wait Until Element Is Visible    ${TABELA}    timeout=120s