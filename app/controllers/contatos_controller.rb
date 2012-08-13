class ContatosController < InheritedResources::Base
  def create
    create!(:notice => "Contato criado corretamente")
  end
  def update
    update!(:notice => "Contato atualizado corretamente")
  end
  def destroy
    destroy!(:notice => "Contato apagado corretamente")
  end
end
