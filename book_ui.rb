require "./book"
require "./label"

module Book_UI
    def create_book
        puts 'Insert Title'
        title = gets.chomp
        puts 'Insert Author'
        color = gets.chomp
        puts 'Insert Publish Date [DD-MM-YYYY]'
        publish_date = gets.chomp
        puts 'Insert Publisher'
        publisher = gets.chomp
        puts 'Insert the cover state [good,bad]'
        cover_state = gets.chomp.downcase
        puts 'Is it archived?: [Yes/No]'
        archived = gets.chomp
        book = Book.new(publish_date: publish_date, publisher: publisher, cover_state: cover_state, archived: archived)
        label = Label.new(title: title, author: color)
        label.add_item(book)
        data={book: book, label: label}
    end
end