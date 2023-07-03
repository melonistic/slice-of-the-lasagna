require "rails_helper"

RSpec.describe ServiceProvisionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/service_provisions").to route_to("service_provisions#index")
    end

    it "routes to #new" do
      expect(get: "/service_provisions/new").to route_to("service_provisions#new")
    end

    it "routes to #show" do
      expect(get: "/service_provisions/1").to route_to("service_provisions#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/service_provisions/1/edit").to route_to("service_provisions#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/service_provisions").to route_to("service_provisions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/service_provisions/1").to route_to("service_provisions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/service_provisions/1").to route_to("service_provisions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/service_provisions/1").to route_to("service_provisions#destroy", id: "1")
    end
  end
end
