
# Desafio Agi automação validação pesquisa

Testes para validar o campo pesquisa do blog do Agi utilizando o Robot Framework com a biblioteca Selenium. Teste escrito na liguagem Gherkin
## :wrench: Ferramentas utilizadas

- Robot Framework
- Python
- Git
- Visual Studio Code
    
## :mag: Pluggins

- Selenium Library
- DateTime

## :computer: Instalação

Instalar o Pynthon superior a versão 3.6 e adicionar nas variavéis de ambinete
https://www.python.org/downloads/

Comando para instalação do Robot e Pluggins

```bash
pip install robotframework
pip install robotframework-seleniumlibary
```

## WebDrivers: Incluir a localização em sue ambiente Path (versão compatível com o seu navegador):
Para Google Chrome -------  https://chromedriver.chromium.org/downloads
Para Mozilla Firefox -----  https://github.com/mozilla/geckodriver/releases

## :computer: Preparando o Ambiente
Clone o projeto do GitHub em um diretório:

cd "seu diretorio"
git clone https://github.com/Jonathas92/Desafio_AGI.git

## :black_nib: Cenário de Testes

```bash
  Validação da funcionalidade pesquisar (Validar_Agi_Blog.robot)
  Validar se o texto do Placeholder de pesquisa é apresentando após limpeza do texto no campo (Validar_Agi_Blog.robot)
```

## :hourglass: Executando os testes.

Executar o arquivo run.bat para executar o teste ou executar o comando abaixo pelo terminal.

```bash
  robot -d .logs Tests\validar_pesquisa.robot
```
## 🚀 Autor
Jonathas Santos


## 🔗 Links
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](www.linkedin.com/in/jonathasbsantos)

