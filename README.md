# ruby-capybara-cucumber
## _Repositório de estudo de cucumber, capybara e ruby_


- Interagir com os principais elementos.
- Organizar os códigos tornando-os mais legíveis, reusáveis e fáceis de manter.
- Aprender a gerar relatórios

# Contexto 

## Ruby: 
linguagem dinâmica, open source com foco na simplicidade e na produtividade. Tem uma sintaxe elegante de leitura natural e fácil escrita.

## Capybara: 
ajuda você a testar aplicações web, simulando como um usuário real. Abstrai a conexão entre o navegador e o código, utilizando um “driver” para fazer isso.

## RSpec: 
é uma biblioteca que permite que se utilize asserções para validar os resultados das ações que realizamos. Nos ajuda a validar que o comportamento esperado foi obtido.

## Cucumber:
emprega o Behavior-Driven Development (é uma técnica de desenvolvimento ágil que visa integrar regras de negócios com linguagem de programação, focando o comportamento do software).

## SitePrism:
fornece um DSL (Domain Specific Language, uma linguagem de programação dedicada a um domínio de problema particular) simples, limpo e semântico para descrever seu site usando o padrão Page Objects (que serve como interface para simular a interação do usuário com os elementos de tela), em conjunto com Capybara para executar testes automatizados.


### Erro no Mac ao abrir o driver

solucao: 
Terminal aberto
Navegue até o caminho em que seu arquivo chromedriver está localizado
Execute qualquer um dos comandos abaixo


```sh
Command1: xattr -d com.apple.quarantine <name-of-executable>
```

Exemplo:

```sh
/usr/local/bin
$ xattr -d com.apple.quarantine chromedrive / geckodriver 
```

# Execução 

```sh
cd tests/
cucumber
```

> A linha vai executar todos os testes

```sh
cd tests/
cucumber -t@nome_tag
```

> A linha vai executar somente o teste com a tag passada


# Elementos

## buscar elementos

busca pelo id => find('#teste')

busca pelo id => find_by_id('teste')

busca pelo oprimeiro elemento que contenha o elemento mapeado => find_button(class: 'btn-nome-class')

## buscar elementos combobox, dropbox e autocomplete

buscar por class => find('.btn.dropdown-button').click

busca pelo id => find('#dropdown3').click

busca pelo id passando a opcao/value => select 'Brasilia', from: 'dropdown'

busca pelo id passando a opcao/value:

find('#autocomplete-input').set 'Rio de Jane'
find('ul', text: 'Rio de Janeiro').click

## buscar elementos radio e checkbox

busca pelo label => find('label[for="carro"]').click

busca pelo id => check('id_screen').click

marcar pela busca do id e o click está na label => check('id_screen', allow_label_click: true)

marcar pela busca do id e o click está na label => uncheck('purple', allow_label_click: true)

marcar radio pela busca do id e o click está na label => choose('label', allow_label_click: true)

## Asserts 

page.assert_text(text, 'Bem vindo!')
page.has_text?('Bem vindo!')
have_text('Bem vindo!)


# Formatação do cucumber no terminal 
 Para finalizar o setup crie um arquivo chamado “cucumber.yaml” na pasta raiz do projeto e ele deve conter a seguinte informações.

 ---
default: --profile progress
pretty: --format pretty
progress: --format progress


> A linha default altera o padrão default ao executarmos o comando “cucumber” no terminal, de tal maneira que toda vez que executamos “cucumber” na verdade estamos executando “cucumber” + todos os parâmetros inseridos na linha default. O formato --profile pretty sempre mostra uma tela agradavel passando a linguagem e os cenários. O formato --profile progress sempre forma mais reduzida, ideal para CI.

# Criação do Arquivo de ambientes
{em construção}
