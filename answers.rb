# Magic 8 ball answers

#Need class x
#use an array to store answers x
#randomly select answer when user inputs a question x
#easter egg - allow for user to enter new answer x
#cannot be the same as already existing ones x
#ability to reset to original bank-- arr.clone x
#print all the answers via an easter egg question print_answers x

class Answers 

def initialize
    @response = response #question asked by user
    @answers_arr = 
    [
     "Yes",
     "No",
     "It is unclear at the moment",
     "I'm sorry I don't understand the question",
     "You don't want to know"
     "Concentrate and ask again"
     "The force is not with you"
     "May the force be with you"
     ]
     @reset_arr = answers_arr.map(&:clone)
end

def response(answers_arr)
    @answers.sample(response)
end #end for response (responding to question)

#what question and where is input coming from?
def add_new
  puts "Please add a new answer of your own"
  new_input = gets.strip
  dup_answer(new_input)
  @answers_arr << new_input
end #end add new answers
 
#added below code to main.rb- having issues getting to remote repo
  def dup_answer(new_input)
    @answer.each do |item|
        if item == new_input
            puts "That answer already exists!"
        end #end if
end #end do loop
    end #end dup_answer



#what question will trigger this? where is input from?
def reset_ans
  puts "Resetting answers!"
   @answers_arr = reset_arr(&:clone)
end # end reset

#question?  Give me all the answers! 
def print_answers
  @answers_arr.each do |all|
    puts "here are all the answers!"
    puts "#{all}"
end #end for print answers

end #class end
