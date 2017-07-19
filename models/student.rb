require_relative('../db/sql_runner')

class Student

  attr_reader :id, :first_name, :last_name, :house, :age

  def initialize(params)
    @id = params['id'].to_i if params['id']
    @first_name = params['first_name']
    @last_name = params['last_name']
    @house = params['house']
    @age = params['age'].to_i
  end

  def save()
    sql = "INSERT INTO students (first_name, last_name, house, age) 
          VALUES ('#{@first_name}', '#{@last_name}', '#{@house}', #{@age}) 
          RETURNING id;"
    result = SqlRunner.run(sql).first
    @id = result['id'].to_i
  end

  def self.find_all()
    sql = "SELECT * FROM students;"
    return self.map_items(sql)
  end

  def self.find(search_id)
    sql = "SELECT * FROM students WHERE id = #{search_id}"
    return self.map_items(sql)
  end

  def self.map_items(sql)
    results = SqlRunner.run(sql)
    students = results.map{ |student| Student.new(student)}
    return students
  end

end