class Tortas
	def self.menu
		@a = ["Milanesa", "Arrachera", "Pastor", "Pechuga", "T-Bone", "Cochinita Pibil"]
	end
end

class Time
	def self.tiempo_de_horneado
		@b = {}
		# @b << Tortas.menu
		@b["Milanesa"] = 25
		@b["Arrachera"] = 35
		@b["Pastor"] = 30
		@b["Pechuga"] = 20
		@b["T-Bone"] = 45
		@b["Cochinita Pibil"] = 40
		@b
	end
	 
end

class Horneado
	def como_esta?(value1,value2)
		if value1 < value2
			"Torta quemada!"
		elsif value2 == 0
			"No se coció tu torta"
		elsif value1 == value2
			"Torta lista"
		elsif value1 > value2
			"Torta cruda" 
		end
	end
	def baking
		@a = {}
		@a = Time.tiempo_de_horneado

		p 'Cuantas tortas quieres?'
		cantidad = gets.chomp.to_i
		@b = {}
		for x in (1..cantidad)
			p 'Que tipo de torta deseas?'
			tipo = gets.chomp
			p 'Cuanto tiempo que vas a hornear la torta?'
			tiempo = gets.chomp.to_i
		@b[tipo] = tiempo
		end

		@message = "No tenemos esa torta"

		@array = []
		@arr = []
		@b.each do |key2, value2|
			@a.each do |key1, value1|
				if key1.include?(key2)
					var = como_esta?(value1,value2)
					@array << var
				end
			end
		end
		@array
	end
end

bake = Horneado.new

Tortas.menu
p Time.tiempo_de_horneado
p bake.baking