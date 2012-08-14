Quando /^escrivo um post e adiciono uma foto$/ do
  fill_in("Título", :with => "Concerto no SESC Santana")
  fill_in("Conteudo", :with => "Vamos a dar um concerto muito legal de musica afro peruana")
  path = "features/support/picture.jpg"
  attach_file("Foto", File.expand_path(path))
end

Então /^deveria ver o post e a foto$/ do
  page.should have_content("Concerto no SESC Santana")
  page.should have_content("Vamos a dar um concerto muito legal de musica afro peruana")
  page.should have_xpath("//img[contains(@src, \"picture.jpg\")]")
end

Quando /^o post "(.*?)" existir$/ do |titulo|
  Post.new(:titulo => "Concerto no SESC Santana", :conteudo => "Vamos a dar un concerto muito legal de musica afro peruana").save!
end

