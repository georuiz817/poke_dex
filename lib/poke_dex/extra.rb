require './lib/poke_dex/dex'
module PokeDex::Extra 
   def level_one
   @pokemons = PokeDex::Dex.scrape_pokemons
   @pokemons.each do |dex_1,dex_2,dex_3,dex_4,dex_5| 
   input = gets.strip 
   case input
    when "1"
    puts "name: #{dex_1.name}"
    puts "generation: #{dex_1.gen}"
    puts "type: #{dex_1.type}"
    puts "catch rate: #{dex_1.catch_rate}"
    puts ""
    level_2
    
    when "2" 
    puts "name: #{dex_2.name}"
    puts "genereation: #{dex_2.gen}"
    puts "type: #{dex_2.type}"
    puts "catch rate: #{dex_2.catch_rate}"
    level_2
    
    when "3"
      puts "name: #{dex_3.name}"
      puts "genereation: #{dex_3.gen}"
      puts "type: #{dex_3.type}"
      puts "catch rate: #{dex_3.catch_rate}"
     level_2
    
    when "4"
      puts "name: #{dex_4.name}"
      puts "genereation: #{dex_4.gen}"
      puts "type: #{dex_4.type}"
      puts "catch rate: #{dex_4.catch_rate}"
     level_2
      
    when "5"
      puts "name: #{dex_5.name}"
      puts "genereation: #{dex_5.gen}"
      puts "type: #{dex_5.type}"
      puts "catch rate: #{dex_5.catch_rate}"
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