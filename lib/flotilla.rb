class Flotilla
  attr_reader :designation,
              :personnel,
              :ships

  def initialize(goal)
    @designation = goal[:designation]
    @personnel = []
    @ships = []
  end
end
