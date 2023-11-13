class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @input = params[:input]
    if @input == 'I am going to work'
      @input = 'Great!'

    elsif @input.end_with?('?')
      @input = 'Silly question, get dressed and go to work!'

    else
      @input = 'I don`t care, get dressed and go to work!'
    end
  end
end
