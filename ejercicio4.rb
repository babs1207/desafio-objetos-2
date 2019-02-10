#Ejercicio 4
class Dog
  def initialize(propiedades)
    @nombre = propiedades[:nombre]
    @raza = propiedades[:raza]
    @color = propiedades[:color]
  end
  def ladrar
    puts "#{@nombre} esta ladrando"
  end
end
propiedades = {nombre:'Beethoven',raza:'San Bernardo',color:'Café'}
dog = Dog.new(propiedades).ladrar

