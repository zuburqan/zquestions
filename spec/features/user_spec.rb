# frozen_string_literal: true

require 'rails_helper'

describe 'User signing up' do
  scenario 'successful sign-up' do
    expect(User.count).to eq 0

    visit '/'
    click_on 'Sign in'
    click_on 'Sign up'
    fill_in 'Email', with: 'foo@example.com'
    fill_in 'Password', with: 'foobar'
    fill_in 'Password confirmation', with: 'foobar'
    click_on 'Sign up'

    expect(User.count).to eq 1
    expect(User.last.email).to eq 'foo@example.com'
  end
end

describe 'User sign in/sign out' do
  scenario 'sign in' do
    expect(User.count).to eq 0
    create(:user)

    visit '/'
    click_on 'Sign in'
    fill_in 'Email', with: 'foo@example.com'
    fill_in 'Password', with: 'foobar'
    click_on 'Log in'

    expect(page).to have_content('A place to ask questions!')
  end

  scenario 'logout' do
    create(:user)
    visit '/'
    click_on 'Sign in'
    fill_in 'Email', with: 'foo@example.com'
    fill_in 'Password', with: 'foobar'
    click_on 'Log in'

    expect(current_path).to eq '/'
    click_on 'Sign out'
    expect(page).to have_content('Signed out successfully.')
  end
end
