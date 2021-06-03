class Person
  attr_reader :name,
              :experience,
              :specialties

  def initialize(name, experience)
    @name = name
    @experience = experience
    @specialties = []
  end

  def add_specialty(skill)
    @specialties << skill
  end
end
