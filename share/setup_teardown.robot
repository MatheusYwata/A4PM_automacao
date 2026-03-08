*** Settings ***

Resource    ${CURDIR}/../common/main.resource

*** Variables ***
${OPTIONS_CHROME}    add_experimental_option("excludeSwitches",["enable-logging"]);add_argument("--disable-popup-blocking");add_argument("--no-sandbox");add_argument("--disable-web-security"); add_argument("--ignore-certificate-errors");add_argument("--allow-insecure-localhost");add_argument("--allow-cross-origin-auth-prompt")


*** Keywords ***
abrir site
  Open Browser    https://saudetest.a4pm.com.br/pentaho/Login    chrome 
  Maximize Browser Window

fechar navegador
  Sleep  2s
  Close All Browsers

