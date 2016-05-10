require 'rails_helper'

RSpec.describe PostsController, type: :routing do
  describe "routing" do

    it "routes to posts#index" do
      expect(:get => "/").to route_to("posts#index")
    end
  end
end
