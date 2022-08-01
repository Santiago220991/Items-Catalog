
class App
  attr_reader :status

  def initialize
    @status = 'Created'
  end

  def main_menu
    puts "What would you like to do  (1 - 10)"
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
    gets.chomp.strip
  end

    def cases(command)
    return unless %w[1 2 3 4 5 6 7 8 9 10].include? command

    { '1' => -> { list_books },
      '2' => -> { list_people },
      '3' => -> { create_person },
      '4' => -> { create_book },
      '5' => -> { create_rental },
      '6' => -> { rentals_by_index } }[command].call
  end

  def action
    command = main_menu
    cases(command)
    command
  end

  def run
    while command != '10'
      puts ' '
      command = action()
      save
    end
  end
end
