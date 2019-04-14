require_relative('../db/sql_runner.rb')

class Exhibit

  attr_reader :name, :blurb, :photo, :room, :run_start, :run_end, :visitor_type

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @blurb = options['blurb']
    @photo = options['photo']
    @room = options['room']
    @run_start = options['run_start']
    @run_end = options['run_end']
    @visitor_type = options['visitor_type']
  end

#C
  def save()
    sql = "INSERT INTO exhibits
    (name, blurb, photo, room, run_start, run_end, visitor_type)
    VALUES ($1, $2, $3, $4, $5, $6, $7)
    RETURNING id"
    values = [@name, @blurb, @photo, @room, @run_start, @run_end, @visitor_type]
    results = SqlRunner.run(sql, values)
    @id = results.first['id'].to_i
  end

#R
  def Exhibit.all()
    sql = "SELECT * FROM exhibits"
    results = SqlRunner.run(sql)
    return results.map { |exhibits| Exhibit.new(exhibits) }
  end

#U
  def Exhibit.update
    sql = "UPDATE exhibits SET (name, blurb, photo, room, run_start, run_end, visitor_type) =
    ($1, $2, $3, $4, $5, $6, $7) WHERE id = $8"
    values = [@name, @blurb, @photo, @room, @run_start, @run_end, @visitor_type]
    results = SqlRunner.run(sql, values)
  end

#D
  def Exhibit.delete_all
    sql = "DELETE FROM exhibits"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM exhibits WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

end
