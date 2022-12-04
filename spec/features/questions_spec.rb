# frozen_string_literal: true

require 'rails_helper'

describe 'asking questions' do
  before(:each) { log_in }

  scenario 'asking a question' do
    expect(Question.count).to eq 0

    click_on 'Ask question'

    fill_in 'Title', with: 'Maths title'
    fill_in 'Body', with: 'Maths body'

    click_on 'Create Question'

    expect(Question.count).to eq 1
    expect(Question.last.title).to eq 'Maths title'
    expect(Question.last.body).to eq 'Maths body'

    # redirects on successful create, hence 200 OK
    expect(page.status_code).to eq 200
  end

  scenario 'asking incomplete question (missing body)' do
    click_on 'Ask question'
    fill_in 'Title', with: 'Maths title'
    click_on 'Create Question'

    expect(Question.count).to eq 0
    expect(page.status_code).to eq 422
  end
end

describe 'questions list' do
  before(:each) { log_in }

  scenario 'seeing list of questions asked' do
    create(:question, title: 'half-life 3 coming out?', body: 'hl3?')
    visit '/'
    click_on 'Previous questions'
    expect(page).to have_content 'half-life 3 coming out?'
  end
end

def log_in
  user = create(:user)
  visit '/'
  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password
  click_on 'Log in'
end
