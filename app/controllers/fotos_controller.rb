class FotosController < InheritedResources::Base

  belongs_to :album

  def create
    create!(:notice => "Foto criada corretamente") { album_path(@foto.album_id) }
  end
  def destroy
    destroy!(:notice => "Foto apagada corretamente") { album_path(@foto.album_id) }
  end
end
