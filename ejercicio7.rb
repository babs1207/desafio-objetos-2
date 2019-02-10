class MyPet 
  def initialize(name)
    @name = name
    @sleep = false
    @satisfied = 10 # Esta lleno
    @fullIntestine = 0 # No necesita ir
    puts @name + ' nace '
    end
  
  def caminar
    puts "#{@name} va al baño"
    @satisfied - 3
    @fullIntestine = 0
    timeLapse
  end

  def timeLapse 

    if @satisfied > 0
      # Mueve el alimento del estomago al intestino.
      @satisfied = @satisfied - 1
      @fullIntestine = @fullIntestine + 1
    else # Nuestro mascota esta hambrienta!
      if @sleep
        @sleep = false
        puts '¡Se despierta de repente!'
      end
      puts '¡' + @name + ' esta hambriento! En su desesperacion, ¡Murio de Hambre!'
      exit # Sale del programa.
    end

    if @fullIntestine >= 10
      @fullIntestine = 0
      puts '¡Uy! ' + @name + ' tuvo un accidente...'
    end

    if hungry?
      if @sleep
      @sleep = false
      puts '¡Se despierta de repente!'
      end
      puts 'El estomago de ' + @name + ' retumba...'
    end

    if needToGo?
      if @sleep
      @sleep = false
      puts 'Se despierta de repente!'
      end
      puts @name + ' hace la danza del baño...'
    end
    puts "comida: #{@satisfied}" 
    puts "intestino: #{@fullIntestine}"
   end

   def comer 
    @satisfied += 5
    @fullIntestine += 3
    puts "#{@name} esta comiendo"
    timeLapse
   end

   def dormir
    @sleep = true
    puts "#{@name} esta durmiendo"
    @satisfied - 5
    timeLapse
   end

   def hungry?
    @satisfied <= 2 
   end

   def needToGo?
    @fullIntestine >= 8
  end
end

def menu 
  puts 'Elige una opcion'
  puts '1) Alimentar mascota'
  puts '2) Dormir mascota'
  puts '3) Caminar mascota'
  puts '4) Salir'
end

mascota = MyPet.new('Beethoven')
vida  = true

menu
opcion = gets.chomp.to_i

while opcion != 4
  if opcion == 1
    mascota.comer
  elsif opcion == 2
    mascota.dormir
  elsif opcion == 3
    mascota.caminar
  elsif opcion == 4
    vida == false
    puts 'Adios'
  end
  menu
  opcion = gets.chomp.to_i
end

