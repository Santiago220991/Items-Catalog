require './book'


class Label
  attr_accessor :title, :author, :items
  
  def initialize(title:, author:)
    @id = rand(1..100)
    @title = title
    @author = author
    @items = []
  end

  def add_item(item)
    @items << item
    item.label = self
  end
end
