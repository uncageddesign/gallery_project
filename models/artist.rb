require_relative('../db/sql_runner.rb')

class Artist

  attr_reader :id, :name, :bio, :photo, :birth, :death, :nationality

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @bio = options['bio']
    @photo = options['photo']
    @birth = options['birth']
    @death = options['death']
    @nationality = options['nationality']
  end

#C
  def save()
    sql = "INSERT INTO artists
    (name, bio, photo, birth, death, nationality)
    VALUES ($1, $2, $3, $4, $5, $6)
    RETURNING id"
    values = [@name, @bio, @photo, @birth, @death, @nationality]
    results = SqlRunner.run(sql, values)
    @id = results.first['id'].to_i
  end

#R
  def Artist.all()
    sql = "SELECT * FROM artists"
    results = SqlRunner.run(sql)
    return results.map { |artists| Artist.new(artists) }
  end

  def Artist.find(id)
    sql = "SELECT * FROM artists WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    return Artist.new(results.first)
  end

#U
  def update()
    sql = "UPDATE artists SET (name, bio, photo, birth, death, nationality) =
    ($1, $2, $3, $4, $5, $6) WHERE id = $7"
    values = [@name, @bio, @photo, @birth, @death, @nationality, @id]
    results = SqlRunner.run(sql, values)
  end

#D
  def Artist.delete_all
    sql = "DELETE FROM artists"
    SqlRunner.run(sql)
  end

  def self.delete(id)
    sql = "DELETE FROM artists WHERE id = $1"
    values = [id]
    SqlRunner.run(sql, values)
  end

end
