require_relative 'app'

def main
  app = App.new
  exit = 0
  while exit.zero?
    app.main_menu
    command = gets.chomp.to_i
    if command == 10
      exit = 1
    else
      app.cases(command)
    end
  end
  app.save_books_labels
end

main
