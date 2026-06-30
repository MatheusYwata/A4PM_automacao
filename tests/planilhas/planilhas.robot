*** Settings ***

Resource    ${CURDIR}/../../common/main.resource
Resource    ${CURDIR}/../../share/gherkin.robot
Resource    ${CURDIR}/../../share/setup_teardown.robot
Resource    ${CURDIR}/../../resource/resource_planilhas/planilhas.resource
Resource    ${CURDIR}/../../resource/resource_cubos/esus.resource


Test Setup      abrir site saudesgo
Test Teardown   fechar navegador

*** Test Cases ***

Cenário 1
    [Tags]    relatorio
    Dado que o usuário esteja na página de login da saudesgo e acesse com login válido
    E acesse o menu lateral
    E clique em Explorar Nova Análise
    E clique em Esus - Internação dentro do menu Select a cube
    E dê um clique em Qtd de Internações dentro do menu Medidas
    E clicar em Mês da Internação e Dia da Internação dentro do menu Dimensões > Data da Internação
    E clicar em Unidade de Saúde dentro do menu Dimensões > Unidade de Saúde
    E clicar em Setor dentro do menu Dimensões > Setor
    E clicar em Mês da Internação dentro da Linha
    E clicar no mês atual
    E clicar em OK
    E clicar na seta verde para rodar a query
    Quando o relatório for gerado com os dados corretos
    E clicar em exportar para Excel
    Então o relatório será exportado com sucesso