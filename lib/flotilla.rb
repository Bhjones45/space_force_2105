class Flotilla
  attr_reader :designation,
              :personnel,
              :ships

  def initialize(goal)
    @designation = goal[:designation]
    @personnel = []
    @ships = []
  end

  def add_ship(ship)
    @ships << ship
  end

  def add_personnel(person)
    @personnel << person
  end
end
