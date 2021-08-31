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
    find('#nome').send_keys('Adicionar conta 10')
    find('.btn').click()
end

Então('minha conta é salva na lista de contas') do
    expect(page).to have_content 'Adicionar conta 10'
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

Quando('eu adiciono uma transação') do
    click_link 'Criar Movimentação'
    find('#data_transacao').send_keys('28/08/2021')
    find('#data_pagamento').send_keys('28/08/2021')
    find('#descricao').send_keys('Movimentação 1')
    find('#interessado').send_keys('Maria Clara')
    find('#valor').send_keys('120')
    select'Conta alterada', from: 'conta' 
    find('#status_pago').click()
    find('.btn').click()

  end
  
  Então('minha transação é salva na lista de transições com sucesso') do
    expect(page).to have_content 'Movimentação adicionada com sucesso!'
  end
