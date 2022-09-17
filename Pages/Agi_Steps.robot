*** Settings ***
Library     SeleniumLibrary
Resource    base.robot
Resource    Variables.robot

***Keywords***
##########################DADO##################################
Dado que acesso a página do blog do Agi
    Wait Until Page Contains Element     ${VALIDACAO_PAGINA_INICIAL}       timeout=10 seconds
    Capture Page Screenshot

##########################QUANDO##################################
Quando aciono o botão de pesquisa
    Wait Until Page Contains Element     ${BOTAO_LUPA}                     timeout=10 seconds
    Click Element                        ${BOTAO_LUPA}
    Capture Page Screenshot

##########################E#######################################
E realizo a pesquisa
    Wait Until Page Contains Element    ${VALIDAR_PLACEHOLDER}             timeout=10 seconds
    Input Text                          ${TEXTO_PESQUISA}                  ${MASSA_TEXT_PESQUISA}
    Click Element                       ${BOTAO_PESQUISA}
    Capture Page Screenshot

E realizo a limpeza do campo pesquisa
    Input Text                          ${TEXTO_PESQUISA}                  ${MASSA_TEXT_PESQUISA}
    Clear Element Text                  ${TEXTO_PESQUISA}
    Capture Page Screenshot   

##########################ENTÃO##################################
Então é retornado o minha pesquisa com o texto digitado na pesquisa
    Wait Until Page Contains Element    xpath://h1/span[text()="${MASSA_TEXT_PESQUISA}"]
    Capture Page Screenshot

Então valido se a mensagem de placeholder está exibindo corretamente
    Verify Placeholder                  ${VALIDAR_PLACEHOLDER}             Pesquisar …
    Capture Page Screenshot