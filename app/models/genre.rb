class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
   # x = 1
   # array = []
   # while x <= artist_count
   #   array << self.artists.find(x).name
   #   x += 1
  #  end
   # array
   self.artists.map do |artist|
     artist.name
   end
  end
  
end
