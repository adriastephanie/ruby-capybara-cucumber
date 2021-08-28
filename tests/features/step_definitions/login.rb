Dado('que eu estou no site para logar') do
    visit '/'
end
  
Quando('informar o e-mail válido') do
    find('#email').send_keys('adria@teste.com')
    sleep(3)
end
  
Quando('informar o senha válido') do
    find('#senha').send_keys('123')
    find('.btn').click()
  end
  
  Então('o cliente é redirecionado ao sistema') do
    expect(page).to have_content 'Bem vindo, Adria!'
end

Quando('informar o e-mail inválido') do
    find('#email').send_keys('adria123@teste.com')
end

Quando('informar o senha inválido') do
    find('#senha').send_keys('1234567')
    find('.btn').click()
end

Então('o cliente não deve entrar no sistema') do
    expect(page).to have_content 'Problemas com o login do usuário'

end
  