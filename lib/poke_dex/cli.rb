require './lib/poke_dex/dex'
require './lib/poke_dex/extra'
class PokeDex::CLI
include PokeDex::Extra 
 
 def call
   list_pokemon
   menu
 end

 def list_pokemon
   @pokemons = PokeDex::Dex.scrape_pokemons 
     @pokemons.each do |dex_1,dex_2,dex_3,dex_4| 
     puts <<~DOC
     1.#{dex_1.name}
     2.#{dex_2.name}
     3.#{dex_3.name}
     4.#{dex_4.name}
     DOC
  end
 end
 
  
def menu
 puts "Welcome to the Pokedex! Trainer, choose the # of the Pokemon you'd like get more information on or enter quit."
  level_one
 end
 
  def quit 
  puts ""
  puts "Thanks for using the Pokedex!"
end
   


end