# frozen_string_literal: true

class AnswersController < ApplicationController
  before_action :authenticate_user!

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params)
    redirect_to question_path(@question)
  end

  def destroy
    id = params['id']
    Answer.destroy(id)
    redirect_to question_path(params['question_id']), notice: 'Answer deleted'
  end

  private

  def answer_params
    permitted = params.require(:answer).permit(:body)
    permitted.merge({ user_id: current_user.id })
  end
end
