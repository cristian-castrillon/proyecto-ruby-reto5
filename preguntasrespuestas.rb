require "./cargararchivo"

class PreguntasRespuestas
	include CargarArchivo

	attr_reader :preguntas_respuestas

	# Al inicializar una instancia de la clase, se hace un lamado a la función crear_hash_preguntas_respuestas para que se cree y guarde el hash que contiene las definiciones y las respuestas en la variable preguntas_respuestas
	def initialize
		
		crear_hash_preguntas_respuestas
	end

	# Se crea método crear_hash_preguntas_respuestas para obtener el hash don las definiciones y las respuestas, el cual es un método privado que sólo se utilizará al momento de inicializar una instancia de la clase
	private
		def crear_hash_preguntas_respuestas
			
			@preguntas_respuestas = Hash[*array_preguntas_respuestas_inv]
		end
end