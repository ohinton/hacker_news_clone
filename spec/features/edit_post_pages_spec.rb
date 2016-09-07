require 'rails_helper'

describe "the edit a post process" do
  it "edits a post" do
    post = Post.create({:title => "Test Title", :link => "www.learnhowtoprogram.com", :author => "Test Author"})
    visit post_path(post)
    click_link "edit this post"
    fill_in 'Author', :with => "New Author"
    click_on 'Update Post'
    expect(page).to have_content 'Posts'
  end
end
