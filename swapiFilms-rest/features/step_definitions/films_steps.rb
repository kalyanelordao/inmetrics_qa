def movie_has_director_producer(director, producer, title)  
    if director.eql?('George Lucas') && producer.include?('Rick McCallum')
      movies = title
    end
  end
   
  
def get_director_producer(url, lista)
    json_n = make_a_json(url + lista.to_s)
    director = json_n['director']
    producer = json_n['producer']
    title = json_n['title']
    
    movie_has_director_producer(director, producer, title)
end
   
   
Dado('que possuo a lista de filmes') do
    @url = 'https://swapi.co/api/films/'
    @json_films = HTTParty.get(@url)
    @all_films = make_a_json(@url)['count']
end
   

Quando('o filme tiver como diretor o George Lucas, e o Rick McCallum como produtor') do
    @movies_director_producer = []
   
      (1..@all_films).each do |lista|
        @movies_director_producer << get_director_producer(@url, lista)
    end
end
   

Entao('o sistema deve exibir o título do filme') do
  puts('Segue a lista de filmes com o diretor George Lucas e o produtor Rick McCallum:')
    @movies_director_producer.each do |lista|
      unless lista.nil?
        puts " " + lista
      end
    end
end