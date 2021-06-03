require 'rspec'

RSpec.describe Spacecraft do
 describe 'Instantiation' do
   it 'exists' do
     daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

     expect(daedalus).to be_a(Spacecraft)
   end
 end
end
