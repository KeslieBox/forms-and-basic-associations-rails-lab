class Genre < ActiveRecord::Base
  # add associations
  validates :name, presence: true
  has_many :songs
  has_many :artists, through: :songs

end
