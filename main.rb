
puts "first commit"
puts "Second commit"
puts "Hello Dima"
require 'csv'
CSV.open("marks.csv","w") do |wr|
   wr << ["name", "age", ]
end

