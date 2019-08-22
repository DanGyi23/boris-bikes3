require 'boris_bikes'

describe DockingStation do
  DEFAULT_CAPACITY = 20
 let(:bike) { Bike.new }

 def self.it_responds_to(message)
   it { is_expected.to respond_to message }
 end

 describe '#release_bike' do
   it_responds_to(:release_bike)
   it 'releases working bikes' do
     subject.dock(bike)
     expect(subject.release_bike.working?).to eq true
   end

   it 'raises exception if dock is empty' do
     expect { subject.release_bike }.to raise_error(ArgumentError)
   end

   it 'raises exception if bike is broken' do
     expect { subject.release_bike }.to raise_error(ArgumentError) if bike.broken?
   end


 end

 describe '#dock' do
   it_responds_to(:dock)
   it 'accepts a bike when docking' do
     subject.dock(bike)
     expect(subject.release_bike).to eq bike
   end
   it 'raises exception if dock is full' do
     DEFAULT_CAPACITY.times { subject.dock(bike) }
     expect { subject.dock(bike) }.to raise_error(ArgumentError)
   end
     argument = 15
    it 'stores initialize argument as @capacity' do
      DockingStation.new(argument)
      expect { @capacity.to eq(15) }
    end
    it 'stores DEFAULT_CAPACITY as @capacity' do
      DockingStation.new
      expect { @capacity.to eq(20) }
    end

    it 'Reports that a bike is broken when it is docked' do
      expect(subject.dock(bike).broken?).to eq true
    end

    it 'Allows a broken bike to be docked' do
      expect(subject.dock(bike)).to not_raise_error(ArgumentError) if (subject.dock(bike).broken?)
    end
  
   end
 end
