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

def self.find_all()
  sql = "SELECT * FROM houses;"
  return self.map_items(sql)
end

def self.find(search_id)
  sql = "SELECT * FROM houses WHERE id = #{search_id}"
  return self.map_items(sql).first
end

  def self.map_items(sql)
    results = SqlRunner.run(sql)
    return results.map{ |house| House.new(house) }
  end

end