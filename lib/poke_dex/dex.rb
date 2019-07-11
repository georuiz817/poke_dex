class PokeDex::Dex 
attr_accessor :name, :gen, :type, :catch_rate

def self.scrape_pokemons 
  pokemons = []
  pokemons << self.scrape_bulbapedia 
  pokemons 
end 

def self.scrape_bulbapedia 
doc = Nokogiri::HTML(open("https://bulbapedia.bulbagarden.net/wiki/Bulbasaur_(Pok%C3%A9mon)"))
dex_1 = self.new 
dex_1.name = "bulbasaur"
dex_1.gen = "2"
dex_1.type ="Grass/Poision"
dex_1.catch_rate ="5%"

dex_2=self.new 
dex_2.name = "Pikachu"
dex_2.gen = "1"
dex_2.type = "Electric"
dex_2.catch_rate = "33%"

dex_3 = self.new 
dex_3.name = "Shuckle"
dex_3.gen = "2"
dex_3.type = "Ground"
dex_3.catch_rate = "10%"

dex_4 = self.new 
dex_4.name ="Rolycoly"
dex_4.gen = "8"
dex_4.type = "Ground"
dex_4.catch_rate ="unknown"

dex_5 = self.new 
dex_5.name = "Sheep"
dex_5.gen ="2"
dex_5.type = "Electric"
dex_5.catch_rate = "10%"


[dex_1,dex_2,dex_3,dex_4,dex_5]
end
end
