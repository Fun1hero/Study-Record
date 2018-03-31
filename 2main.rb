require 'json'

# init hash
=begin
  peoples = Hash.new
  peoples[1] = {:name => "Dyno", :marks => [10,11,10,12]}
  peoples[2] = {:name => "Myno", :marks => [12,11,12,12]}
  peoples[3] = {:name => "Zyno", :marks => [9,11,12,9]}
=end

  file = File.read('peoples.json') 
  peoples = JSON.parse(file)

  system "clear"

  def list_of_peoples(peoples_hash)
    puts "List of peoples:"
    peoples_hash.map{|id, people|
      puts "#{id}. #{people["name"]}: #{people["marks"]}"
    }
  end

  list_of_peoples(peoples)

  puts ""
  puts "If you want to change name of people, than enter : \"ID New_Name\""

  new_name = gets.chomp

  if new_name.length > 3 then 

    id = new_name.split(" ")[0]
    name = new_name.split(" ")[1]
    peoples[id][:name] = name

# open file or create if not exist
    File.open('peoples.json','w') { |f| f.write(peoples.to_json) }
# reread file
    file = File.read('peoples.json') 
    peoples = JSON.parse(file)
  
  else 

    puts "Nothing was changed !"
    puts ""

  end

  list_of_peoples(peoples)



=begin

  file = File.read('marks.json') 
  marks_hash = JSON.parse(file)
 # puts marks_hash.size
 # puts marks_hash['FithsGrade']
  marks_hash['FithsGrade'].map{ |people| 
    puts "#{people['name']} (#{people['bDay']}) -> #{people['mark']}"
  }
  
 # marks_hash['FithsGrade'] = ['name'=>'Vasya Pupkin','mark'=>[4,5,6,7,8,8]]

 # File.open('marks.json','w') { |f| 
  #  f.write(marks_hash.to_json)
 # }
 #
=end

