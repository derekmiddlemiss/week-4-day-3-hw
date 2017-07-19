require_relative('../models/student.rb')
require_relative('../models/house.rb')

student1 = Student.new({
'first_name' => 'Harry',
'last_name' => 'Potter',
'house' => 'Gryffindor',
'age' => 11 
  })

student2 = Student.new({
'first_name' => 'Barry',
'last_name' => 'Trotter',
'house' => 'Slytherin',
'age' => 45 
  })

student3 = Student.new({
'first_name' => 'Gandalf',
'last_name' => 'Grey',
'house' => 'Ravenclaw',
'age' => 400
  })

student1.save()
student2.save()
student3.save()

house1 = House.new({
  'name' => 'Gryffindor',
  'image_url' => 'https://vignette4.wikia.nocookie.net/harrypotter/images/3/37/Gryffindor_Crest.jpg/revision/latest?cb=20120317101541'
  })

house2 = House.new({
  'name' => 'Slytherin',
  'image_url' => 'http://vignette4.wikia.nocookie.net/harrypotter/images/d/d3/0.61_Slytherin_Crest_Transparent.png/revision/latest?cb=20161020182557'
  })

house3 = House.new({
  'name' => 'Hufflepuff',
  'image_url' => 'https://vignette2.wikia.nocookie.net/harrypotter/images/5/50/0.51_Hufflepuff_Crest_Transparent.png/revision/latest?cb=20161020182518'
  })

house4 = House.new({
  'name' => 'Ravenclaw',
  'image_url' => 'http://vignette2.wikia.nocookie.net/harrypotter/images/2/29/0.41_Ravenclaw_Crest_Transparent.png/revision/latest?cb=20161020182442'
  })

house1.save()
house2.save()
house3.save()
house4.save()