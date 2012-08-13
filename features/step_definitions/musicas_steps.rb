Quando /^preencho "(.*?)" com:$/ do |campo, embed|
  fill_in(campo, :with => embed)
end

Dado /^que a musica "(.*?)" existir$/ do |musica|
  musica = '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="http://w.soundcloud.com/player/?url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F17097085&show_artwork=true"></iframe>'
  Musica.new(:soundcloud => musica).save!
end
