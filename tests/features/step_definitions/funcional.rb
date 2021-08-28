Dado('que eu esteja logado') do
    visit '/'
    find('#email').send_keys('adria@teste.com')
    find('#senha').send_keys('123')
    find('.btn').click()
end

Quando('eu adiciono uma conta') do
    find('.dropdown-toggle').click()
    click_link 'Adicionar'
end

Então('minha conta é salva na lista de contas') do
    find('#nome').send_keys('Teste de Conta')
    find('.btn').click()
    expect(page).to have_content 'Teste de Conta'
end