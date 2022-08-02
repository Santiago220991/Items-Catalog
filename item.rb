require 'date'

class Item
  attr_accessor :genre, :author, :source, :archived

  attr_reader :id, :publish_date, :label

  def initialize(publish_date:, archived: false)
    @id = Random.rand(1..100)
    @genre = genre
    @author = author
    @label = label
    @publish_date = publish_date
    @archived = archived
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  def label=(label)
    @label = label
    label.items << self unless label.items.include?(self)
  end

  private

  def can_be_archived?
    Date.today.year - DateTime.parse(@publish_date).year > 10
  end
end
