class MusicasController < InheritedResources::Base
  before_filter :authenticate_usuario!, :except => [:index]
  def create
    create!(:notice => "Musica criada corretamente")
  end
  def update
    update!(:notice => "Musica atualizada corretamente")
  end
  def destroy
    destroy!(:notice => "Musica apagada corretamente")
  end
  protected
    def collection
      @musicas ||= end_of_association_chain.order("created_at DESC").paginate(:page => params[:page], :per_page => 6)
    end
end
