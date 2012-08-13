class PatrocinadoresController < InheritedResources::Base
  def create
    create!(:notice => "Patrocinador criado corretamente")
  end
  def update
    update!(:notice => "Patrocinador atualizado corretamente")
  end
  def destroy
    destroy!(:notice => "Patrocinador apagado corretamente")
  end
end
