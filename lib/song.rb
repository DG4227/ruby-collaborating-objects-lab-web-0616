require 'pry'
class Song


	attr_accessor :name, :artist

	def self.new_by_filename(filename)
		info = filename.split(" - ")
		song = self.new(info[1])
		song.artist = Artist.find_or_create_by_name(info[0])
		song.artist.songs << self
		song
	end

	def initialize(name) 
		@name = name
	end
	
end
