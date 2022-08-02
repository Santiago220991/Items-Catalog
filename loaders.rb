module Loader
  def load_file1(file)
    File.exist?("./#{file}.json") ? JSON.parse(File.read("./#{file}.json"), create_additions: true) : []
  end
  
  def load_file2(file)
    if File.exist?("./#{file}.json")
      JSON.parse(File.read("./#{file}.json"), create_additions: true).map do |data|
        load_books(data)
      end
    else
      []
    end
  end

  def load_books(book)
    label_id = book[:label].id
    label = @labels.filter { |lab| lab.id == label_id }.first
    book = Book.new(publish_date: book[:publish_date], publisher: book[:publisher], cover_state: book[:cover_state],
                    archived: book[:archived])
    book.label = label
    book
  end
end
