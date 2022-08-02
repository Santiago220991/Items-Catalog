require 'date'
require_relative 'item'

class Game < Item
  attr_accessor :last_played_at, :multiplayer

  def initialize(last_played_at, multiplayer)
    super(id, author, publish_date, archived)
    @last_played_at = last_played_at
    @multiplayer = multiplayer
  end

  private

  def can_be_archived?
    super && (Date.today.year - DateTime.parse(@last_played_at).year > 2)
  end
end
