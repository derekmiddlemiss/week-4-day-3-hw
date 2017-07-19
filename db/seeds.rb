require_relative('../models/student.rb')

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