require 'pry'
@answer = ["yes", "no", "maybe so", "ask again", "doubt it", "what do you think?", "I don't see that happening"]

def ask
  puts ""
  puts ""
  puts "Welcome to the Magic 8 Ball!"
puts "please ask a question or say exit to leave"
puts ""
answer
end

def askagain
  puts ""
  puts ""
puts "Ask another question (exit to leave)"
puts ""
answer
end

def answer
  answer = gets.strip.downcase
    if answer == "exit"
      exit
    elsif answer == "add"
      newanswer = gets.strip
      @answer << newanswer
      askagain
    else
      puts ""
    end
puts ""
puts "your answer is..."
puts @answer.sample
puts""
askagain
end

ask
