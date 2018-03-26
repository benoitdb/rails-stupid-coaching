class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end

  ANSWERS = [
    { id: 1, answer: 'Great!' },
    { id: 2, answer: 'Silly question, get dressed and go to work!' },
    { id: 3, answer: "I don't care, get dressed and go to work!" }
  ]

  def answer
    @question = params[:question]

    if params[:question] == 'I am going to work'
      @answer = ANSWERS.find { |answer| answer[:id] == 1 }
    elsif params[:question].include? '?'
      @answer = ANSWERS.find { |answer| answer[:id] == 2 }
    else
      @answer = ANSWERS.find { |answer| answer[:id] == 3 }
    end
  end
end
