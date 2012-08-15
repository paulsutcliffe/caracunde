# language: pt
Funcionalidade: Os visitantes podem ver slides, duas noticias e quatro patrocinadores
  Cenário: Ver landing page
    Quando o slide "picture.jpg" existir
    E o post "Concerto no SESC Santana" existir
    E o post "Concerto no SESC Pompeia" existir
    E o patrocinador com o link "http://www.locaweb.com.br" existir
    E o patrocinador com o link "http://www.agenciaclick.com.br" existir
    E o patrocinador com o link "http://www.turmadamonica.com.br" existir
    E o patrocinador com o link "http://www.gransapore.com.br" existir
    Quando visito "/"
    Então deveria ver a foto "picture.jpg"
    E deveria ver "Concerto no SESC Santana"
    E deveria ver o link "http://www.locaweb.com.br"
    E deveria ver o link "http://www.agenciaclick.com.br"
    E deveria ver o link "http://www.turmadamonica.com.br"
    E deveria ver o link "http://www.gransapore.com.br"
