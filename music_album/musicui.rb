require './music_album/music'
require './music_album/genre'

module Music
  def create_music
    puts('Enter published date (YYYY-MM-DD): ')
    publish_date = gets.chomp.to_i
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
