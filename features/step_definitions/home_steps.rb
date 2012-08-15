Então /^deveria ver o link "(.*?)"$/ do |link|
  page.should have_xpath("//a[contains(@href, \"#{link}\")]")
end
