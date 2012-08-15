Quando /^o video "(.*?)" existir$/ do |link|
  Video.new(:link => link).save!
end
