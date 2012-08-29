class SlidesController < InheritedResources::Base
  before_filter :authenticate_usuario!
  def create
    create!(:notice => "Slide criado corretamente")
  end
  def update
    update!(:notice => "Slide atualizado corretamente")
  end
  def destroy
    destroy!(:notice => "Slide apagado corretamente")
  end
end
