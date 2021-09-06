class Cadastro < SitePrism::Page
    set_url '/cadastro'

    element :nome, '#nome' 
    element :email, '#email'
    element :senha, '#senha'
    element :btn_criar, '.btn'


    def preencher_formulario
        nome.set 'Maria Clara'
        email.set 'mariaclara11@teste.com'
        senha.set '123456'
        btn_criar.click
        
    end

    def preencher_formulario_conta_existente
        nome.set 'Maria Clara'
        email.set 'mariaclara5@teste.com'
        senha.set '123456'
        btn_criar.click
        
    end
    
end