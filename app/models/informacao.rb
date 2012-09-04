class Informacao < ActiveRecord::Base
  translates :seo_text, :video

  auto_html_for :video do
    youtube(:width => 420, :height => 315)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end

end
