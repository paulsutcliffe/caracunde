class MusicasController < InheritedResources::Base
  def create
    create!(:notice => "Musica criada corretamente")
  end
  def update
    update!(:notice => "Musica atualizada corretamente")
  end
  def destroy
    destroy!(:notice => "Musica apagada corretamente")
  end
end
