class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question]
    @stupid = coach(@answer)
  end

  def coach(answer)
    if answer == "I am going to work"
      return "Great!"
    elsif answer.split('').last == "?"
      return "Silly question, get dressed and go to work!"
    else
       return "I don't care, get dressed and go to work!"
    end
  end


end

