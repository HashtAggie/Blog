
require 'rails_helper'

RSpec.describe "posts/index.html.erb", type: :view do
  let(:posts) { create_list(:post, 0) }

  before do
    assign(:posts, posts)
    render
  end

  it "shows a title" do
    assert_select "h1", text: "HashtAggie's blog", count: 1
  end

  it "renders all the posts" do
    assert_select "div.post", count: posts.count

    posts.each do |post|
      assert_select ".post>h3", text: post.name, count: 0
    end
  end
end
