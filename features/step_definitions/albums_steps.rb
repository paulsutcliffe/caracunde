Dado /^que sou um novo e autenticado usuario$/ do
  email = 'alvaro@caracunde.com'
  password = 'caracunde'
  Usuario.new(:email => email, :password => password, :password_confirmation => password).save!

  visit '/usuarios/ingressar'
  fill_in "E-mail", :with => email
  fill_in "Senha", :with => password
  click_button "Ingressar"
end

Quando /^visito "(.*?)"$/ do |pagina|
  visit(pagina)
end

Quando /^clico "(.*?)"$/ do |link|
  click_link(link)
end

Quando /^preencho "(.*?)" com "(.*?)"$/ do |campo, valor|
  fill_in(campo, :with => valor)
end

Quando /^pressiono "(.*?)"$/ do |botao|
  click_button(botao)
end

Então /^(?:deveria|que deveria) ver "(.*?)"$/ do |resultado|
  page.should have_content(resultado)
end

Dado /^que o album "(.*?)" existir$/ do |album|
  Album.new(:nome => album).save!
end

Então /^não deveria ver "(.*?)"$/ do |resultado|
  page.should have_no_content(resultado)
end
