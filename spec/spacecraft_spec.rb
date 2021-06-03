require 'rspec'
require './lib/spacecraft'
require './lib/person'
require './lib/flotilla'

RSpec.describe Spacecraft do
  describe 'Instantiation' do
    it 'exists' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

      expect(daedalus).to be_a(Spacecraft)
    end

    it 'has attributes' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

      expect(daedalus.name).to eq('Daedalus')
      expect(daedalus.fuel).to eq(400)
    end
  end

  describe 'Methods' do
    it 'can view and add requirements'  do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

      expect(daedalus.requirements).to eq([])

      daedalus.add_requirement({astrophysics: 6})
      daedalus.add_requirement({quantum_mechanics: 3})

      expect(daedalus.requirements).to eq([{astrophysics: 6}, {quantum_mechanics: 3}])
    end
  end
end
