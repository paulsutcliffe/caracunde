# language: pt
Funcionalidade: Adicionar e apagar fotos
  Contexto:
    Dado que sou um novo e autenticado usuario
    E que o album "Concerto no SESC Santana" existir
    Quando visito "/albums"
    E clico "Concerto no SESC Santana"

  Cenário: Adicionar uma foto
    Dado que deveria ver "Album vazio"
    Quando clico "Adicionar Foto"
    E adiciono a foto "picture.jpg"
    E pressiono "Salvar"
    Então deveria ver "Foto criada corretamente"
    E deveria ver a foto "picture.jpg"

  Cenário: Apagando uma foto
    Quando a foto "picture.jpg" existir
    E visito "/albums"
    E clico "Concerto no SESC Santana"
    E clico "Apagar"
    Então deveria ver "Foto apagada corretamente"
    E não deveria ver a foto "picture.jpg"
