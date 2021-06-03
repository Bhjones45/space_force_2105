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
    before :each do
      @seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})
      @daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})
      @kathy = Person.new('Kathy Chan', 10)
      @kathy.add_specialty(:astrophysics)
      @kathy.add_specialty(:quantum_mechanics)
      @polly = Person.new('Polly Parker', 8)
      @polly.add_specialty(:operations)
      @polly.add_specialty(:maintenance)
      @rover = Person.new('Rover Henriette', 1)
      @rover.add_specialty(:operations)
      @rover.add_specialty(:maintenance)
      @sampson = Person.new('Sampson Edwards', 7)
      @sampson.add_specialty(:astrophysics)
      @sampson.add_specialty(:quantum_mechanics)
    end
    it 'returns personnel' do

      expect(@seventh_flotilla.personnel).to eq([])
    end

    it 'returns ships available' do

      expect(@seventh_flotilla.ships).to eq([])
      @seventh_flotilla.add_ship(@daedalus)
      expect(@seventh_flotilla.ships).to eq([@daedalus])
    end

    it 'can add personnel' do
      @seventh_flotilla.add_personnel(@kathy)
      @seventh_flotilla.add_personnel(@polly)
      @seventh_flotilla.add_personnel(@rover)
      @seventh_flotilla.add_personnel(@sampson)

      expect(@kathy.specialties).to eq([:astrophysics, :quantum_mechanics])
      expect(@polly.specialties).to eq([:operations, :maintenance])
      expect(@rover.specialties).to eq([:operations, :maintenance])
      expect(@sampson.specialties).to eq([:astrophysics, :quantum_mechanics])
      expect(@seventh_flotilla.personnel).to eq([@kathy, @polly, @rover, @sampson])
    end
  end


end
