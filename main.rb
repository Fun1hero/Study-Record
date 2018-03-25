
puts "first commit"
puts "Second commit"
puts "Hello Dima"
require 'csv'
filename = 'Marks.csv'
CSV.foreach(filename) do |row|
  row << ["FIfthGreat" ,"Marks"]
end
puts row

