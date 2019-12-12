require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    Song.new.tap {|song| song.save }
  end

  def self.new_by_name(name)
    Song.new.tap {|song| song.name = name}
  end

  def self.create_by_name(name)
    self.class.create
    song.name = name
  end
  
end
