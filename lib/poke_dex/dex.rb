class PokeDex::Dex 
attr_accessor :name, :gen, :type, :height, :weight, :phy

def self.scrape_pokemons 
  pokemons = []
  pokemons << self.scrape_bulbapedia 
  pokemons 
end 

def self.scrape_bulbapedia 
doc = Nokogiri::HTML(open("https://pokemon.fandom.com/wiki/Bulbasaur"))

dex_1 = self.new 
dex_1.name = doc.search("h1.page-header__title").text
dex_1.gen = doc.search("#mw-content-text > aside > section:nth-child(3) > section:nth-child(1) > section.pi-smart-group-body > div > a").text
dex_1.type =doc.search("span.t-type.type-grass").first.text
dex_1.height= doc.search("#mw-content-text > aside > section:nth-child(7) > section:nth-child(2) > section.pi-smart-group-body > div:nth-child(1) > span").text
dex_1.weight = doc.search("#mw-content-text > aside > section:nth-child(7) > section:nth-child(1) > section.pi-smart-group-body > div:nth-child(2) > span").text
dex_1.phy = doc.search("#mw-content-text > p:nth-child(9)").text

#divider
#######

doc_2= Nokogiri::HTML(open("https://pokemon.fandom.com/wiki/Pikachu"))

dex_2=self.new 
dex_2.name = doc_2.search("h1.page-header__title").first.text
dex_2.gen = doc_2.search("div.pi-section-content:nth-child(1) > section:nth-child(3) > section:nth-child(1) > section:nth-child(2) > div:nth-child(1) > a:nth-child(1)").text
dex_2.type = doc_2.search("span.t-type2").first.text
dex_2.height = doc_2.search("div.pi-section-content:nth-child(1) > section:nth-child(7) > section:nth-child(2) > section:nth-child(2) > div:nth-child(1) > span:nth-child(1)").text 
dex_2.weight = doc_2.search("div.pi-section-content:nth-child(1) > section:nth-child(7) > section:nth-child(1) > section:nth-child(2) > div:nth-child(2) > span:nth-child(1)").text
dex_2.phy = doc_2.search("#mw-content-text > p:nth-child(28)").text

#divider 
#####

doc_3 = Nokogiri::HTML(open("https://pokemon.fandom.com/wiki/Shuckle"))

dex_3 = self.new 
dex_3.name = doc_3.search("h1.page-header__title").first.text
dex_3.gen = doc_3.search("section.pi-group:nth-child(3) > section:nth-child(1) > section:nth-child(2) > div:nth-child(1) > a:nth-child(1)").text
dex_3.type = doc_3.search("span.t-type2").first.text
dex_3.height = doc_3.search("#mw-content-text > aside > section:nth-child(7) > section:nth-child(2) > section.pi-smart-group-body > div:nth-child(1) > span").text 
dex_3.weight = doc_3.search("#mw-content-text > aside > section:nth-child(7) > section:nth-child(1) > section.pi-smart-group-body > div:nth-child(2) > span").text
dex_3.phy = doc_3.search(".Bug > li:nth-child(4) > p:nth-child(2)").text

#divider
#### 
doc_4 = Nokogiri::HTML(open("https://pokemon.fandom.com/wiki/Mareep"))

dex_4 = self.new 
dex_4.name = doc_4.search("h1.page-header__title").first.text
dex_4.gen = doc_4.search("#mw-content-text > aside > section:nth-child(3) > section:nth-child(1) > section.pi-smart-group-body > div > a").text
dex_4.type = doc_4.search("span.t-type2").first.text
dex_4.height = doc_4.search("#mw-content-text > aside > section:nth-child(7) > section:nth-child(2) > section.pi-smart-group-body > div:nth-child(1) > span").text 
dex_4.weight = doc_4.search("#mw-content-text > aside > section:nth-child(7) > section:nth-child(1) > section.pi-smart-group-body > div:nth-child(2) > span").text
dex_4.phy = doc_4.search(".Electric > li:nth-child(1) > p:nth-child(2)").text

[dex_1,dex_2,dex_3,dex_4]
end
end
