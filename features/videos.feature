# language: pt
Funcionalidade: Criar, editar e apagar videos
  Contexto:
    Dado que sou um novo e autenticado usuario

  Cenário: Criar um novo video
    Quando visito "/videos"
    E clico "Novo Video"
    E preencho "Link" com "http://www.youtube.com/watch?v=8pJwClS1TeQ"
    Quando pressiono "Salvar"
    Então deveria ver "Video criado corretamente"
    E deveria ver o video
  
  Cenário: Editar um video
    Quando o video "http://www.youtube.com/watch?v=8pJwClS1TeQ" existir
    E visito "/videos"
    E clico "Editar"
    E preencho "Link" com "http://www.youtube.com/watch?v=oZhPL603bdk"
    Quando pressiono "Salvar"
    Então deveria ver "Video atualizado corretamente"
    E deveria ver o video

  Cenário: Apagar um video
    Quando o video "http://www.youtube.com/watch?v=8pJwClS1TeQ" existir
    E visito "/videos"
    E clico "Apagar"
    Então deveria ver "Video apagado corretamente"
