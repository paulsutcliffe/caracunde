class FotosController < InheritedResources::Base
  def create
    create!(:notice => "Foto criada corretamente")
  end
  def update
    update!(:notice => "Foto atualizada corretamente")
  end
  def destroy
    destroy!(:notice => "Foto apagada corretamente")
  end
end
