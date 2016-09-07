require 'rails_helper'

describe "the upvote a post process" do
  it "adds to the value of votes in a post" do
    post = Post.create({:title => "Test Title", :link => "www.link.com", :author => "Test Author", :votes => 5})
    post2 = Post.create({:title => "Test Title2", :link => "www.link2.com", :author => "Test Author2", :votes => 2})
    post3 = Post.create({:title => "Test Title3", :link => "www.link3.com", :author => "Test Author3", :votes => 8})
    visit posts_path
    # binding.pry
    expect(page).to have_content "8 points"
  end

end
