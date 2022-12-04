# frozen_string_literal: true

class QuestionsController < ApplicationController
  before_action :authenticate_user!

  def new
    @question = Question.new
  end

  def create
    permitted_params = params.require(:question).permit(:title, :body)
    params = permitted_params.merge({ user_id: current_user.id, votes: 0 })
    question = Question.new(params)

    if question.save
      redirect_to '/'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @questions = Question.all
  end
end
