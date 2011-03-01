Dado /^que estou na pagina inicial$/ do
  visit "/"
end

Dado /^preencho o campo "([^"]*)" com "([^"]*)"$/ do |campo, valor|
  fill_in(campo, :with => valor)
end

Dado /^clico no botao "([^"]*)"$/ do |botao|
  click_button(botao)
end

Entao /^eu deveria ver "([^"]*)"$/ do |texto|
  page.should have_content(texto)
end

Dado /^que os seguintes carros existem:$/ do |tabela|
  # table is a Cucumber::Ast::Table
  tabela.hashes.each do |hash|
  	carro = Carro.new(hash)
  	carro.save
  end
end

Dado /^clico no link "([^"]*)"$/ do |link|
  click_link(link)
end

Entao /^o rss deve ser:$/ do |text|
  page.body.gsub(/[\n\s]/,'').should == text.gsub(/[\n\s]/,'')
end

Dado /^que existe o usuario:$/ do |tabela|
  tabela.hashes.each do |hash|
    hash.merge! :password_confirmation => hash[:password]
    User.create! hash
  end
end

Dado /^estou logado como "([^"]*)"$/ do |email|
  User.create! :email                 => 'herminio@herminio.com.br',
               :password              => '123456',
               :password_confirmation => '123456'
  click_link('Login')
  fill_in('user[email]',    :with => 'herminio@herminio.com.br')
  fill_in('user[password]', :with => '123456')
  click_button 'Sign in'
end