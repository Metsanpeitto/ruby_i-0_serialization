module Display


def game_start_text
    w = %Q(        
                  Welcome to Hangman               
              
       ---    To start playing press a key   ---
  
  )
  puts w
end    


def game_text 
puts "What letter would you like to try? (Type 'Save' iy you want to save the game)"
end  

def game_text_response_negative(l) 
puts "The letter #{l} does not appear in the secret word"
end   

def game_text_response_positive(l) 
puts "The letter #{l} does appear in the secret word"
end 

def game_text_count(c)
puts "You have #{11 - c} tries left"
end    

def game_text_word(w)
puts "Your word until now => #{w}"    
end    

def game_text_lose 
puts "YOU LOSE !"
end 

def game_text_win
puts "YOU WIN !"
end 

def game_text_save
puts "Press Y to save the game"
end 

def game_text_saved
puts "Your game has been saved succesfully !"
end

def game_text_save_name
puts "Please enter the name for this session"
end  

def game_text_open
puts "Would you like to open a saved game ? Press Y to open it"
end   

def game_text_open_name
puts "Type the name of the saved game that you want to play"
end

def game_text_open_done
puts "The game was succesfully loaded. Enjoy !"  
end    



def drawing_10 
    w =  %Q(    
            
            
            
            
            
         ___ ___
)
puts w
end

def drawing_9 
    w = %Q(   

            |      
            |      
            |     
            |    
            |
         ___|___
)
puts w
end

def drawing_8 
    w = %Q(     
            ________
            |     
            |      
            |     
            |     
            |
         ___|___
)
puts w
end


def drawing_7 
    w = %Q(     
            ________
            |      |
            |      
            |     
            |    
            |
         ___|___
)
puts w
end

def drawing_6
    w  = %Q(   
            ________
            |      |
            |      O
            |     
            |     
            |
         ___|___
)
puts w
end

def drawing_5
    w  = %Q( 
            ________
            |      |
            |      O
            |      |
            |     
            |
         ___|___
)
puts w
end

def drawing_4 
    w = %Q( 
            ________
            |      |
            |      O
            |      |\
            |     
            |
         ___|___
)
puts w
end

def drawing_3 
    w = %Q( 
            ________
            |      |
            |      O
            |     /|\
            |     
            |
         ___|___
)
puts w
end

def drawing_2 
    w = %Q( 
            ________
            |      |
            |      O
            |     /|\
            |     /
            |
         ___|___
)
puts w
end

def drawing_1 
    w = %Q( 
---+---    GAME  OVER   ---+---
            ________
            |      |
            |      O
            |     /|\
            |     / \
            |
         ___|___
)
puts w
end

end