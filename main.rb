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
  marks.push(row[1].to_i)
  bday.push(row[2])
  puts "#{name[i]} -  #{marks[i]} - #{bday[i]}"
  i += 1
end
  average = marks.inject(&:+).to_i / marks.size.to_f
  puts average
