require 'rspec'
require './lib/spacecraft'
require './lib/person'
require './lib/flotilla'

RSpec.describe Spacecraft do
  describe 'Instantiation' do
    it 'exists' do
      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

      expect(seventh_flotilla).to be_a Flotilla
    end

    it 'has attributes' do
      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

      expect(seventh_flotilla.designation).to eq('Seventh Flotilla')
    end
  end

  describe 'Methods' do
    it 'returns personnel' do
      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

      expect(seventh_flotilla.personnel).to eq([])
    end

    it 'returns ships available' do
      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

      expect(seventh_flotilla.ships).to eq([])
      seventh_flotilla.add_ship(daedalus)
      expect(seventh_flotilla.ships).to eq([daedalus])
    end
  end
end
