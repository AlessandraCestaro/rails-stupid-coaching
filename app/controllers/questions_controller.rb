class QuestionsController < ApplicationController
  ANSWERS = {
    1 => { sentence: "Great!"},
    2 => { sentence: "Silly question, get dressed and go to work!"},
    3 => { sentence: "I don't care, get dressed and go to work"},
  }

  def home
  end

  def ask
  end

  def answer
    # raise
    @message = params[:message]
    if @message == 'I am going to work'
      @answer = ANSWERS[1][:sentence]
    elsif @message[-1] == '?'
      @answer = ANSWERS[2][:sentence]
    else
      @answer = ANSWERS[3][:sentence]
    end
  end
end
