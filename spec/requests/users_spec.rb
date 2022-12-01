require 'rails_helper'

RSpec.describe 'User login process', type: :feature do
  before :each do
    User.create!(username: 'Chrys', password: 'pass123')
  end
  it 'shows login user' do
    visit user_login_path
    fill_in('username', with: 'Chrys')
    fill_in('password', with: 'pass123')
    click_button 'login'
    expect(page).to have_content('Login successful')
  end
end
