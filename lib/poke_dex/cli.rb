class PokeDex::CLI
  
 def call
   start
 end
  
  
  def start 
    puts "Welcome to the Pokedex! Type menu to view the encyclopedia of Pokemon"
    input = gets.strip
    if input == "menu"
      puts ""
     menu
   elsif input == "quit"
   quit 
   else
     puts "I did not understand that command"
      puts " "
      call
  end
end


  
  def menu
  puts "Trainer, choose the Pokemon you'd like get more information on or press exit to quit the Pokedex."
  end



def quit 
  puts ""
  puts "Thanks for using the Pokedex!"
end


end