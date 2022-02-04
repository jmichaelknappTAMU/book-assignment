# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
		fill_in 'Author', with: 'J. K. Rowling'
		fill_in 'Price', with: '11.00'
		select '1999', from: 'book_publishDate_1i'
		select 'Oct', from: 'book_publishDate_2i'
		select '1', from: 'book_publishDate_3i'
    click_on 'Create Book'
    #visit books_path
    expect(page).to have_content('harry potter')
		expect(page).to have_content('J. K. Rowling')
		expect(page).to have_content('$11.00')
		expect(page).to have_content('1999-10-01')
  end
end