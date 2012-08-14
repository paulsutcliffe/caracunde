# language: pt
Funcionalidade: Criar, editar e apagar posts no blog
  Contexto:
    Dado que sou um novo e autenticado usuario

  Cenário: Criar um novo post
    Quando visito "/posts"
    E clico "Novo Post"
    E escrivo um post e adiciono uma foto
    Quando pressiono "Salvar"
    Então deveria ver "Post criado corretamente"
    E deveria ver o post e a foto

  Cenário: Editar um post
    Quando o post "Concerto no SESC Santana" existir
    E visito "/posts"
    E clico "Editar"
    E preencho "Título" com "Concerto no SESC Pompeia"
    Quando pressiono "Salvar"
    Então deveria ver "Post atualizado corretamente"
    E deveria ver "Concerto no SESC Pompeia"

  Cenário: Apagar um post
    Quando o post "Concerto no SESC Santana" existir
    E visito "/posts"
    E clico "Apagar"
    Então deveria ver "Post apagado corretamente"
    E não deveria ver "Concerto no SESC Santana"

