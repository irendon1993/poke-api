require 'json'
require 'open-uri'

poke_ids = (1..151).to_a

151.times do |index|
  poke_id = poke_ids[index]
  conn = Faraday.new("https://pokeapi.co")
  response = conn.get("/api/v2/pokemon/#{poke_id}/")
  @pokemonApi = JSON.parse(response.body, symbolize_names: true)
  new_poke = Pokemon.create(
    pokeid: @pokemonApi[:id],
    name: @pokemonApi[:name],
    iamgeurl: @pokemonApi[:sprites][:front_default],
    # type: @pokemonApi[:types].first[:type][:name].capitalize
  )
end
