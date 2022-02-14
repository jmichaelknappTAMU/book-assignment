require 'rails_helper'

RSpec.describe "book_checkouts/show", type: :view do
  before(:each) do
    @book_checkout = assign(:book_checkout, BookCheckout.create!(
      user_id: 2,
      book_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
