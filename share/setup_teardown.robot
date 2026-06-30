*** Settings ***

Resource    ${CURDIR}/../common/main.resource

*** Variables ***
${OPTIONS_CHROME}    add_experimental_option("excludeSwitches",["enable-logging"]);add_argument("--disable-popup-blocking");add_argument("--no-sandbox");add_argument("--disable-web-security"); add_argument("--ignore-certificate-errors");add_argument("--allow-insecure-localhost");add_argument("--allow-cross-origin-auth-prompt")
${URL}    https://saudetest.a4pm.com.br/pentaho/Login
${URL_SGO}    https://saudesgo.a4pm.com.br/pentaho/Login

*** Keywords ***
abrir site
  Open Browser    ${URL}    chrome 
  Maximize Browser Window

fechar navegador
  Sleep  2s
  Close All Browsers

abrir site igorando erros de certificado
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --ignore-certificate-errors
    Open Browser    ${URL}    Chrome    options=${options}
    Maximize Browser Window

abrir site headless
    Open Browser    ${URL}    Chrome    options=add_argument("--headless");add_argument("--window-size=1920,1080")

abrir site saudesgo
    ${download_dir}=    Set Variable    ${EXECDIR}${/}downloads

    ${prefs}=    Create Dictionary
    ...    download.default_directory=${download_dir}
    ...    download.prompt_for_download=${False}
    ...    download.directory_upgrade=${True}
    ...    safebrowsing.enabled=${True}

    ${chrome_options}=    Evaluate    __import__('selenium').webdriver.ChromeOptions()
    Call Method    ${chrome_options}    add_experimental_option    prefs    ${prefs}

    Open Browser    ${URL_SGO}    chrome    options=${chrome_options}

    Maximize Browser Window