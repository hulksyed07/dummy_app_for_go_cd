require 'rails_helper'

describe 'Article pages Crud testing' do

    before(:each) do
    	Article.delete_all
    end

    it 'Creates a new article starting from index page' do
      visit articles_path
      expect(page).to have_text 'Listing Articles'
      click_link "New Article"
      fill_in 'Title', with: 'Article 4'
      fill_in 'Text', with: 'Description about Article 4'
      click_button 'Create Article'
      expect(page).to have_text 'Article was successfully created'
    end

    it 'Edit an existing article starting from index page' do
      create(:article)
      visit articles_path
      expect(page).to have_text 'Listing Articles'
      click_link "Edit"
      fill_in 'Title', with: 'Article 4'
      fill_in 'Text', with: 'Description about Article 4'
      click_button 'Update Article'
      expect(page).to have_text 'Article was successfully updated'
    end
    
end