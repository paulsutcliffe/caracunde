class ContatosController < InheritedResources::Base
  before_filter :authenticate_usuario!, :only => [:index, :edit, :show ]

  def create
    @contato = Contato.new(params[:contato])
    ContatosMailer.confirmacao_de_contato(@contato).deliver
    ContatosMailer.notificacao_de_contato(@contato).deliver
    create!(:notice => "Sua mensagem foi enviada corretamente"){ new_contato_path }
  end
  def update
    update!(:notice => "Contato atualizado corretamente")
  end
  def destroy
    destroy!(:notice => "Contato apagado corretamente")
  end
  protected
    def collection
      @contatos ||= end_of_association_chain.order("created_at DESC").paginate(:page => params[:page], :per_page => 24)
    end
end
