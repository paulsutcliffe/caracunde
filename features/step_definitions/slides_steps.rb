Quando /^adiciono a foto "(.*?)"$/ do |foto|
  attach_file("Foto", File.expand_path("features/support/#{foto}"))
end

Então /^deveria ver a foto "(.*?)"$/ do |foto|
  page.should have_xpath("//img[contains(@src, \"#{foto}\")]")
end

Quando /^o slide "(.*?)" existir$/ do |foto|
  Slide.new(:slide => File.new("features/support/#{foto}", "r")).save!
end

Então /^não deveria ver a foto "(.*?)"$/ do |foto|
  page.should have_no_xpath("//img[contains(@src, \"#{foto}\")]")
end
