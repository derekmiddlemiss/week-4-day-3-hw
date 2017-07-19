require_relative('../db/sql_runner')



class House

  attr_reader :id, :name, :image_url

  def initialize(params)
    @id = params['id'].to_i if params['id']
    @name = params['name']
    @image_url = params['image_url']
  end

  def save()
    sql = "INSERT INTO houses(name, image_url) 
          VALUES ('#{@name}', '#{@image_url}')
          RETURNING id;"
    results = SqlRunner.run(sql).first
    @id = results['id'].to_i
  end

end