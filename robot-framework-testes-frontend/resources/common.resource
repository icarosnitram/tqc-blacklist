*** Settings ***
Library    SeleniumLibrary
Resource   ../config/dev.robot

*** Keywords ***
Abrir Navegador
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --window-size\=1920,1080
    Open Browser    ${BASE_URL_UI}    chrome    options=${chrome_options}

Fechar Navegador
    Close Browser

    # ajuste headless