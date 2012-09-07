Quando /^o video "(.*?)" existir$/ do |link|
  Video.new(:link => link).save!
end

Então /^deveria ver o video$/ do
  page.should have_xpath("//iframe")
end
