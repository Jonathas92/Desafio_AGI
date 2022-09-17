*** Settings ***
Resource    ../Pages/base.robot
Resource    ../Pages/Agi_Steps.robot
Resource    ../Pages/Variables.robot

Test Setup      Nova sessao 
Test Teardown   Encerra sessao

***Variables***
${MASSA_TEXT_PESQUISA}      Teste

*** Test Cases ***

Validação da funcionalidade pesquisar
    [Tags]      ValidarPesquisa

    Dado que acesso a página do blog do Agi
    Quando aciono o botão de pesquisa
    E realizo a pesquisa
    Então é retornado o minha pesquisa com o texto digitado na pesquisa

Validar se o texto do Placeholder de pesquisa é apresentando após limpeza do texto no campo
    Dado que acesso a página do blog do Agi
    Quando aciono o botão de pesquisa
    E realizo a limpeza do campo pesquisa
    Então valido se a mensagem de placeholder está exibindo corretamente

