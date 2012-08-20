class VideosController < InheritedResources::Base
  
  def index
    @videos = Video.paginate(:page => params[:page], :per_page => 6)
  end
  def create
    create!(:notice => "Video criado corretamente")
  end
  def update
    update!(:notice => "Video atualizado corretamente")
  end
  def destroy
    destroy!(:notice => "Video apagado corretamente")
  end
end
