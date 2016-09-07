require 'rails_helper'

describe "the add a comment process" do
  post = Post.create({:title => "Test Title", :link => "www.learnhowtoprogram.com", :author => "Test Author"})
  it "adds a new comment" do
    visit posts_path
    click_link 'Add a comment'
    click_link 'add comment'
    fill_in 'Content', :with => 'Test Content'
    fill_in 'Author', :with => 'Test Author'
    click_on 'Create Comment'
    expect(page).to have_content 'comments'
  end

  it "gives error when no name is entered" do
    visit new_post_comment_path(post)
    click_on 'Create Comment'
    expect(page).to have_content 'errors'
  end
end
