Dado('que eu esteja logado') do
    visit '/'
    find('#email').send_keys('adria@teste.com')
    find('#senha').send_keys('123')
    find('.btn').click()
end

Quando('eu adiciono uma conta') do
    find('.dropdown-toggle').click()
    sleep(2)
    click_link 'Adicionar'
    find('#nome').send_keys('Adicionar conta 123')
    find('.btn').click()
    click_link 'Adicionar'
end

Então('minha conta é salva na lista de contas') do
    expect(page).to have_content 'Adicionar conta 123'
end

Quando('eu adiciono uma conta já existente') do
    find('.dropdown-toggle').click()
    click_link 'Adicionar'
    find('#nome').send_keys('Conta mesmo nome')
    find('.btn').click()
end

Então('não deve ser salva') do
    expect(page).to have_content 'Já existe uma conta com esse nome!'
end