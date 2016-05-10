require 'rails_helper'

RRSpec.describe PostsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/").to route_to("posts#index")
    end
end
