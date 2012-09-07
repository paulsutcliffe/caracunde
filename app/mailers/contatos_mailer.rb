class ContatosMailer < ActionMailer::Base
  default :from => "info@caracunde.com"

  def confirmacao_de_contato(contato)
    @contato = contato
    mail(:to => "info@caracunde.com", :subject => "Mensagem da web")
  end

  def notificacao_de_contato(contato)
    @contato = contato
    mail(:to => "#{contato.nome} <#{contato.email}>", :subject => "Mensagem Enviada Caracunde")
  end
end
