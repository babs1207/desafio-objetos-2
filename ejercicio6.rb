#Ejercicio 6
class Student
  attr_accessor :name
  attr_reader :score
  def initialize(name,score)
  @name = name
  @score  = score.to_i
  end
  end
  nombres = %w(Alicia Javier Camila Francisco Pablo Josefina)
  
  students = []
  
  nombres.each_with_index do |nombre, nota|
    nota += 1
    students << Student.new(nombre, nota)
   end
  
  students.map do |student|
    puts "#{student.name} #{student.score}"
  end
  