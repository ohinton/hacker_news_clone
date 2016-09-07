require 'rails_helper'

describe "the edit a comment process" do
  it "edits a comment" do
    post = Post.create({:title => "Test Title", :link => "www.learnhowtoprogram.com", :author => "Test Author"})
    comment = Comment.create({:content => "Test content", :author => "Test Author", :post_id => post.id})
    visit post_path(post)
    click_link "edit comment"
    fill_in 'Content', :with => "New Content"
    fill_in 'Author', :with => "New Author"
    click_on 'Update Comment'
    expect(page).to have_content 'comments'
  end
end
