require 'rails_helper'

RSpec.describe "book_checkouts/index", type: :view do
  before(:each) do
    assign(:book_checkouts, [
      BookCheckout.create!(
        user_id: 2,
        book_id: 3
      ),
      BookCheckout.create!(
        user_id: 2,
        book_id: 3
      )
    ])
  end

  it "renders a list of book_checkouts" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
