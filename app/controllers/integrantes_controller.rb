class IntegrantesController < InheritedResources::Base
  def create
    create!(:notice => "Integrante criado corretamente")
  end
  def update
    update!(:notice => "Integrante atualizado corretamente")
  end
  def destroy
    destroy!(:notice => "Integrante apagado corretamente")
  end
end
