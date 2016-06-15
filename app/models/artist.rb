class Artist < ActiveRecord::Base
  has_many :albums
  has_many :songs, through: :albums

  validates :name, :image_url, presence: true
end
