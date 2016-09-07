require 'rails_helper'

describe "the delete a comment process" do
  it "deletes a comment from db" do
    post = Post.create({:title => "Test Title", :link => "www.learnhowtoprogram.com", :author => "Test Author"})
    comment = Comment.create({:content => "Test content", :author => "Test Author", :post_id => post.id})
    visit post_path(post)
    click_link "delete comment"
    expect(page).to have_content 'There are no comments yet!'
  end
end
