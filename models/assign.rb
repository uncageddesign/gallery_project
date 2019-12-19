require_relative('../db/sql_runner.rb')

class Assign

  attr_reader :id, :artist_id, :exhibit_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @artist_id = options['artist_id'].to_i
    @exhibit_id = options['exhibit_id'].to_i
  end

  def save()
    sql = "INSERT INTO assign
    (artist_id, exhibit_id)
    VALUES ($1, $2)
    RETURNING id"
    values = [@artist_id, @exhibit_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE assign SET (artist_id, exhibit_id) = ($1, $2) RETURNING id"
    values = [@artist_id, @exhibit_id, @id]
    results = SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM assign"
    results = SqlRunner.run(sql)
    return results.map { |assigned| Assign.new(assigned) }
  end

  def self.search_exhibits(artist_id)
    sql = "SELECT * FROM exhibits LEFT JOIN assign ON exhibits.id = assign.exhibit_id WHERE assign.artist_id = $1"
    values = [artist_id]
    results = SqlRunner.run(sql, values)
    return results.map { |exhibit| Exhibit.new(exhibit)}
  end

  def exhibit
    sql = "SELECT * FROM exhibits WHERE id = $1"
    values = [@exhibit_id]
    results = SqlRunner.run(sql, values)
    return Exhibit.new(results.first)
  end

  def artist
    sql = "SELECT * FROM artists WHERE id = $1"
    values = [@artist_id]
    results = SqlRunner.run(sql, values)
    return Artist.new(results.first)
  end

  def self.delete_all()
    sql = "DELETE FROM assign"
    SqlRunner.run(sql)
  end

  def self.remove(id)
    sql = "DELETE FROM assign WHERE id = $1"
    values = [id]
    SqlRunner.run(sql, values)
  end

end
