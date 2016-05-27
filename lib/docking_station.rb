require_relative 'bike'


class DockingStation

  DEFAULT_CAPACITY = 20

  attr_accessor :bike, :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end


  def release_bike
    fail 'No bikes available' if empty?
    fail 'No working bikes available' if @bikes.all?{|bike| bike.is_working == false}    
    new_bike = @bikes.find {|bike| bike.is_working}
    @bikes.delete(new_bike)
    return new_bike 
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end

  private
  def full?
    @bikes.count >= capacity
  end

  def empty?
    @bikes.empty?
  end


end
