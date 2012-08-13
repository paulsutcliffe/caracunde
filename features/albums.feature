# language: pt
Funcionalidade: Albums
  A gente pode criar, editar e apagar albums de fotos

  Contexto:
    Dado que sou um novo e autenticado usuario

  Cenário: Criar um album
    Quando visito "/albums"
    E clico "Novo Album"
    E preencho "Nome" com "Concerto no SESC Santana"
    E pressiono "Salvar"
    Então deveria ver "Album criado corretamente"
    E deveria ver "Concerto no SESC Santana"

  Cenário: Editar um album
    Dado que o album "Concerto no SESC Santana" existir
    Quando visito "/albums"
    E clico "Editar"
    E preencho "Nome" com "Concerto no SESC Pompeia"
    E pressiono "Salvar"
    Então deveria ver "Album atualizado corretamente"
    E deveria ver "Concerto no SESC Pompeia"

  Cenário: Apagar um album
    Dado que o album "Concerto no SESC Santana" existir
    Quando visito "/albums"
    E clico "Apagar"
    Então deveria ver "Album apagado corretamente"
    E não deveria ver "Concerto no SESC Santana"
