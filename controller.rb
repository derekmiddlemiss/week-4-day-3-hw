require('pry')
require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/student')
require_relative('./models/house')


# results = Student.find_all
# binding.pry
# nil

get '/students' do 
  @students = Student.find_all()
  erb(:index)
end

get '/students/new' do
  @houses = House.find_all
  erb(:new)
end

post '/students' do
  student = Student.new(params)
  student.save()
  redirect to '/students'
end