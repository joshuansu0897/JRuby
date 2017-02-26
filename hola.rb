require 'java'

java_import 'JRuby.Hola'

sal = Hola.new
puts "eso se imprime en Ruby"
sal.saludar
puts "salto de linea ----"
sal.saludarP "Joshua"