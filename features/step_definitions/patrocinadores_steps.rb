Quando /^preencho o link e adiciono o logo do patrocinador$/ do
  fill_in("Link", :with => "http://www.locaweb.com.br")
  attach_file("Logo", File.expand_path("features/support/picture.jpg"))
end

Então /^deveria ver o logo do patrocinador$/ do
  page.should have_xpath("//img[contains(@src, \"picture.jpg\")]")
end

Quando /^o patrocinador com o link "(.*?)" existir$/ do |link|
  Patrocinador.new(:link => link, :logo => File.new("features/support/picture.jpg", "r")).save!
end

Então /^não deveria ver o logo do patrocinador$/ do
  page.should have_no_xpath("//img[contains(@src, \"picture.jpg\")]")
end
