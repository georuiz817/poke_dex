class PokeDex::Dex 
attr_accessor :name, :gen, :type, :catch_rate

def self.all 
self.scrape_pokemons
end 


def self.scrape_pokemons 
  pokemons = []
  pokemons << self.scrape_bulbapedia 
  pokemons 
end 

def self.scrape_bulbapedia 
dex = self.new 
dex.name = "Bulbasaur"
dex.gen = "2"
dex.type ="Grass/Poision"
dex.catch_rate ="5%"

dex 
end
end
