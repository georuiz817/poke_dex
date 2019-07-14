require './lib/poke_dex/dex'
module PokeDex::Extra 
   def level_one
   @pokemons = PokeDex::Dex.scrape_pokemons
   @pokemons.each do |dex_1,dex_2,dex_3,dex_4,dex_5| 
   input = gets.strip 
   case input
    when "1"
    puts "Name: #{dex_1.name}"
    puts "Generation: #{dex_1.gen}"
    puts "Type: #{dex_1.type}"
    puts ""
    level_2
    
    when "2" 
    puts "Name: #{dex_2.name}"
    puts "Generation: #{dex_2.gen}"
    puts "Type: #{dex_2.type}"
    level_2
    
    when "3"
      puts "Name: #{dex_3.name}"
      puts "Generation: #{dex_3.gen}"
      puts "Type: #{dex_3.type}"
     level_2
    
     when "quit"
       quit
   else  
   puts "Error wrong input refreshing"
   puts""
   list_pokemon
   menu 
  end
end
end

def level_2
puts "Would you like to go back and view additional pokemon?(y/n)"
input = gets.strip
case input
when "y"
list_pokemon
menu 
when "n"
quit
else
puts "I did not understand that command"
level_2
  end
end


  
  
end