require 'CSV'
puts "first commit"
puts "Second commit"
puts "Hello Dima"
name = []
marks = []
filename = 'Marks.csv'
i = 0
CSV.foreach(filename) do |row|
  name.push(row[0])
  marks.push(row[1])
  puts "#{name[i]} , #{marks[i]}"
 # puts $..to_i
  i += 1
end
puts name
puts marks
puts 
