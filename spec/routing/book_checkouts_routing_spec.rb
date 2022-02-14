require "rails_helper"

RSpec.describe BookCheckoutsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/book_checkouts").to route_to("book_checkouts#index")
    end

    it "routes to #new" do
      expect(get: "/book_checkouts/new").to route_to("book_checkouts#new")
    end

    it "routes to #show" do
      expect(get: "/book_checkouts/1").to route_to("book_checkouts#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/book_checkouts/1/edit").to route_to("book_checkouts#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/book_checkouts").to route_to("book_checkouts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/book_checkouts/1").to route_to("book_checkouts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/book_checkouts/1").to route_to("book_checkouts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/book_checkouts/1").to route_to("book_checkouts#destroy", id: "1")
    end
  end
end
