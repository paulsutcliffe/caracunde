# language: pt
Funcionalidade: Criar, editar e apagar integrantes
  Contexto:
    Dado que sou um novo e autenticado usuario

  Cenário: Criar um novo integrante
    Quando visito "/integrantes"
    E clico "Novo Integrante"
    E preencho os campos e adiciono uma foto
    Quando pressiono "Salvar"
    Então deveria ver "Integrante criado corretamente"
    E deveria ver a mesma informação que preenchei

  Cenário: Editar um integrante
    Quando o integrante "Paul" existir
    E visito "/integrantes"
    E clico "Editar"
    E preencho "Nome" com "Luis Armando"
    Quando pressiono "Salvar"
    Então deveria ver "Integrante atualizado corretamente"
    E deveria ver "Luis Armando"

  Cenário: Apagar um integrante
    Quando o integrante "Paul" existir
    E visito "/integrantes"
    E clico "Apagar"
    Então deveria ver "Integrante apagado corretamente"
    E não deveria ver "Paul"
