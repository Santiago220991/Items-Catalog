require_relative 'music_album/musicui'
class App
  include Music
  attr_reader :status

  def initialize
    @books = []
    @music_albums = []
    @genres = []
    @labels = []
    @sources = []
  end

  def main_menu
    puts ''
    puts('-----------------------------------')
    puts "\nWelcome to Item Catalog App!!\n\n"
    puts('-----------------------------------')
    puts ''
    puts 'What would you like to do  (1 - 10)'
    puts '1 - List all books'
    puts '2 - List all music albums'
    puts '3 - List of games'
    puts '4 - List all genres'
    puts '5 - List all sources'
    puts '6 - List all labels'
    puts '7 - Add a book'
    puts '8 - Add a music album'
    puts '9 - Add a game'
    puts '10 - Exit'
  end

  def cases(command)
    return unless [1, 2, 3, 4, 5, 6, 7, 8, 9].include? command

    { 1 => -> { list_books },
      2 => -> { list_albums },
      3 => -> { list_games },
      4 => -> { list_genres },
      5 => -> { list_labels },
      6 => -> { list_sources },
      7 => -> { add_book },
      8 => -> { add_album },
      9 => -> { add_game } }[command].call
  end

  def list_books
    puts 'Books'
  end

  def list_albums
    @music_albums.each do |music_album|
      print "Id: #{music_album.id}, Name: #{music_album.genre.name},"\
            " On spotify #{music_album.on_spotify}, publish date #{music_album.publish_date} "
    end
  end

  def list_games
    puts 'Albums'
  end

  def list_genres
    @genres.each { |genre| puts "Id: #{genre.id} Title: #{genre.name}" }
  end

  def list_sources
    puts 'Albums'
  end

  def list_labels
    puts 'Albums'
  end

  def add_book
    puts 'new book'
  end

  def add_album
    data = create_music
    @music_albums << data[:music_album]
    @genres << data[:genre]
  end

  def add_game
    puts 'new game'
  end
end
