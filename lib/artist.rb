class Artist

	attr_accessor :name, :songs

	@@all = []

	def self.all
		@@all.uniq
	end


	def initialize(name)
		@name = name
		@songs = []
		save
	end

	def save
		@@all << self 
	end

	
	def self.find_or_create_by_name(name)
		musician = Artist.all.find {|artist| artist.name == name} 

		musician ||= Artist.new(name) 
	end

	def add_song(song)
		@song = song
		@songs << song
	end

	def print_songs
		@songs.each {|song| puts song.name}
	end

end
