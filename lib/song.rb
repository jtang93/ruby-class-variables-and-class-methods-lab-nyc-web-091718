class Song
@@count = 0
@@artists = []
@@genres = []
attr_reader :name, :artist, :genre

def initialize(name, artist, genre)
  @@count += 1

  @@artists << artist

  @@genres << genre

  @name = name
  @artist = artist
  @genre = genre
end

def self.count
  @@count
end

def self.artists
  @@artists.uniq
end

def self.genres
  @@genres.uniq
end

def self.genre_count
  genre_hash = {}
  self.genres.each do |genre_name|
    genre_hash[genre_name] = @@genres.count(genre_name)
  end
  genre_hash
end

def self.artist_count
  artist_hash = {}
  self.artists.each do |artist_name|
    artist_hash[artist_name] = @@artists.count(artist_name)
  end
  artist_hash
end



end #end Song
