require 'json'
  
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

