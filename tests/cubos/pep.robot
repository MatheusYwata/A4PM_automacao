*** Settings ***

Resource    ${CURDIR}/../../common/main.resource
Resource    ${CURDIR}/../../share/gherkin.robot
Resource    ${CURDIR}/../../share/setup_teardown.robot
Resource    ${CURDIR}/../../resource/pep.resource


Test Setup      abrir site
Test Teardown   fechar navegador

*** Test Cases ***

Cenário 1 - Verificar a tabela de dados do cubo PEP - Atendimento Ambulatorial
    [Tags]    atend_ambulatorial
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em PEP - Atendimento Ambulatorial dentro do menu Select a cube
    E dê um clique em Qtd de Atendimentos Ambulatoriais dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Atendimentos Ambulatoriais    
    E o último cliente da lista deve ser "Mangaratiba"


Cenário 2 - Verificar a tabela de dados do cubo PEP - Atendimento Individual AB
    [Tags]    atend_individual_ab
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em PEP - Atendimento Individual AB dentro do menu Select a cube
    E dê um clique em Qtd de Atendimentos dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Atendimentos   
    E o último cliente da lista deve ser "Mangaratiba"


Cenário 3 - Verificar a tabela de dados do cubo PEP - Atendimento Individual AB - Anamneses
    [Tags]    atend_individual_anamneses
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em PEP - Atendimento Individual AB - Anamneses dentro do menu Select a cube
    E dê um clique em Qtd de Anamneses dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Anamneses
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 4 - Verificar a tabela de dados do cubo PEP - Atendimentos Odontológicos - AB
    [Tags]    atend_odonto
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em PEP - Atendimentos Odontológicos - AB dentro do menu Select a cube
    E dê um clique em Qtd de Atendimentos dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Atendimentos
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 5 - Verificar a tabela de dados do cubo PEP - Atendimentos de Emergência por Profissional
    [Tags]    emerg_prof
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em PEP - Atendimentos de Emergência por Profissional dentro do menu Select a cube
    E dê um clique em Atendimentos por Profissional dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Atendimentos por Profissional
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 6 - Verificar a tabela de dados do cubo PEP - Atendimentos de Emergência por Registro
    [Tags]    emerg_reg
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em PEP - Atendimentos de Emergência por Registro dentro do menu Select a cube
    E dê um clique em Atendimentos por Registros dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Atendimentos por Registros
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 7 - Verificar a tabela de dados do cubo PEP - Boletins de Emergência
    [Tags]    boletins
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em PEP - Boletins de Emergência dentro do menu Select a cube
    E dê um clique em Qtd de Boletins dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Boletins
    E o último cliente da lista deve ser "Mangaratiba"    

Cenário 8 - Verificar a tabela de dados do cubo PEP - Cadastro Atendimento Odontógico AB
    [Tags]    atend_cad_odonto
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em PEP - Cadastro Atendimento Odontógico AB dentro do menu Select a cube
    E dê um clique em Qtd de Atendimentos dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Atendimentos
    E o último cliente da lista deve ser "Mangaratiba"    

Cenário 9 - Verificar a tabela de dados do cubo PEP - Consulta de Atenção Básica
    [Tags]    atencao_basica
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em PEP - Consulta de Atenção Básica dentro do menu Select a cube
    E dê um clique em Qtd de Consultas dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Consultas
    E o último cliente da lista deve ser "Mangaratiba"   

Cenário 10 - Verificar a tabela de dados do cubo PEP - Encaminhamentos
    [Tags]    encaminhamentos
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em PEP - Encaminhamentos dentro do menu Select a cube
    E dê um clique em Qtd de Encaminhamentos dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Encaminhamentos
    E o último cliente da lista deve ser "Mangaratiba"   

Cenário 11 - Verificar a tabela de dados do cubo PEP - Escuta Inicial
    [Tags]    escuta_inicial
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em PEP - Escuta Inicial dentro do menu Select a cube
    E dê um clique em Qtd de Escutas dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Escutas
    E o último cliente da lista deve ser "Mangaratiba"  

Cenário 12 - Verificar a tabela de dados do cubo PEP - Procedimentos AB
    [Tags]    procedimentos_ab
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em PEP - Procedimentos AB dentro do menu Select a cube
    E dê um clique em Qtd de Procedimentos dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Procedimentos
    E o último cliente da lista deve ser "Mangaratiba"  

Cenário 13 - Verificar a tabela de dados do cubo PEP - Procedimentos Ambulatoriais
    [Tags]    procedimentos_ambulat
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em PEP - Procedimentos Ambulatoriais dentro do menu Select a cube
    E dê um clique em Qtd de Procedimentos dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Procedimentos
    E o último cliente da lista deve ser "Mangaratiba"  

Cenário 14 - Verificar a tabela de dados do cubo PEP - Procedimentos Emergenciais
    [Tags]    procedimentos_emerg
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em PEP - Procedimentos Emergenciais dentro do menu Select a cube
    E dê um clique em Qtd de Procedimentos dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Procedimentos
    E o último cliente da lista deve ser "Mangaratiba"  


Cenário 15 - Verificar a tabela de dados do cubo PEP - Receitas
    [Tags]    receitas
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em PEP - Receitas dentro do menu Select a cube
    E dê um clique em Qtd de Medicamentos Receitados dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Medicamentos Receitados
    E o último cliente da lista deve ser "Mangaratiba"  

Cenário 16 - Verificar a tabela de dados do cubo PEP - SOAP
    [Tags]    receitas
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em PEP - SOAP dentro do menu Select a cube
    E dê um clique em Qtd de SOAP dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de SOAP
    E o último cliente da lista deve ser "Mangaratiba"  

Cenário 17 - Verificar a tabela de dados do cubo PEP - Solicitação de Exames
    [Tags]    receitas
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em PEP - Solicitação de Exames dentro do menu Select a cube
    E dê um clique em Qtd de Exames dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Exames
    E o último cliente da lista deve ser "Mangaratiba"  

Cenário 18 - Verificar a tabela de dados do cubo PEP - Vacinação
    [Tags]    receitas
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em PEP - Vacinação dentro do menu Select a cube
    E dê um clique em Qtd Gestante dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd Gestante
    E o último cliente da lista deve ser "Mangaratiba"  