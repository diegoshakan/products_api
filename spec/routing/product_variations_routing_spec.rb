require "rails_helper"

RSpec.describe ProductVariationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/product_variations").to route_to("product_variations#index")
    end

    it "routes to #show" do
      expect(get: "/product_variations/1").to route_to("product_variations#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/product_variations").to route_to("product_variations#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/product_variations/1").to route_to("product_variations#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/product_variations/1").to route_to("product_variations#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/product_variations/1").to route_to("product_variations#destroy", id: "1")
    end
  end
end
