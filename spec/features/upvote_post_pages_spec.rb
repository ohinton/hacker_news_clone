require 'rails_helper'

describe "the upvote a post process" do
  it "adds to the value of votes in a post" do
    post = Post.create({:title => "Test Title", :link => "www.learnhowtoprogram.com", :author => "Test Author"})
    visit posts_path
    click_on "upvote"
    expect(page).to have_content '1 points'
  end

end
