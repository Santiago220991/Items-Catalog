require 'date'

class Item
  attr_accessor :genre, :author, :source, :label

  attr_reader :id, :publish_date

  def initialize(publish_date, archived)
    @id = Random.rand(1..100)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @archived = false
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    Date.today.year - DateTime.parse(@publish_date).year > 10
  end
end
