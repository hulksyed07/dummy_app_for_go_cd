require 'rails_helper'

describe 'Welcome Page' do
  
    it 'loads the welcome page and gets the welcome message' do
      visit 'welcome/index'
      expect(page).to have_text 'Welcome to the app'
    end

    it 'clicks on Articles home page link on welcome page and reaches article index page' do
      visit 'welcome/index'
      click_link "Articles Home Page"
      expect(page).to have_text('Listing Articles')
    end
end