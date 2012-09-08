class AlbumsController < InheritedResources::Base
  before_filter :authenticate_usuario!, :except => [:index, :show]

  def create
    create!(:notice => "Album criado corretamente")
  end
  def update
    update!(:notice => "Album atualizado corretamente")
  end
  def destroy
    destroy!(:notice => "Album apagado corretamente")
  end
  protected
    def collection
      @albums ||= end_of_association_chain.order("created_at DESC").paginate(:page => params[:page], :per_page => 6)
    end
end
