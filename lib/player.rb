require 'game'
class Player
  attr_reader :name, :health
  DEFAULT_HEALTH = 60
  def initialize(name)
    @name = name
    @health = DEFAULT_HEALTH
  end

  def receive_damage
    @health -= 10
  end

  def attack(player)
    player.receive_damage
  end
end