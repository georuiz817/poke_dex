class PokeDex::Dex 
attr_accessor :name, :gen, :type

def self.scrape_pokemons 
  pokemons = []
  pokemons << self.scrape_bulbapedia 
  pokemons 
end 

def self.scrape_bulbapedia 
doc = Nokogiri::HTML(open("https://pokemon.fandom.com/wiki/Bulbasaur"))
dex_1 = self.new 
dex_1.name = doc.search("h1.page-header__title").text.strip
dex_1.gen = doc.search("#mw-content-text > aside > section:nth-child(3) > section:nth-child(1) > section.pi-smart-group-body > div > a").text.strip
dex_1.type =doc.search("span.t-type.type-grass").first.text.strip

#divider
#######

doc_2= Nokogiri::HTML(open("https://pokemon.fandom.com/wiki/Pikachu"))
dex_2=self.new 
dex_2.name = doc_2.search("h1.page-header__title").first.text.strip
dex_2.gen = doc_2.search("#mw-content-text > aside > section:nth-child(3) > section:nth-child(1) > section.pi-smart-group-body > div > a").text.strip
dex_2.type = doc_2.search("span.t-type2").first.text.strip


#divider 
#####

doc_3 = Nokogiri::HTML(open("https://pokemon.fandom.com/wiki/Shuckle"))
dex_3 = self.new 
dex_3.name = doc_3.search("h1.page-header__title").first.text.strip
dex_3.gen = doc_3.search("#mw-content-text > p:nth-child(2) > a:nth-child(8)").text.strip
dex_3.type = doc_3.search("span.t-type2").first.text.strip





[dex_1,dex_2,dex_3]
end
end
