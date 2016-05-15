require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

  describe "GET index" do
    let(:comments) { create_list(:comment, 1)}

    it "assigns all comments to @post.comments" do
      get :index
      expect(assigns(:comments)).to eq comments
    end
  end

end
