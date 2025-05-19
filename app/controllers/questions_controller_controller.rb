class QuestionsControllerController < ApplicationController
  @laReponse = ""

  def ask
   
  end

  def answer
    if params[:question]
      @laQuestion = params[:question]
      if @laQuestion == 'I am going to work'
        @laReponse  = "Great!"
      elsif @laQuestion[@laQuestion.length-1] == "?"
        @laReponse  = "Silly question, get dressed and go to work!"
      else
        @laReponse  = "I don't care, get dressed and go to work!"
      end
    end
  end
end
