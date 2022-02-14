require 'rails_helper'

RSpec.describe "book_checkouts/new", type: :view do
  before(:each) do
    assign(:book_checkout, BookCheckout.new(
      user_id: 1,
      book_id: 1
    ))
  end

  it "renders new book_checkout form" do
    render

    assert_select "form[action=?][method=?]", book_checkouts_path, "post" do

      assert_select "input[name=?]", "book_checkout[user_id]"

      assert_select "input[name=?]", "book_checkout[book_id]"
    end
  end
end
