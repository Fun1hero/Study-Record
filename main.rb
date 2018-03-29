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
#  average = marks.inject(&:+).to_i / marks.size.to_f
   average = marks.inject(0){ |result, elem| result + elem } / marks.size.to_f
  puts average
#def media(marks)
#     mid = marks.length / 2
#    sorted = marks.sort
 #   marks.length.odd? ? sorted[mid] : 0.5 * (sorted[mid] + sorted[mid - 1])
#end
 marks.sort!
 elements = marks.count
 center =  elements/2
 elements.even? ? (marks[center] + marks[center+1])/2 : marks[center]
 puts center
