class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
   
   self.artist = Artist.find_or_create_by(name: "Drake")

  end
  
#   def drake_made_this
   
#     if drake = Artist.all.find {|artist| artist.name = "Drake"}
#       #if drake exists assign the artist to drake
#       self.artist = drake
#     else
#       # binding.pry
#       drake = Artist.create(name:"Drake")
#       #create an artist names drake
#       # binding.pry
#       self.artist = drake
#       #assign the artist to drake
#     end 
#     # when this method is called it should assign the song's artist to Drake
#     # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
#     # Hint: you won't want to create an artist record every time this method is called, only if an Drake is *not found*

#   end
end
