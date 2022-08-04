require './books/book'
require './books/label'
require './games/author'
require './music_album/genre'

module BookUi
  def create_book
    title = [(print 'Insert Title: '), gets.rstrip][1]
    first_name = [(print "Insert Author's first name: "), gets.rstrip][1]
    last_name = [(print "Insert Author's last name: "), gets.rstrip][1]
    genre_name = [(print "Insert Book's Genre: "), gets.rstrip][1]
    color = [(print 'Insert Color: '), gets.rstrip][1]
    publish_date = [(print 'Insert Publish Date [DD-MM-YYYY]: '), gets.rstrip][1]
    publisher = [(print 'Insert Publisher: '), gets.rstrip][1]
    cover_state = [(print 'Insert the cover state [good,bad]: '), gets.rstrip][1]
    book = Book.new(publish_date: publish_date, publisher: publisher, cover_state: cover_state)
    label = Label.new(title: title, color: color)
    author = Author.new(first_name: first_name, last_name: last_name)
    genre = Genre.new(name: genre_name)
    label.add_item(book)
    author.add_item(book)
    genre.add_item(book)
    puts ''
    puts 'Book created successfully'
    { book: book, label: label, author: author, genre: genre }
  end
end
