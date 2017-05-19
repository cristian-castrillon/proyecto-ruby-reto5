module CargarArchivo
	# Método para leer el contenido del archivo y volver este contenido en un arreglo con posiciones inversas
	def array_preguntas_respuestas_inv
		(File.read("preguntas.txt").split("\n")).reverse
	end
end