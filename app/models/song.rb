class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist 
  belongs_to :genre 
  has_many :notes 
  validates :title, presence: true


  def artist_name=(name)
    self.create_artist(name: name)
  end

  def artist_name
    self.artist && self.artist.name
  end

 def notes=(notes)
  notes.each do |n|
    if !n.empty? 
      self.notes << Note.create(content: n)
    end
  end
 end
end
