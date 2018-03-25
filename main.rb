
puts "first commit"
puts "Second commit"
puts "Hello Dima"
require 'csv'
CSV.open("marks.csv","r") do |read|
   read << ["Fifthgreat", "Marks" ]
end

