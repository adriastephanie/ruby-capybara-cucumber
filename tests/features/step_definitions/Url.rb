Quando('eu acesso a url') do
    @home = Url.new
    @home.load
    sleep(1)
end

Então('eu verifico se a url está correta') do
    expect(page).to have_current_path('https://seubarriga.wcaquino.me/login', url: true)
end