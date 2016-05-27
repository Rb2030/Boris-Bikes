require '/Users/paulkenrick/projects/makersacademy/boris-bikes/lib/docking_station'  # ~> LoadError: cannot load such file -- ~/Users/Ross/boris-bikes/lib/docking_station.rb
require '/Users/paulkenrick/projects/makersacademy/boris-bikes/lib/bike'

station = DockingStation.new
bike = Bike.new
# bike2 = Bike.new
bike.report_broken
bike.broken?
station.dock(bike)
# station.dock(bike2)
station.release_bike



# ~> LoadError
# ~> cannot load such file -- ~/Users/Ross/boris-bikes/lib/docking_station.rb
# ~>
# ~> /Users/Ross/.rvm/rubies/ruby-2.3.0/lib/ruby/site_ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
# ~> /Users/Ross/.rvm/rubies/ruby-2.3.0/lib/ruby/site_ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
# ~> /Users/Ross/boris-bikes/lib/feature_spec.rb:1:in `<main>'
