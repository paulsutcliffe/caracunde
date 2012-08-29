class AlbumsController < InheritedResources::Base
 before_filter :authenticate_usuario!, :except => [:index] 
 # def index
   # @albums = Albums.paginate(:page => params[:page], :per_page => 6)
  #end
  def create
    create!(:notice => "Album criado corretamente")
  end
  def update
    update!(:notice => "Album atualizado corretamente")
  end
  def destroy
    destroy!(:notice => "Album apagado corretamente")
  end
end
