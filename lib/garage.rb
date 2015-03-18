require_relative 'bike_container'

class Garage
  include BikeContainer
  def initialize(options = {})
    self.capacity = options.fetch(:capacity, capacity)
  end

  def fix_broken_bikes
    broken_bikes = bikes.select { |bike| bike.broken? }
    broken_bikes.each { |broken_bike| broken_bike.fix }
  end
end
