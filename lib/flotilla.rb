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

#messy but it worked. work on refactor later
  def recommend_personnel(ship)
    ship.requirements.flat_map do |requirement|
      @personnel.find_all do |person|
        requirement.any? do |specialties, experience|
          person.specialties.include?(specialties) && (person.experience >= experience)
        end
      end
    end.uniq
  end
end
