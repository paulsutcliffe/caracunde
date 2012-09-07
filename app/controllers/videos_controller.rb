class VideosController < InheritedResources::Base
  before_filter :authenticate_usuario!, :except => [:index]  
  def index
    @videos = Video.paginate(:page => params[:page], :per_page => 6)
  end
  def create
    create!(:notice => "Video criado corretamente"){ videos_path }
  end
  def update
    update!(:notice => "Video atualizado corretamente"){ videos_path }
  end
  def destroy
    destroy!(:notice => "Video apagado corretamente") { videos_path }
  end
end
