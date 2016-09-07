require 'rails_helper'

describe "the view posts process" do
  it "lists the posts on the index page" do
    post = Post.create({:title => "Test Title", :link => "www.learnhowtoprogram.com", :author => "Test Author"})
    visit posts_path
    expect(page).to have_content 'Test Title'
  end
end
