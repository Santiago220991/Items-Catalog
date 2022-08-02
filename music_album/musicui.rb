require './music_album/music'
require './music_album/genre'

module Music
  def create_music
    publish_date =  [(print 'Insert publish date '), gets.rstrip][1]
    puts('Is on spotify? [Y/N]: ')
    response = gets.chomp
    on_spotify = response.downcase == 'y'
    puts 'Enter Name'
    name = gets.chomp
    music_album = MusicAlbum.new(publish_date: publish_date, on_spotify: on_spotify)
    genre = Genre.new(name: name)
    genre.add_item(music_album)
    { music_album: music_album, genre: genre }
  end
end
