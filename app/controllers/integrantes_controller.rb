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
  protected
    def collection
      @integrantes ||= end_of_association_chain.order("created_at DESC")
    end
end
