require './lib/poke_dex/dex'
class PokeDex::CLI
  
 def call
   list_pokemon
   menu
 end
 
 def list_pokemon
   @pokemons = PokeDex::Dex.scrape_pokemons 
     @pokemons.each do |dex_1,dex_2,dex_3,dex_4,dex_5| 
     puts "1.#{dex_1.name}"
     puts "2.#{dex_2.name}"
     puts "3.#{dex_3.name}"
     puts "4.#{dex_4.name}"
     puts "5.#{dex_5.name}"

      end
 end
 
  
def menu
  puts "Welcome to the Pokedex! Trainer, choose the Pokemon you'd like get more information on or enter quit to exit the Pokedex."
  input = gets.strip 
  if input == "1" 
    puts "Here is Bulbasaurs information:"
    puts "Bulbasaurs information"
    elsif input == "2" 
    puts "Here is Pikachus information:"
    puts "Pikachus information"
    elsif input == "3" 
    puts "Here is Shuckles information:"
    puts "Shuckles information"
    elsif input == "4" 
    puts "Here is Rolycolys information:"
    puts "Rolycolys information" 
    elsif input == "5" 
    puts "Here is Mareeps information"
    puts "Mareeps information"
    elsif input == "quit"
    quit
  else
    type_error
    puts ""
    call
  end
end

 def quit 
  puts ""
  puts "Thanks for using the Pokedex!"
end

def type_error 
  puts ""
  puts "Pokedex did not understand that command"
  
end

end