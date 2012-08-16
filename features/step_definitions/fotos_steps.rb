Quando /^a foto "(.*?)" existir$/ do |foto|
  Foto.new(:album_id => 1, :foto => File.new("features/support/#{foto}", "r")).save!
end
