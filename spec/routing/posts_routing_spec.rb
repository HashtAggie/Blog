require 'rails_helper'

RSpec.describe PostsController, type: :routing do
  describe "routing" do

    it "routes to welcome#index" do
      expect(:get => "/").to route_to("welcome#index")
    end
  end
  end
end
