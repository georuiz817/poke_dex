class PokeDex::Dex 
attr_accessor :name, :gen, :type, :catch_rate

def self.scrape_pokemons 
  pokemons = []
  pokemons << self.scrape_bulbapedia 
  pokemons 
end 

def self.scrape_bulbapedia 
doc = Nokogiri::HTML(open("https://pokemon.fandom.com/wiki/Bulbasaur"))
dex_1 = self.new 
dex_1.name = doc.search("h1.page-header__title").text.strip
dex_1.gen = doc.search("span#Behavior.mw-headline").text.strip
dex_1.type =doc.search("span.t-type.type-grass").first.text.strip
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




[dex_1,dex_2,dex_3]
end
end
