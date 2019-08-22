class DockingStation

  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      raise ArgumentError.new("Docking station empty")
    end
    @bikes.pop
  end

  def dock(bike)
    if @bikes.count == 20
      raise ArgumentError.new("Docking station full")
    end
    @bikes << bike
  end

end

class Bike
  def working?
    true
  end
end
