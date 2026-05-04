*** Settings ***

Resource    ${CURDIR}/../../common/main.resource
Resource    ${CURDIR}/../../share/gherkin.robot
Resource    ${CURDIR}/../../share/setup_teardown.robot
Resource    ${CURDIR}/../../resource/resource_relatorios/atencao_basica.resource


Test Setup      abrir site igorando erros de certificado
Test Teardown   fechar navegador

*** Test Cases ***

Cenário 1 - Verificar Acompanhamento de Gestantes
    [Tags]    acomp_gestantes
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Acompanhamento de Gestantes
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 2 - Verificar Acompanhamento de Diabéticos
    [Tags]    acomp_diabeticos
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Acompanhamento de Diabéticos
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 3 - Verificar Acompanhamento de Hipertensos
    [Tags]    acomp_hipertensos
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Acompanhamento de Hipertensos
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 4 - Verificar Acompanhamento de Visita Domiciliar
    [Tags]    acomp_domiciliar
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Acompanhamento de Visita Domiciliar
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 5 - Verificar Acompanhamento de Visita Domiciliar Simplificado
    [Tags]    acomp_domiciliar_simplif
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Acompanhamento de Visita Domiciliar Simplificado
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 6 - Verificar Atendimentos sem Cadastro em AB
    [Tags]    atend_sem_cad
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Atendimentos sem Cadastro em AB
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 7 - Verificar Acompanhamento Citopatológico
    [Tags]    acomp_cito
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Acompanhamento Citopatológico
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 8 - Verificar Cadastro Ativo por Unidade e Idade
    [Tags]    cad_un_idade
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Cadastro Ativo por Unidade e Idade
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 9 - Verificar Cadastro de Hipertensos com PA Aferida
    [Tags]    hipert_pa
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Cadastro de Hipertensos com Pa Aferida
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 10 - Verificar Cadastro Individual Nominal
    [Tags]    cad_indiv_nom
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Cadastro Individual Nominal
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 11 - Verificar Gestantes Ativas
    [Tags]    gest_ativas
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Gestantes Ativas
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 12 - Verificar Gestantes com exame de HIV e Sífilis avaliados
    [Tags]    gest_hiv
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Gestantes com exame de HIV e Sífilis avaliados
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 13 - Verificar Indicadores Atenção Básica - Cadastro
    [Tags]    indic_cadastro
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Indicadores Atenção Básica - Cadastro
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 14 - Verificar Indicadores Atenção Básica - Consultas
    [Tags]    indic_consultas
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Indicadores Atenção Básica - Consultas
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 15 - Verificar Indicadores Atenção Básica - Gestantes 
    [Tags]    indic_gestantes
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Indicadores Atenção Básica - Gestantes
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 16 - Verificar Indicadores Atenção Básica - Resumo
    [Tags]    indic_resumo
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Indicadores Atenção Básica - Resumo
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 17 - Verificar Nominal de Condições de Saúde
    [Tags]    nom_condicoes
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Nominal de Condições de Saúde
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 18 - Verificar Pacientes Diabéticos Insulino Dependentes
    [Tags]    diabeticos_dep
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Pacientes Diabéticos Insulino Dependentes
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 19 - Verificar Pacientes Hipertensos e Diabéticos por Faixa etária
    [Tags]    hiper_diab_idade
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Pacientes Hipertensos e Diabéticos por Faixa etária
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 20 - Verificar Pacientes Hipertensos e Diabéticos por sexo
    [Tags]    hiper_diab_sexo
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Pacientes Hipertensos e Diabéticos por sexo
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 21 - Verificar Primeira Consulta de Gestante
    [Tags]    primeira_gest
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Primeira Consulta de Gestante
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 22 - Verificar Produtividade dos Agentes Comunitários de Saúde
    [Tags]    produtiv_agentes
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Produtividade dos Agentes Comunitários de Saúde
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 23 - Verificar Produtividade de Equipe
    [Tags]    produtiv_equipe
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Produtividade de Equipe
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções

Cenário 24 - Verificar Produtividade Sintético
    [Tags]    produtiv_sintetico
    Dado que o usuário esteja na página de login e acesse com login válido
    E acesse o menu lateral
    E clique em Relatórios
    E clique em Atenção Básica - Novo
    E clique em Produtividade Sintético
    Quando clicar na seleção de Código do Cliente
    Então Mangaratiba deve aparecer entre as opções