*** Settings ***
Library     SeleniumLibrary
Library           DateTime

*** Variables ***
${URL}              https://blogdoagi.com.br/
${BROWSER}          chrome

*** Keywords ***
Nova sessao    
    Open Browser                    ${url}     ${BROWSER}       options=add_argument("--window-size=1920,1080")
    #Maximize Browser Window

    #Pegar data atual e mover evidencias para a pasta
    ${DATA_ATUAL}=                      Get Current Date                                                  result_format=%d.%m.%Y_%H%M
    Set Suite Variable                  ${DATA_ATUAL}
    Set Screenshot Directory           Evidencia\\${DATA_ATUAL}

Encerra sessao
    Capture Page Screenshot
    Close Browser

Verify Placeholder
    [Arguments]     ${locator}      ${placeholder}
    [Documentation]     Verifica se o elemento identificado pelo localizador possui o atributo placeholder com valor de placeholder.
    ${attr}     Get Element Attribute    ${locator}     placeholder
    Should Be Equal     ${attr}     ${placeholder}