require 'rails_helper'

describe "the add a post process" do
  it "adds a new post" do
    visit posts_path
    click_link 'Add a new post'
    fill_in 'Title', :with => 'Test Title'
    fill_in 'Author', :with => 'Test Author'
    fill_in 'Link', :with => 'Test Link'
    click_on 'Create Post'
    expect(page).to have_content 'Posts'
  end

  it "gives error when no name is entered" do
    visit new_post_path
    click_on 'Create Post'
    expect(page).to have_content 'errors'
  end
end
