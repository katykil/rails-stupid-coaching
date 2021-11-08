class QuestionsController < ApplicationController
  def ask
    # do we need to define an instance variable (@) here?
  end

  def answer # does it need a message argument?
    message = params[:message]
    if message == 'I am going to work'
      @answer = 'Great!'
    elsif params[:message][-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
