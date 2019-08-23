class DockingStation
  DEFAULT_CAPACITY = 20

  attr_accessor :bike

  def initialize(capacity= DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    if empty?
      raise ArgumentError.new("Docking station empty")
    end
    @bikes.pop
  end

  def dock(bike)
    if full?
      raise ArgumentError.new("Docking station full")
    end
    @bikes << bike
  end

  private

  def empty?
    @bikes.empty?
  end

  private

  def full?
    @bikes.count == DEFAULT_CAPACITY
  end

end




class Bike

  def working?
    true
  end

  def broken?
    true
  end
  
end
