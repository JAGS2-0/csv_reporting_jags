require 'csv'

@total_funds = []
routes = []
CSV.foreach('/Users/jessica/Code/TIY - Assignments/csv_reporting_jags/planet_express_logs.csv', headers: true) do |lines|
  @total_funds.push lines['Money'].to_i
  @money = @total_funds.reduce (:+)

  @trips = routes.push lines['Destination']
end

fry_trips = 0
amy_trips = 0
bender_trips = 0
leela_trips = 0

@trips.each do |n|
  if n == "Earth"
    fry_trips += 1
  elsif n == "Uranus"
    bender_trips += 1
  elsif n == "Mars"
    amy_trips += 1
  else
    leela_trips += 1
  end
end

planetary_funrds = @trips.zip(@total_funds)
puts planetary_funrds

puts "Total funds for the week #{@money}"
puts ""
puts "Our Trips: #{@trips}"
puts "Our #{@total_funds}"
puts "Fry took #{fry_trips} to Earth"
puts "Amy took #{amy_trips} to Mars"
puts "Bender took #{bender_trips} Uranus"
puts "Leela took #{leela_trips} to all other Destinations"












# How much of a bonus did each employee get? (bonuses are paid to employees who pilot the Planet Express)
# How much money did we make broken down by planet? ie.. how much did we make shipping to Earth? Mars? Saturn? etc.


# Different employees have favorite destinations they always pilot to
#
# Fry - pilots to Earth (because he isn't allowed into space)
# Amy - pilots to Mars (so she can visit her family)
# Bender - pilots to Uranus (teeheee...)
# Leela - pilots everywhere else because she is the only responsible one
