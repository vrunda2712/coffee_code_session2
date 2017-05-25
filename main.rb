require_relative 'car'

nish_car = Car.new('ABCDEF', 'Fred')
ash_car = Car.new('MOVIES', 'Mina')
shael_car = Car.new('LINUX', 'Natalie')

nish_car.start
nish_car.drive(10)
nish_car.stop
nish_car.drive(10)

puts "***** Nish's odometer: #{ nish_car.odometer }"

ash_car.start
ash_car.drive(100)
ash_car.stop

puts "***** Ash's odometer: #{ ash_car.odometer }"

puts "***** Nish's car crashed?: #{ nish_car.crashed }"
puts "***** Ash's car crashed?: #{ ash_car.crashed }"
puts "***** Shael's car crashed?: #{ shael_car.crashed }"

nish_car.crash(ash_car)

puts "***** Nish's car crashed?: #{ nish_car.crashed }"
puts "***** Ash's car crashed?: #{ ash_car.crashed }"
puts "***** Shael's car crashed?: #{ shael_car.crashed }"

shael_car.crash

puts "***** Nish's car crashed?: #{ nish_car.crashed }"
puts "***** Ash's car crashed?: #{ ash_car.crashed }"
puts "***** Shael's car crashed?: #{ shael_car.crashed }"

puts "***** Total km drive: #{ Car.total_kilometeres }"
