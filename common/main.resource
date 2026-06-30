*** Settings ***

Library    SeleniumLibrary
Library    Collections
Library    OperatingSystem

*** Variables ***

${LOGIN_VALIDO}    admin
${SENHA_VALIDA}    A4PM!@25BI!@

${LOGIN_VALIDO_SGO}    admin
${SENHA_VALIDA_SGO}    M!HyI1Ky@I79GP

*** Keywords ***
Validar Download CSV
    Wait Until Keyword Succeeds
    ...    20s
    ...    1s
    ...    CSV Deve Existir

CSV Deve Existir
    ${arquivos}=    List Files In Directory
    ...    ${EXECDIR}${/}downloads
    ...    pattern=*.csv

    Should Not Be Empty    ${arquivos}
    Length Should Be    ${arquivos}    1

Limpar Downloads
    ${arquivos}=    List Files In Directory    ${EXECDIR}${/}downloads

    FOR    ${arquivo}    IN    @{arquivos}
        Remove File    ${EXECDIR}${/}downloads${/}${arquivo}
    END