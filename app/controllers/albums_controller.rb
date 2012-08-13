class AlbumsController < InheritedResources::Base
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
