# language: pt
Funcionalidade: Criar, editar e apagar patrocinadores
  Contexto:
    Dado que sou um novo e autenticado usuario

  Cenário: Criar um novo patrocinador
    Quando visito "/patrocinadores"
    E clico "Novo Patrocinador"
    E preencho o link e adiciono o logo do patrocinador
    Quando pressiono "Salvar"
    Então deveria ver "Patrocinador criado corretamente"
    E deveria ver o logo do patrocinador

  Cenário: Editar um patrocinador
    Quando o patrocinador com o link "http://www.locaweb.com.br" existir
    E visito "/patrocinadores"
    E clico "Editar"
    E preencho o link e adiciono o logo do patrocinador
    Quando pressiono "Salvar"
    Então deveria ver "Patrocinador atualizado corretamente"
    E deveria ver o logo do patrocinador

  Cenário: Apagar um patrocinador
    Quando o patrocinador com o link "http://www.locaweb.com.br" existir
    E visito "/patrocinadores"
    E clico "Apagar"
    Então deveria ver "Patrocinador apagado corretamente"
    E não deveria ver o logo do patrocinador
