class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs
  has_many :notes, through: :songs

  def artist_name=(name)
     self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end
end
