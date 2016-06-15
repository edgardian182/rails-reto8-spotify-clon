class Song < ActiveRecord::Base
  belongs_to :album

  validates :name, :number, :preview_url, presence: true
end
