require 'rspec'
require './lib/person'

RSpec.describe Person do
  describe 'Instantiation' do
    it 'exists' do
      kathy = Person.new('Kathy Chan', 10)

      expect(kathy).to be_a(Person)
    end
  end
end
