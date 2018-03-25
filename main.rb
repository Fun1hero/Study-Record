require 'CSV'
puts "first commit"
puts "Second commit"
puts "Hello Dima"
name = []
marks = []
bday = []
filename = 'Marks.csv'
i = 0
CSV.foreach(filename) do |row|
  name.push(row[0])
  marks.push(row[1])
  bday.push(row[2])
  puts "#{name[i]} -  #{marks[i]} - #{bday[i]}"
 # puts $..to_i
  i += 1
end 
