class Video < ActiveRecord::Base
  
  auto_html_for :link do
      youtube(:width => 270, :height => 270)
      link :target => "_blank", :rel => "nofollow"
      simple_format
  end
end
