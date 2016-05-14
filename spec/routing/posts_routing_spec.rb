require 'rails_helper'

RSpec.describe PostsController, type: :routing do
  describe "routing" do

    it "routes to welcome#index" do
      expect(:get => "/").to route_to("welcome#index")
    end

    it "routes to get index" do
       expect(:get => "posts").to route_to(
         :controller => "posts",
         :action => "index"
       )
    end

    it "routes to get new" do
       expect(:get => "posts/new").to route_to(
         :controller => "posts",
         :action => "new"
       )
    end

    it "routes to get show" do
       expect(:get => "posts/1").to route_to(
         :controller => "posts",
         :action => "show",
         :id => "1"
       )
    end

    it "routes to post create" do
       expect(:post => "posts").to route_to(
         :controller => "posts",
         :action => "create"
       )
    end

    it "routes to get edit" do
       expect(:get => "posts/1/edit").to route_to(
         :controller => "posts",
         :action => "edit",
         :id => "1"
       )
    end

    it "put update" do
       expect(:put => "posts/1").to route_to(
         :controller => "posts",
         :action => "update",
         :id => "1"
       )
    end

    it "delete destroy" do
       expect(:delete => "posts/1").to route_to(
         :controller => "posts",
         :action => "destroy",
         :id => "1"
       )
    end
  end
end
