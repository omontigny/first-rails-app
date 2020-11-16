class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # TODO: return coach answer to your_message
    # If the message is a question (contains ? )
    @question = params[:question]
    if @question.capitalize == "I am going to work right now!"
      @answer = "Great!"
    elsif @question.include? '?'
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

# def coach_answer_enhanced(your_message)
#   # TODO: return coach answer to your_message, with additional custom rules of yours!
#   # user motivation variable to show addtionam message if shooting or not
#   motivation = ""
#   return "" if your_message.capitalize == "I am going to work right now!"

#   if your_message.include? '?'
#     motivation = "I can feel your motivation! " if your_message == your_message.upcase
#     return "#{motivation}Silly question, get dressed and go to work!"
#   end

#   motivation = "I can feel your motivation! " if your_message == your_message.upcase
#   return "#{motivation}I don't care, get dressed and go to work!"
# end

end
