# language : pt


Funcionalidade: Consultar filmes
    Eu como internauta 
    Posso consultar filmes através da API
    Para filtrar filmes desejados

        Cenario: Consulta de filmes via API
        Dado que eu faça uma requisição
        Quando eu receber a resposta do JSON
        Então o status de resposta deve ser 200

        Cenário: Filmes com o diretor George Lucas e tendo o Rick McCallum como produtor
        Dado    que possuo a lista de filmes
        Quando  o filme tiver como diretor o George Lucas, e o Rick McCallum como produtor
        Entao   o sistema deve exibir o título do filme