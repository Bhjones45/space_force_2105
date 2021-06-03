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

      expect(seventh_flotilla).to eq('Seventh Flotilla')
    end
  end
end
