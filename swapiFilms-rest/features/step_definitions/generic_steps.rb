def make_a_json(url)
  http_result = HTTParty.get(url)
  json_object = JSON.parse(http_result.body)
end

Dado('que eu faça uma requisição') do
    @url = 'https://swapi.co/api/films/'
    @resposta = HTTParty.get(@url)
  end
  
Quando('eu receber a resposta do JSON') do
  @json_de_resposta = make_a_json(@url)
end
  
Entao('o status de resposta deve ser {int}') do |int|
  expect(@resposta.code).to eq 200
end
  
Entao('o sistema deve exibir mensagem {string}') do |string|
  puts 'HTTP response: 200 (ok)!'
end