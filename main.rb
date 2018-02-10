require "pry"

@answer = ["yes", "no", "maybe so", "ask again", "doubt it", "what do you think?", "I don't see that happening"]

def ask
  puts ""
  puts ""
  puts "Welcome to the Magic 8 Ball!"
puts "please ask a question or say exit to leave or edit to make changes"
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
    elsif answer == "edit"
      edit
    else
      puts ""
    end
puts ""
puts "your answer is..."
puts @answer.sample
puts""
askagain
end



def edit
  puts ""
  puts "Type ADD to add additional words, SEE ALL to view answers, or BACK to go back"
  function = gets.strip.upcase
  case function
    when "ADD"
      dup_answer
      edit
    when "SEE ALL"
      puts @answer
      edit
    when "BACK"
      ask
    else
      puts "Try Again"
        edit
    end
  end


  def dup_answer
    newanswer = gets.strip
     # @answer.each do |item|
     #     if item == newanswer
     #         puts "That answer already exists!"
     #       else
             @answer << newanswer
       # end
  # end
end

  ask
