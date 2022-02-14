require 'rails_helper'

RSpec.describe "book_checkouts/edit", type: :view do
  before(:each) do
    @book_checkout = assign(:book_checkout, BookCheckout.create!(
      user_id: 1,
      book_id: 1
    ))
  end

  it "renders the edit book_checkout form" do
    render

    assert_select "form[action=?][method=?]", book_checkout_path(@book_checkout), "post" do

      assert_select "input[name=?]", "book_checkout[user_id]"

      assert_select "input[name=?]", "book_checkout[book_id]"
    end
  end
end
