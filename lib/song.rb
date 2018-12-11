class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    my_artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
    my_artist.add_song(song)
    song
  end

end
