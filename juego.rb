require "./preguntasrespuestas"

class Juego

	def initialize; end

	# Método que contiene la lógica del juego
	def empieza_juego
		
		preg_resp = PreguntasRespuestas.new
		preg_resp.preguntas_respuestas.each do |respuesta, definicion|
			puts "Definición:"
			puts definicion
			loop {
				print "Adivininar: "
				break if gets.chomp == respuesta
				puts "(－‸ლ ) Incorrecto!, Trata de nuevo"
			}
			puts "Correcto!  (ﾉ◕ ヮ◕ )ﾉ*:･ﾟ✧"
		end
	end
end