class Item
  def can_be_archived?
    true
  end
end

class Book < Item
  attr_accessor :cover_state, :publisher

  def initialize(publisher:, cover_state:, **options)
    super(**options)
    @publisher = publisher
    @cover_state = cover_state
    p @publisher
    p @cover_state
  end

  def can_be_archived?
    return true if super || @cover_state == 'ba'

    false
  end
  private :can_be_archived?
end

book = Book.new(publisher: 'sony', cover_state: 'bad')
p book.can_be_archived?
