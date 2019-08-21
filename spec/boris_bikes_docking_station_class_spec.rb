require 'boris_bikes'

describe "DockingStation" do

describe '#release_bike'
  it {expect(DockingStation.new).to respond_to(:release_bike)}

describe '#working?'
  it {expect(DockingStation.new.release_bike).to respond_to(:working?)}

describe '#working?'
  it {expect(Bike.new.working?).to eq(true)}

describe '#dock_bike'
  it {expect(DockingStation.new).to respond_to(:dock_bike)}

describe '#dock_bike'
  it {expect(bike = DockingStation.new.release_bike).to eq(DockingStation.new.dock_bike(bike))}

describe '#bike'
  it { expect {DockingStation.new.release_bike}.to raise_error}
end
