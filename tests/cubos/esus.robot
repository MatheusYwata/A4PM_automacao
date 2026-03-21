*** Settings ***

Resource    ${CURDIR}/../../common/main.resource
Resource    ${CURDIR}/../../share/gherkin.robot
Resource    ${CURDIR}/../../share/setup_teardown.robot
Resource    ${CURDIR}/../../resource/esus.resource


Test Setup      abrir site
Test Teardown   fechar navegador

*** Test Cases ***

Cenário 1 - Verificar a tabela de dados do cubo Esus - Boletins de Emergência
    [Tags]    boletins_emergencia
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Boletins de Emergência dentro do menu Select a cube
    E dê um clique em Qtd de Boletins dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Boletins    
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 2 - Verificar a tabela de dados do cubo Esus - Consultas
    [Tags]    consultas
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Consultas dentro do menu Select a cube
    E dê um clique em Qtd de Consultas dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Consultas Disponilizadas   
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 3 - Verificar a tabela de dados do cubo Esus - Decartes de Produtos
    [Tags]    descartes
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Decartes de Produtos dentro do menu Select a cube
    E dê um clique em Qtd de Produtos Descartados dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Produtos Descartados 
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 4 - Verificar a tabela de dados do cubo Esus - Escala de Consultas
    [Tags]    escala_consultas
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Escala de Consultas dentro do menu Select a cube
    E dê um clique em Qtd de Escalas dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Escalas
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 5 - Verificar a tabela de dados do cubo Esus - Escala de Exames
    [Tags]    escala_exames
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Escala de Exames dentro do menu Select a cube
    E dê um clique em Qtd Total de Escalas dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd Total de Escalas
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 6 - Verificar a tabela de dados do cubo Esus - Exame
    [Tags]    exame
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Exame dentro do menu Select a cube
    E dê um clique em Qtd de Exames Disponibilizados dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Exames Disponibilizados
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 7 - Verificar a tabela de dados do cubo Esus - Fila de Consultas
    [Tags]    fila_consultas
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Fila de Consultas dentro do menu Select a cube
    E dê um clique em Tempo Médio em Dias Aguardando na Fila dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Tempo Médio em Dias Aguardando na Fila
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 8 - Verificar a tabela de dados do cubo Esus - Fila de Exames
    [Tags]    fila_exames
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Fila de Exames dentro do menu Select a cube
    E dê um clique em Tempo Médio em Dias Aguardando na Fila dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Tempo Médio em Dias Aguardando na Fila
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 9 - Verificar a tabela de dados do cubo Esus - Fila de Exames Subprocedimentos
    [Tags]    fila_exames_sub
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Fila de Exames Subprocedimentosdentro do menu Select a cube
    E dê um clique em Valor dos Subprocedimentos Agendados dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Valor dos Subprocedimentos Agendados
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 10 - Verificar a tabela de dados do cubo Esus - Fila de Internações
    [Tags]    fila_internacoes
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Fila de Internações dentro do menu Select a cube
    E dê um clique em Tempo Médio em Dias Aguardando na Fila dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Tempo Médio em Dias Aguardando na Fila
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 11 - Verificar a tabela de dados do cubo Esus - Internação
    [Tags]    internacao
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Internação dentro do menu Select a cube
    E dê um clique em Qtd de Internações dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Internações
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 12 - Verificar a tabela de dados do cubo Esus - Movimentação de Produtos
    [Tags]    mov_produtos
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Movimentação de Produtos dentro do menu Select a cube
    E dê um clique em Valor do Produto dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Valor do Produto
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 13 - Verificar a tabela de dados do cubo Esus - Paciente Dia internação
    [Tags]    paciente_dia
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Paciente Dia internação dentro do menu Select a cube
    E dê um clique em Qtd Pacientes/Dia dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd Pacientes/Dia
    E o último cliente da lista deve ser "Mangaratiba"

Cenário 14 - Verificar a tabela de dados do cubo Esus - Pendências da Fila de Consultas
    [Tags]    pendencias_fila_consultas
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Pendências da Fila de Consultas dentro do menu Select a cube
    E dê um clique em Qtd de Pacientes com Pendências dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Pacientes com Pendências
    
Cenário 15 - Verificar a tabela de dados do cubo Esus - Pendências da Fila de Exames
    [Tags]    pendencias_fila_exames
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Pendências da Fila de Exames dentro do menu Select a cube
    E dê um clique em Qtd de Pacientes com Pendências dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Pacientes com Pendências

Cenário 16 - Verificar a tabela de dados do cubo Esus - Situação Diária dos Leitos
    [Tags]    situacao_leitos
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Situação Diária dos Leitos dentro do menu Select a cube
    E dê um clique em Qtd de Leitos Operacionais/Dia dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Leitos Operacionais/Dia

Cenário 17 - Verificar a tabela de dados do cubo Esus - Situação da Fila de Consultas
    [Tags]    situacao_consultas
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Situação da Fila de Consultas dentro do menu Select a cube
    E dê um clique em Qtd de Pacientes Aguardando na Fila dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Pacientes Aguardando na Fila

Cenário 18 - Verificar a tabela de dados do cubo Esus - Situação da Fila de Exames
    [Tags]    situacao_exames
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Situação da Fila de Exames dentro do menu Select a cube
    E dê um clique em Qtd de Pacientes Aguardando na Fila dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Pacientes Aguardando na Fila

Cenário 19 - Verificar a tabela de dados do cubo Esus - Situação da Fila de Internação
    [Tags]    situacao_exames
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Situação da Fila de Internação dentro do menu Select a cube
    E dê um clique em Qtd de Pacientes Aguardando na Fila dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Pacientes Aguardando na Fila

Cenário 20 - Verificar a tabela de dados do cubo Esus - Situação de Leitos
    [Tags]    situacao_exames
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Situação de Leitos dentro do menu Select a cube
    E dê um clique em Qtd de Leitos dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Leitos

Cenário 21 - Verificar a tabela de dados do cubo Esus - Situação dos Atendimentos de Emergência
    [Tags]    situacao_exames
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Situação dos Atendimentos de Emergência dentro do menu Select a cube
    E dê um clique em Qtd de Atendimento de Emergência dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Atendimento de Emergência

Cenário 22 - Verificar a tabela de dados do cubo Esus - Situação dos Boletins de Emergência
    [Tags]    situacao_exames
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Situação dos Boletins de Emergência dentro do menu Select a cube
    E dê um clique em Qtd de Boletins de Emergência dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Boletins de Emergência

Cenário 23 - Verificar a tabela de dados do cubo Esus - Tranferências de Internações
    [Tags]    situacao_exames
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Tranferências de Internações dentro do menu Select a cube
    E dê um clique em Qtd de Movimentações dentro do menu Medidas
    Quando clicar em Cliente dentro do menu Dimensões > Cliente
    Então o sistema deve exibir a tabela de dados com as informações de Cliente e Qtd de Movimentações