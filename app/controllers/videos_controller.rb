class VideosController < InheritedResources::Base
  before_filter :authenticate_usuario!, :except => [:index]

  def create
    create!(:notice => "Video criado corretamente"){ videos_path }
  end
  def update
    update!(:notice => "Video atualizado corretamente"){ videos_path }
  end
  def destroy
    destroy!(:notice => "Video apagado corretamente") { videos_path }
  end
  protected
    def collection
      @videos ||= end_of_association_chain.order("created_at DESC").paginate(:page => params[:page], :per_page => 6)
    end
end
