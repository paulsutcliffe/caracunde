Dado /^não estou autenticado$/ do
  visit("/usuarios/sair")
end

Quando /^preencho tudos os campos corretamente$/ do
  fill_in("Nome", :with => "Paul")
  fill_in("E-mail", :with => "paul@paulyoyo.com")
  fill_in("Telefone", :with => "998355383")
  fill_in("Mensagem", :with => "Oi, tudo bem?")
end

Dado /^existe uma mensagem$/ do
  Contato.new(:nome => "Paul", :email => "paul@paulyoyo.com", :telefone => "998355383", :mensagem => "Oi, tudo bem?").save!
end

Então /^deveria ver a mensagem e os dados da pesoa$/ do
  page.should have_content("Paul")
  page.should have_content("paul@paulyoyo.com")
  page.should have_content("998355383")
  page.should have_content("Oi, tudo bem?")
end

