require_relative('../db/sql_runner.rb')

class Category

  attr_reader :id, :name, :artist_id, :exhibit_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @artist_id = options['artist_id'].to_i
    @exhibit_id = options['exhibit_id'].to_i
  end

#C
  def save()
    sql = "INSERT INTO categories
    (name, artist_id, exhibit_id)
    VALUES ($1, $2, $3)
    RETURNING id"
    values = [@name, @artist_id, @exhibit_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

#R
  def Category.all()
    sql = "SELECT * FROM categories"
    results = SqlRunner.run(sql)
    return results.map { |categories| Category.new(categories) }
  end

#U
  def Category.update
    sql = "UPDATE categories SET (name, artist_id, exhibit_id) =
    ($1, $2, $3) WHERE id = $4"
    values = [@name, @artist_id, @exhibit_id]
    results = SqlRunner.run(sql, values)
  end

#D
  def Category.delete_all
    sql = "DELETE FROM categories"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM categories WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

end
