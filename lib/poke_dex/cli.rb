require './lib/poke_dex/dex'
class PokeDex::CLI
  
 def call
   list_pokemon
   menu
 end
 
 def list_pokemon
   @pokemons = PokeDex::Dex.all 
   @pokemons.each do |dex|   
     puts "1.#{dex.name}"
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