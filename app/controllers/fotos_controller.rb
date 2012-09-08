class FotosController < InheritedResources::Base

  belongs_to :album

  def create
    create!(:notice => "Foto criada corretamente") { album_path(@foto.album_id) }
  end
  def destroy
    destroy!(:notice => "Foto apagada corretamente") { album_path(@foto.album_id) }
  end
  protected
    def collection
      @fotos ||= end_of_association_chain.order("created_at DESC").paginate(:page => params[:page], :per_page => 12)
    end
end
