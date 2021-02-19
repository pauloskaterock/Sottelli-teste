Dado('que acesso a pagina') do
    visit 'https://viacep.com.br/'
end
  
Quando('submeto com minhas credenciais na url') do

    visit 'https://viacep.com.br/ws/01001000/json/'
    
    page.assert_text('Jardim Guapituba')
    expect(page.assert_text('Jardim Guapituba')).to eq true
end
  
Então('devo aparecer na tela minhas informações de acordo com o cep') do
    page.has_text?('"ibge": "3550308"')
    expect(page.has_text?('"ibge": "3550308"')).to eq true
end
  
Quando('passo meu cep') do
    visit 'https://viacep.com.br/ws/01001000/json/'
end
  
Então('devo aparecer na tela minhas informações') do
    page.has_text?('"ibge": "3550308"')
    expect(page.has_text?('"ibge": "3550308"')).to eq true
   
end