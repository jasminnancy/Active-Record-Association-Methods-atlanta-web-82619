class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.songs.uniq.count
  end

  def all_artist_names
    names = self.songs.map { |a| a.artist.name }.uniq
  end
end
