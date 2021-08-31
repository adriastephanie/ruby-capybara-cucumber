# ruby-capybara-cucumber
repositório de teste e2e utilizando linguagem ruby + capybara + cucumber


error: 

solucao: 
Terminal aberto
Navegue até o caminho em que seu arquivo chromedriver está localizado
Execute qualquer um dos comandos abaixo
Command1: xattr -d com.apple.quarantine <name-of-executable>

Exemplo

/usr/local/bin
$ xattr -d com.apple.quarantine chromedriver 


Mapeando elementos

Pclick_link 'Save'

# Faz o clique no Botão com o texto "awesome".
click_button 'awesome'
click_link 'awesome'

# Faz o clique no Botão passando a Class
click_button(class: 'nome_da_class')

# Faz o clique no Botão com o id 


# Faz o clique no Botão ou Link com texto "Save".
click_link_or_button 'Save'

# Preenche o texto com "Content" no campo "Name".
fill_in 'Name', with: 'Content'

# Seleciona o Checkbox
check 'Content'
# Remove a Seleção o Checkbox
uncheck 'Content'

# Selecionar o Radio button
choose 'Content'

# Seleciona a opção pela Texto "Label".
select 'Option', from: 'Label'


# Procura o elemento invisível pelo atributo id. 
find_by_id("hidden_via_ancestor", visible: false)


# Formatacao do cucumber no terminal 
 Para finalizar o setup crie um arquivo chamado “cucumber.yaml” na pasta raiz do projeto e ele deve conter a seguinte informações

 ---
default: --profile progress
pretty: --format pretty
progress: --format progress


A linha default altera o padrão default ao executarmos o comando “cucumber” no terminal, de tal maneira que toda vez que executamos “cucumber” na verdade estamos executando “cucumber” + todos os parâmetros inseridos na linha default. O formato --profile pretty sempre mostra uma tela agradavel passando a linguagem e os cenários. O formato --profile progress sempre forma mais reduzida, ideal para CI.

