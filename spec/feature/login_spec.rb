require 'spec_helper'
require 'pry'

feature 'signing in' do
  scenario 'redirects to the login page when not signed in' do
    visit '/'
    expect(current_path).to eq '/login'
  end

  scenario 'log in' do
    visit '/login'
    fill_in 'Email', with: 'test@example.com'
    fill_in 'Password', with: '123'
    click_button 'Sign In'
    expect(current_path).to eq '/'
  end
end