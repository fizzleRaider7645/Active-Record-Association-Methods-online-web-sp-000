class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    slef.songs.count
  end

  def artist_count
    self.songs.count { |song| song.artist }
  end

  def all_artist_names
    
  end
end
