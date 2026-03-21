*** Settings ***

Resource    ${CURDIR}/../../common/main.resource
Resource    ${CURDIR}/../../share/gherkin.robot
Resource    ${CURDIR}/../../share/setup_teardown.robot
Resource    ${CURDIR}/../../resource/ab.resource


Test Setup      abrir site
Test Teardown   fechar navegador

*** Test Cases ***

Cenário 1 - Verificar a tabela de dados do cubo AB - Atendimento Domiciliar
    [Tags]    atendimento_domiciliar
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em AB - Atendimento Domiciliar dentro do menu Select a cube
    E dê um clique em Qtd de Atendimentos dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Atendimentos    
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 2 - Verificar a tabela de dados do cubo AB - Atendimento Individual
    [Tags]    atendimento_individual
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em AB - Atendimento Individual dentro do menu Select a cube
    E dê um clique em Qtd de Atendimento Individual dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Atendimento Individual
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 3 - Verificar a tabela de dados do cubo AB - Atendimentos Odontológicos
    [Tags]    atendimentos_odonto
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em AB - Atendimentos Odontológicos por Tipo de Atendimento dentro do menu Select a cube
    E dê um clique em Qtd de Atendimentos dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Atendimentos  
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 4 - Verificar a tabela de dados do cubo AB - Atividade Coletiva
    [Tags]    atividade_coletiva
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em AB - Atividade Coletiva dentro do menu Select a cube
    E dê um clique em Qtd de Atividades Coletivas dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Atividades Coletivas
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 5 - Verificar a tabela de dados do cubo AB - Cadastro de Atendimento Odontológico
    [Tags]    cad_atend_odonto
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em AB - Cadastro de Atendimento Odontológico dentro do menu Select a cube
    E dê um clique em Qtd de Atendimentos dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Atendimentos  
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 6 - Verificar a tabela de dados do cubo AB - Cadastro Domiciliar
    [Tags]    cad_domiciliar
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em AB - Cadastro Domiciliar dentro do menu Select a cube
    E dê um clique em Qtd de Moradores Cadastrados dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Moradores
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 7 - Verificar a tabela de dados do cubo AB - Cadastro Familiar
    [Tags]    cad_familiar
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em AB - Cadastro Familiar dentro do menu Select a cube
    E dê um clique em Qtd de Membros das Famílias dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Membros das Famílias
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 8 - Verificar a tabela de dados do cubo AB - Cadastro Individual
    [Tags]    cad_individual
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em AB - Cadastro Individual dentro do menu Select a cube
    E dê um clique em Qtd de Total de Pacientes Cadastrados dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Total de Pacientes Cadastrados
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 9 - Verificar a tabela de dados do cubo AB - Consumo Alimentar - Acima de 2 Anos
    [Tags]    consumo_alimentar_2a
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em AB - Consumo Alimentar - Acima de 2 Anos dentro do menu Select a cube
    E dê um clique em Qtd de Total de Pacientes por Consumo dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Total de Pacientes por Consumo
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 10 - Verificar a tabela de dados do cubo AB - Consumo Alimentar - Até 6 Meses
    [Tags]    consumo_alimentar_6m
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em AB - Consumo Alimentar - Até 6 Meses dentro do menu Select a cube
    E dê um clique em Qtd de Total de Pacientes por Consumo dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Total de Pacientes por Consumo
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 11 - Verificar a tabela de dados do cubo AB - Consumo Alimentar - De 6 a 23 Meses
    [Tags]    consumo_alimentar_6a23m
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em AB - Consumo Alimentar - De 6 a 23 Meses dentro do menu Select a cube
    E dê um clique em Qtd de Total de Pacientes por Consumo dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Total de Pacientes por Consumo
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 12 - Verificar a tabela de dados do cubo AB - Procedimentos
    [Tags]    procedimentos
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em AB - Procedimentos dentro do menu Select a cube
    E dê um clique em Qtd de Procedimentos dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Procedimentos
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 13 - Verificar a tabela de dados do cubo AB - Procedimentos Consolidados
    [Tags]    procedimentos_consolidados
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em AB - Procedimentos Consolidados dentro do menu Select a cube
    E dê um clique em Qtd de Procedimentos dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Procedimentos
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 14 - Verificar a tabela de dados do cubo AB - Vacinação
    [Tags]    vacinacao
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em AB - Vacinação dentro do menu Select a cube
    E dê um clique em Qtd Gestante dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Gestante
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 15 - Verificar a tabela de dados do cubo AB - Visita Domiciliar
    [Tags]    visita_domiciliar
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em AB - Visita Domiciliar dentro do menu Select a cube
    E dê um clique em Qtd de Visitas Domiciliares dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Visitas Domiciliares
    E o último cliente da lista deve ser "Mangaratiba"
