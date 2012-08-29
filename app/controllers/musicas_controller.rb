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
end
