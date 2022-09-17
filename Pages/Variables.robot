*** Settings ***
Library     SeleniumLibrary
***Variables***
######################MassaTeste#########################
${MASSA_TEXT_PESQUISA}      Teste
######################ElementoPagina#####################
${VALIDACAO_PAGINA_INICIAL}     xpath://h1/a[text()="Blog do Agi"]
${BOTAO_LUPA}                   css=button[id='search-open']
${VALIDAR_PLACEHOLDER}          xpath:(//input[@placeholder='Pesquisar …'])[1]
${TEXTO_PESQUISA}               xpath:(//input[@class='search-field'])[1]
${BOTAO_PESQUISA}               xpath://div[@class="desktop-search"]/form/input[@class="search-submit"]