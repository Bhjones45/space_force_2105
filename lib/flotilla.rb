class Flotilla
  attr_reader :designation

  def initialize(goal)
    @designation = goal[:designation]
  end
end
