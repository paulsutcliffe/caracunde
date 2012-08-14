# language: pt
Funcionalidade: Criar, editar e apagar posts slides
  Contexto:
    Dado que sou um novo e autenticado usuario

  Cenário: Criar um novo slide
    Quando visito "/slides"
    E clico "Novo Slide"
    E adiciono a foto "picture.jpg"
    Quando pressiono "Salvar"
    Então deveria ver "Slide criado corretamente"
    E deveria ver a foto "picture.jpg"

  Cenário: Editar um slide
    Quando o slide "picture.jpg" existir
    E visito "/slides"
    E clico "Editar"
    E adiciono a foto "picture.jpg"
    Quando pressiono "Salvar"
    Então deveria ver "Slide atualizado corretamente"
    E deveria ver a foto "picture.jpg"

  Cenário: Apagar um slide
    Quando o slide "picture.jpg" existir
    E visito "/slides"
    E clico "Apagar"
    Então deveria ver "Slide apagado corretamente"
    E não deveria ver a foto "picture.jpg"
