require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET index" do
    let(:posts) { create_list(:post, 3)}

    before do
      assign(:posts, posts)
      render
    end

    it "shows a title" do
      assert_select "h1", text:"HashtAggie's blog", count: 1
    end


    it "assigns all posts to @posts" do
      get :index
      expect(assigns(:posts)).to eq posts
    end
  end
end
