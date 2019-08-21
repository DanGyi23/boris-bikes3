class DockingStation
  attr_reader :bike

  def release_bike
    if bike == nil
      raise ArgumentError.new("Docking station empty")
    end
    Bike.new
  end

  def dock_bike(bike)
    @bike = bike
  end

  # # def raise_error_when_empty
  # #   raise_error when DockingStation.new.release_bike
  # end

end

class Bike
  def working?
    true
  end
end
