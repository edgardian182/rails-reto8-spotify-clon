class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :songs

  validates :name, :image_url, :released_at, presence: true
end
