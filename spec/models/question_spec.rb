# frozen_string_literal: true

require 'rails_helper'

describe Question, type: :model do
  it 'is valid with valid attributes' do
    question = Question.new(title: 'some-title', body: 'some-body')
    expect(question).to be_valid
  end

  it 'is invalid with missing title' do
    question = Question.new(body: 'some-body')
    expect(question).to_not be_valid
  end

  it 'is invalid with missing body' do
    question = Question.new(title: 'some-title')
    expect(question).to_not be_valid
  end

  it 'is invalid with title larger than 100 chars' do
    title = 't' * 200
    question = Question.new(title:, body: 'some-body')
    expect(question).to_not be_valid
  end
end
