require "rails_helper"

RSpec.describe Api::V1::CategoriesController, type: :routing do
  describe "routing" do
    let(:url) { "api/v1/categories" }
    it "routes to #index" do
      expect(get: "#{url}").to route_to("#{url}#index")
    end

    it "routes to #show" do
      expect(get: "#{url}/1").to route_to("#{url}#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "#{url}").to route_to("#{url}#create")
    end

    it "routes to #update via PUT" do
      expect(put: "#{url}/1").to route_to("#{url}#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "#{url}/1").to route_to("#{url}#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "#{url}/1").to route_to("#{url}#destroy", id: "1")
    end
  end
end
