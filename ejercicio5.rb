#Ejercicio 5
class Morseable

  def initialize(number)
    @number = number
  end
  
  def generate_hash(number)
    morse = { 
     0 => '-----',
     1 => '.----', 
     2 => '..---', 
     3 => '...--', 
     4 => '....-', 
     5 => '.....', 
     6 => '-....', 
     7 => '--...', 
     8 => '---..', 
     9 => '----.'}
    morse[number]
  end

  def to_morse
    generate_hash(@number)
  end
end

m = Morseable.new(3)
print m.to_morse
