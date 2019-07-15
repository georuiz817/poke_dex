require './lib/poke_dex/dex'
module PokeDex::Extra 
   def level_one
   @pokemons = PokeDex::Dex.scrape_pokemons
   @pokemons.each do |dex_1,dex_2,dex_3,dex_4| 
   input = gets.strip 
   case input
    when "1"
    puts <<~DOC
    Name: #{dex_1.name}
    Generation: #{dex_1.gen}
    Type: #{dex_1.type}
    Height: #{dex_1.height}
    Weight: #{dex_1.weight}
    Physiology: #{dex_1.phy}
    DOC
    level_2
    
    when "2" 
    puts <<~DOC 
    Name: #{dex_2.name}
    Generation: #{dex_2.gen}
    Type: #{dex_2.type}
    Height: #{dex_2.height}
    Weight: #{dex_2.weight}
    Physiology: #{dex_2.phy}
    DOC
    level_2
    
    when "3"
      puts <<~DOC 
      Name: #{dex_3.name}
      Generation: #{dex_3.gen}
      Type: #{dex_3.type}
      Height: #{dex_3.height}
      Weight: #{dex_3.weight}
      Physiology: #{dex_3.phy}
      DOC
     level_2
     
     when "4"
      puts <<~DOC
      Name: #{dex_4.name}
      Generation: #{dex_4.gen}
      Type: #{dex_4.type}
      Height: #{dex_4.height}
      Weight: #{dex_4.weight}
      Physiology: #{dex_4.phy}
      DOC
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
puts""
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