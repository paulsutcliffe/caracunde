class IntegrantesController < InheritedResources::Base
  before_filter :authenticate_usuario!, :except => [:index, :show]
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
