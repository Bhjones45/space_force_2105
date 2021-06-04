class Flotilla
  attr_reader :designation, # use name
              :personnel,
              :ships

  def initialize(goal)
    @designation = goal[:designation] #use name
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
  # def recommend_personnel(ship)
  #   ship.requirements.flat_map do |requirement|
  #     @personnel.find_all do |person|
  #       requirement.any? do |specialties, experience|
  #         person.specialties.include?(specialties) && (person.experience >= experience)
  #       end
  #     end
  #   end.uniq
  # end

  def recommend_personnel(ship)
    people = []

    @personnel.each do |person|
      ship.requirements.each do |req| #[{spec: years}]
         person.specialties.any? do |spec| #[:spec]
          people << person if (req.key? spec) && (person.experience >= req[spec])
          end
        end
      end
    people.uniq
  end

  def personnel_by_ship
    #goal: build a hash, ship obj is key, value is recommend_personnel(ship_obj)

    # loop over ready_ships
      #use ship obj to call recommend_personnel
      #ship obj will be my has key

      staff_allocation = Hash.new

      @ships.each do |ship|
        staff_allocation[ship] = recommend_personnel(ship)
      end
      staff_allocation
    end

    def ready_ships(fuel_level)
      ships = []
      staff = personnel_by_ship
      @ships.each do |ship|
        staff[ship].each do |person|
          ship.requirements.each do |req|
            req.all? do |requirement, experience|
              if person.specialties.include? requirement
                ships << ship
              end
            end
          end
        end
      end
      ships.uniq
    end
  end
