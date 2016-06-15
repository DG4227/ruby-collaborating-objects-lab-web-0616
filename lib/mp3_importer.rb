require 'pry'

class MP3Importer

	attr_accessor :path, :files

	def initialize(path)
		@path = path
		puts Dir.pwd
	end

	def files
		@files = Dir.entries(path).select {|file| file[-1] == "3"}
	end

	def import
		imported = files.map {|file| Song.new_by_filename(file)}
	end

end
