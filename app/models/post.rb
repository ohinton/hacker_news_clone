class Post < ActiveRecord::Base
  has_many :comments
  validates :title, :presence => true
  validates :author, :presence => true
  validates :link, :presence => true

  scope(:rank, -> do
    Post.order(votes: :desc, created_at: :desc)
  end)



end
