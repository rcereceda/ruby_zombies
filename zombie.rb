class Zombie
	def initialize(x, y)
		@x = x
		@y = y
	end

	def caminar
		plano = rand(0..1)
		direccion = rand(0..1)
		if plano == 0
			if direccion == 0
				@x += 10
			else
				@x -= 10
			end
		else
			if direccion == 0
				@y += 10
			else
				@y -= 10
			end
		end
	end

	def to_s
		puts "X: #{@x} Y: #{@y} | Braiiiins!"
	end
end