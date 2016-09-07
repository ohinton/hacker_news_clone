require 'rails_helper'

describe "the delete a post process" do
  it "deletes a post from db" do
    post = Post.create({:title => "Test Title", :link => "www.learnhowtoprogram.com", :author => "Test Author"})
    visit post_path(post)
    click_link "delete this post"
    expect(page).to have_content 'Posts'
  end
end
