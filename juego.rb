require_relative "zombie"

class Juego
	attr_accessor :zombies
	def initialize
		@zombies = []
		preparar("zombie_data.txt")
	end

	def preparar(archivo)
		File.open(archivo, "r") do |f|
		  f.each_line do |line|
		    coord = line.split(",")
		    @zombies << Zombie.new(coord[0].to_i, coord[1].gsub("\n","").to_i)
		  end
		end
	end

	def show
		puts "#{@zombies}"
	end
end