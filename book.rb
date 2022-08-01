require './item'

class Book < Item
  attr_accessor :cover_state, :publisher

  def initialize(publisher:, cover_state:, **options)
    super(**options)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    return true if super || @cover_state == 'bad'

    false
  end
  private :can_be_archived?
end

book = Book.new(publisher: 'sony', cover_state: 'bad', publish_date: "01-01-2022")
p book.can_be_archived?
