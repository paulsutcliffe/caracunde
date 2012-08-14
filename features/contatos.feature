# language: pt
Funcionalidade: Os visitantes podem enviar mensagems para o email do administrador

  Cenário: Enviar mensagem
    Dado não estou autenticado
    Quando visito "/contatos/new"
    E preencho tudos os campos corretamente
    E pressiono "Enviar"
    Então deveria ver "Sua mensagem foi enviada corretamente"

  Cenário: Ler os mensagem desde o website
    Dado que sou um novo e autenticado usuario
    E existe uma mensagem
    Quando visito "/contatos"
    Então deveria ver a mensagem e os dados da pesoa
