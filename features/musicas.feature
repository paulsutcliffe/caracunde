# language: pt
Funcionalidade: Musicas
  A gente pode criar, editar e apagar reprodutores de soundcloud na website

  Contexto:
    Dado que sou um novo e autenticado usuario

  Cenário: Criar um reprodutor de soundcloud
    Quando visito "/musicas"
    E clico "Nova Musica"
    E preencho "Soundcloud" com:
    """
    <iframe width="100%" height="166" scrolling="no" frameborder="no" src="http://w.soundcloud.com/player/?url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F17097085&show_artwork=true"></iframe>
    """
    E pressiono "Salvar"
    Então deveria ver "Musica criada corretamente"

  Cenário: Editar uma musica
    Dado que a musica "Caracunde" existir
    Quando visito "/musicas"
    E clico "Editar"
    E preencho "Soundcloud" com:
    """
    <iframe width="100%" height="166" scrolling="no" frameborder="no" src="http://w.soundcloud.com/player/?url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F17682308&show_artwork=true"></iframe>
    """
    E pressiono "Salvar"
    Então deveria ver "Musica atualizada corretamente"

  Cenário: Apagar uma musica
    Dado que a musica "Caracunde" existir
    Quando visito "/musicas"
    E clico "Apagar"
    Então deveria ver "Musica apagada corretamente"
