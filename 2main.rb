require 'json'

# init hash
=begin
  peoples = Hash.new
  peoples[1] = {:name => "Dyno", :marks => [10,11,10,12]}
  peoples[2] = {:name => "Myno", :marks => [12,11,12,12]}
  peoples[3] = {:name => "Zyno", :marks => [9,11,12,9]}
=end

  system "clear"

  def read_file(file_name)
    file = File.read(file_name) 
    peoples = JSON.parse(file)
    return peoples
  end

  def write_file(file_name, peoples_hash)
# open file or create if not exist
    File.open(file_name,'w') { |f| f.write(peoples_hash.to_json) }
  end

  def list_of_peoples(peoples_hash)
    puts "List of peoples:"
    peoples_hash.map{|id, people|
      puts "#{id}. #{people["name"]}: #{people["marks"]}"
    }
  end
  
  peoples = read_file('peoples.json')
  list_of_peoples(peoples)
  puts peoples.size
  puts ""
  puts "If you want to change name of people, than enter : \"ID New_Name\""

  new_name = gets.chomp
  id = new_name.split(" ")[0]
  name = new_name.split(" ")[1]

  if id.to_i  > peoples.size  
    peoples[id] = {:name => name, :marks => [0,0]}
    write_file('peoples.json', peoples)
    peoples =  read_file('peoples.json') 
  elsif new_name.length > 3 
    peoples[id][:name] = name
    write_file('peoples.json', peoples)
    peoples =  read_file('peoples.json') 
  else 

    puts "Nothing was changed !"
    puts ""

  end

  list_of_peoples(peoples)
