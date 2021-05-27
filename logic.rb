def get_word
 file = File.open("5desk.txt")
 file_data = file.readlines.map(&:chomp)
 file.close
 length_dictionary = file_data.length
 word_found = false
 word = nil

 while word_found == false 
   index = rand(length_dictionary)
   wo = file_data[index]
   if wo.length > 5 &&  wo.length < 12
     word_str = wo
     word_found = true
     word =  word_str.split("")
   end  
 end
 return word
end 


def setup_game
  for index in 0..$word_secret.length - 1
   $word_player.push("_ ")
  end  
end  

def play_game
  while $win_flag == false && $fails <= 10
    puts game_text
    letter = gets.chomp.downcase
    if letter == "save"  
      save_game
    end    
    exists = $word_secret.include? letter

    if exists == true
       indexes = []
       $word_secret.each_with_index do |l,index|
         if l == letter
          indexes.push(index)
         end         
       end         
       indexes.each do |i|      
        $word_player[i] = letter
       end        
       puts game_text_response_positive(letter) 
    else  
       $fails = $fails + 1
       puts game_text_response_negative(letter)
       drawing     
    end 
    puts game_text_word($word_player)

    if $word_secret == $word_player
       $win_flag = true
    end   

    puts game_text_count($fails)
  end 
  
  if $win_flag == true && $fails <= 9
    puts game_text_win
  else
    puts game_text_lose  
  end  
end 


def save_game
 puts game_text_save
 response = gets.chomp

 if response.downcase == "y"
     puts game_text_save_name
     name = gets.chomp
      game = {:name => name ,
              :word_secret => $word_secret,
              :word_player => $word_player,
              :fails => $fails
            }
     #File.write("saved.txt" , "#{game}/n")
     File.open("saved.txt","a+") { |f| f.puts(game) }

     puts game_text_saved
 end   
end 

def open_game
  puts game_text_open
  open_flag = gets.chomp.downcase
  if open_flag == "y"
    games = []
    loaded_game = nil
   
  File.foreach("saved.txt") { |game|
      games.push(eval(game))      
   }
  names = []
  games.each do |g|
    names.push(g[:name])
  end 

  puts names
  puts game_text_open_name 
  name_wanted = gets.chomp.downcase
  
  games.each do |g|
    if g[:name] == name_wanted
       loaded_game = g
    end  
  end 
  
  $word_secret = loaded_game[:word_secret]
  $word_player = loaded_game[:word_player]
  $fails = loaded_game[:fails]
  puts game_text_open_done

  end
end    


def drawing
    counter = 11 - $fails
    case counter
    when 10 
        puts drawing_10 
    when 9
        puts drawing_9 
    when 8
        puts drawing_8  
    when 7
        puts drawing_7  
    when 6
        puts drawing_6 
    when 5
        puts drawing_5          
    when 4
        puts drawing_4          
    when 3
        puts drawing_3  
    when 2
        puts drawing_2  
    when 1
        puts drawing_1  
    end    
end    
