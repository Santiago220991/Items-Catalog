require 'date'

class Item
  attr_accessor :genre, :author, :source, :label, :archived

  attr_reader :id, :publish_date

  def initialize(publish_date:, archived: false)
    @id = Random.rand(1..100)
    @genre = genre
    @author = author
    @source = source
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
