Dado('que eu estou no site para cadastrar') do
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
  
Então('o cliente é cadastrado no sistema') do
    expect(page).to have_content 'Bem vindo, Adria!'
end
  