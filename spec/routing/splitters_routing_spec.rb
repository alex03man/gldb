require "rails_helper"

RSpec.describe SplittersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/splitters").to route_to("splitters#index")
    end

    it "routes to #new" do
      expect(:get => "/splitters/new").to route_to("splitters#new")
    end

    it "routes to #show" do
      expect(:get => "/splitters/1").to route_to("splitters#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/splitters/1/edit").to route_to("splitters#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/splitters").to route_to("splitters#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/splitters/1").to route_to("splitters#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/splitters/1").to route_to("splitters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/splitters/1").to route_to("splitters#destroy", :id => "1")
    end

  end
end
