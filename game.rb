require_relative 'display.rb'
require_relative 'logic.rb'



class Game
  include Display

  def initialize   
   $word_secret = get_word
   $word_player = []
   $try_counter = 10
   $fails = 0
   $win_flag = false
   start_game
  end    
 
end  

def start_game  
  puts game_start_text

  stroke = gets.chomp
  if stroke
    open_game
    setup_game
    play_game
  end  
end

