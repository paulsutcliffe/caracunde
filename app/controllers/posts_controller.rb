class PostsController < InheritedResources::Base
  before_filter :authenticate_usuario!, :except => [:index, :show]
  def create
    create!(:notice => "Post criado corretamente")
  end
  def update
    update!(:notice => "Post atualizado corretamente")
  end
  def destroy
    destroy!(:notice => "Post apagado corretamente")
  end
  protected
    def collection
      @posts ||= end_of_association_chain.order("created_at DESC").paginate(:page => params[:page], :per_page => 6)
    end
end
