
Quando('submeto meu usuario e senha {string} e {string}') do |email, password|
  visit '/'
  find('#input-28').set email
  find('#input-32').set password
  click_button 'ENTRAR'
  
end

Então('devo ser direcionado a área logada') do
    
end

E('devo ver {string} na área logada') do |expect_name|
  expect(page).to have_text ('Médicos')
end