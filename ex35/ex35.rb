def prompt
  puts "> "
end

def end_game(why)
  puts "#{why}. GAME OVER! (If you enjoyed this game please give me money)."
  Process.exit(0)
end    

def start
  puts "You walk into Makers Academy early in the morning."
  puts "You can either get straight to work or grab some breakfast in the kitchen."
  puts "Type 'left' to go to the kitchen or 'right' to get straight to work."

  while true
    prompt; next_move = gets.chomp

    if next_move == "left"
      kitchen
    elsif next_move == "right"
      work_station
    else
      puts "I CLEARLY SAID TYPE 'LEFT' OR 'RIGHT', IDIOT!"
    end
  end  
end

def kitchen
  puts "You enter the kitchen."
  puts "Unfortunately Ana hasn't done the shopping so you only have a choice of museli or a banana."
  puts "Type 'banana' to pick the banana, or 'museli' to pour yourself some cereal."

  more_breakfast = false

  while true
    prompt; pick = gets.chomp
    if pick == "banana" && !more_breakfast
      puts "Tasty, huh?"
      puts "Would you like another? If so, type 'banana' again"
      puts "Otherwise type 'work' to get started with your days coding."
      more_breakfast = true
    elsif pick == "banana" && more_breakfast
      end_game("You die from obesity")
    elsif pick == "museli"
      end_game("Turns out you have a nut alergy and you die.")
    elsif pick == "work"
      work_station
    else
      puts "I SAID TYPE 'BANANA', 'MUSELI' OR 'WORK', IDIOT!"
    end    
  end    
end  

def work_station
  "You sit down at your terminal"
  end_game("You work hard all day")
end 

start       