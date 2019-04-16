require_relative('../db/sql_runner.rb')

class Exhibit

  attr_reader :id, :name, :blurb, :photo, :room, :run_start, :run_end, :visitor_type, :category

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @blurb = options['blurb']
    @photo = options['photo']
    @room = options['room']
    @run_start = options['run_start']
    @run_end = options['run_end']
    @visitor_type = options['visitor_type']
    @category = options['category']
  end

#C
  def save()
    sql = "INSERT INTO exhibits
    (name, blurb, photo, room, run_start, run_end, visitor_type, category)
    VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
    RETURNING id"
    values = [@name, @blurb, @photo, @room, @run_start, @run_end, @visitor_type, @category]
    results = SqlRunner.run(sql, values)
    @id = results.first['id'].to_i
  end

#R
  def Exhibit.all()
    sql = "SELECT * FROM exhibits"
    results = SqlRunner.run(sql)
    return results.map { |exhibits| Exhibit.new(exhibits) }
  end

  def self.find(id)
    sql = "SELECT * FROM exhibits WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    return Exhibit.new(results.first)
  end

#U
  def update
    sql = "UPDATE exhibits SET (name, blurb, photo, room, run_start, run_end, visitor_type, category) =
    ($1, $2, $3, $4, $5, $6, $7, $8) WHERE id = $9"
    values = [@name, @blurb, @photo, @room, @run_start, @run_end, @visitor_type, @category, @id]
    results = SqlRunner.run(sql, values)
  end

#D
  def Exhibit.delete_all
    sql = "DELETE FROM exhibits"
    SqlRunner.run(sql)
  end

  def self.delete(id)
    sql = "DELETE FROM exhibits WHERE id = $1"
    values = [id]
    SqlRunner.run(sql, values)
  end


end
