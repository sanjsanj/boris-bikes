require_relative 'bike'

class DockingStation
  def initialize
    @bikes = []
  end

  def dock bike
    fail 'Station Full' if full?
    @bikes << bike
    nil
  end

  def release_bike
    fail 'No Bikes Available' if empty?
    @bikes.pop
  end

  private

  def full?
    @bikes.length >= 20
  end

  def empty?
    @bikes.empty?
  end
end
