class PostsController < InheritedResources::Base
  def create
    create!(:notice => "Post criado corretamente")
  end
  def update
    update!(:notice => "Post atualizado corretamente")
  end
  def destroy
    destroy!(:notice => "Post apagado corretamente")
  end
end
