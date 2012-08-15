Quando /^preencho os campos e adiciono uma foto$/ do
  fill_in("Nome", :with => "Paul")
  fill_in("Descrição", :with => "Estudo um ano de piano erudito")
  fill_in("País", :with => "Peru")
  path = "features/support/picture.jpg"
  attach_file("Foto", File.expand_path(path))
end

Então /^deveria ver a mesma informação que preenchei$/ do
  page.should have_content("Paul")
  page.should have_content("Estudo um ano de piano erudito")
  page.should have_content("Peru")
  page.should have_xpath("//img[contains(@src, \"picture.jpg\")]")
end

Quando /^o integrante "(.*?)" existir$/ do |nome|
  Integrante.new(:nome => nome, :descricao => "Estudo um ano de piano erudito", :pais => "peru").save!
end
