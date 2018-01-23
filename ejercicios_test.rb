##########################3########GUIA######################################

##############################3#Ejercicio1###############################
puts "************************************************************"
puts "*********************Ejercicio1*****************************"
puts "************************************************************"

# Dado el array:
arreglo = [1,2,3,9,1,4,5,2,3,6,6]
print "ARREGLO:" + arreglo.to_s + "\n"
puts "************************************************************"
# 1. Imprimir el primer elemento.
print "1. Imprimir el primer elemento:"
puts arreglo[0]
puts "\n\n\n"

# 2. Imprimir el último elemento.
print "2. Imprimir el último elemento:"
puts arreglo[-1]
puts "\n\n\n"

# 3. Imprimir, utilizando una iteración, todos los elementos.
print  "3. Imprimir, utilizando una iteración, todos los elementos."
arreglo.each { |ele| print ele  }
puts "\n\n\n"


# 4. Imprimir, utilizando una iteración, todos los elementos junto con su índice.
print  "4. Imprimir, utilizando una iteración, todos los elementos junto con su índice. \n"
arreglo.each_with_index { |ele,index| puts "\t Elemento: #{ele} indice:#{index}" }
puts "\n\n\n"

# 5. Imprimir todos los elementos que se encuentren en una posición (índice) par
print "5. Imprimir todos los elementos que se encuentren en una posición (índice) par \n"
arreglo.each_with_index { |ele,index| puts "\t Elemento: #{ele} indice:#{index}" if index.even? }
puts "\n\n\n"


################################Ejercicio 2###################################

puts "************************************************************"
puts "*********************Ejercicio2*****************************"
puts "************************************************************"


# Dado el array:
 a = [1,2,3,9,1,4,5,2,3,6,6]
print "ARREGLO:" + a.to_s + "\n"
puts "************************************************************"


#1. Eliminar el último elemento.
a = [1,2,3,9,1,4,5,2,3,6,6]
print "1. Eliminar el último elemento:" + (a.pop).to_s + "\n"
print "\t Resultado:" + a.to_s
puts "\n\n\n"
# 2. Eliminar el primer elemento.
a = [1,2,3,9,1,4,5,2,3,6,6]
print "2. Eliminar el primer elemento:" + (a.shift).to_s + "\n"
print "\t Resultado:" + a.to_s
puts "\n\n\n"



# 3. Eliminar el elemento que se encuentra en la posición media, si el arreglo tiene un número par de elementos entonces remover el que se encuentre en la mitad izquierda.
print "3. Eliminar el elemento que se encuentra en la posición media, si el arreglo tiene un número par de elementos entonces remover el que se encuentre en la mitad izquierda. \n"
a = [1,2,3,9,1,4,5,2,3,6,6,1]
puts "\t Arreglo:" + a.to_s
pos = (a.count / 2)
pos-= 1 if a.count.even?
puts "\t Indice a Eliminar:" + pos.to_s
puts "\t Valor Elemento Elimiando: #{a[pos]}"
a.delete_at(pos)
puts "\t Arreglo Ahora:" + a.to_s
puts "\n\n\n"
#     Ejemplo, en el arreglo [1,2,3,4] se elimina el número 2




# 4. Borrar el último elemento mientras ese número sea distinto a 1.
a = [1,2,3,9,1,4,5,2,3,6,6]
print "4. Borrar el último elemento mientras ese número sea distinto a 1. \n"
puts "\t Arreglo:" + a.to_s
a.pop if a[-1] != 1
puts "\t Arreglo Ahora:" + a.to_s
puts "\n\n\n"



# 5. Utilizando un arreglo vacío auxiliar y operaciones de push and pop invertir el orden de los elementos en un arreglo.
print "5. Utilizando un arreglo vacío auxiliar y operaciones de push and pop invertir el orden de los elementos en un arreglo. \n"
a = [1,2,3,9,1,4,5,2,3,6,6,1]
puts "\t Arreglo A:" + a.to_s
b = []
while a[0] != nil do  b.push(a.pop) end
puts "\t Arreglo B:" + b.to_s
puts "\n\n\n"


#################################Ejercicio 3#################################
puts "************************************************************"
puts "*********************Ejercicio3*****************************"
puts "************************************************************"


# Dado el array:
a = [1,2,3,9,1,4,5,2,3,6,6]
puts "\t Arreglo:" + a.to_s
puts "\n\n\n"

# 1. Eliminar todos los números pares del arreglo.
a.each{ |valor|  a.delete(valor)  if valor.even?  }
print "1. Eliminar todos los números pares del arreglo \n"
puts "\t Resultado:" + a.to_s
puts "\n\n\n"


# 2. Obtener la suma de todos los elementos del arreglo utilizando .each
a = [1,2,3,9,1,4,5,2,3,6,6]
suma = 0
a.each{ |valor|  suma +=valor }

print "2. Obtener la suma de todos los elementos del arreglo utilizando .each \n"
puts "\t Arreglo:" + a.to_s
puts "\t Resultado:" + suma.to_s
puts "\n\n\n"


# 3. Obtener el promedio de los elementos del arreglo.
a = [1,2,3,9,1,4,5,2,3,6,6]
suma = 0
a.each{ |valor|  suma +=valor }
promedio = suma.to_f / a.count
print "3. Obtener el promedio de los elementos del arreglo\n"
puts "\t Arreglo:" + a.to_s
puts "\t Resultado opcion1:" + promedio.to_s
puts "\t Resultado opcion2:" + (a.inject(&:+).to_f / a.count).to_s
puts "\n\n\n"


# 4. Incrementar todos los elementos en 1 retornando un nuevo arreglo
a = [1,2,3,9,1,4,5,2,3,6,6]
b = []
a.each do |valor|
    valor+= 1
    b.push(valor)
end
print "4. Incrementar todos los elementos en 1 retornando un nuevo arreglo\n"
puts "\t Arreglo A:" + a.to_s
puts "\t Arreglo B:" + b.to_s
puts "\n\n\n"



############################# Ejercicio 4###############################
puts "************************************************************"
puts "*********************Ejercicio4*****************************"
puts "************************************************************"
puts "\n\n\n"

# Se tiene un arreglo de productos:
 products = %w(Producto1 Producto2 Producto3 Producto4)
# html = ''
# products.each do |i|
#   html += "<div class='product'></div>\n"
# end

# Se pide que el output sea un string con el siguiente contenido:
# <div class='product'><p> Producto1 </p></div>
# <div class='product'><p> Producto2 </p></div>
# <div class='product'><p> Producto3 </p></div>
# <div class='product'><p> Producto4 </p></div>

html = ''
products.each do |i|
  html += "\t <div class='product'><p>" + i + "</p></div>\n"
end
puts html
puts "\n\n\n"

#########################Ejercicio 5#################################

puts "************************************************************"
puts "*********************Ejercicio5*****************************"
puts "************************************************************"
puts "\n\n\n"

# Se tiene un arreglo de productos y precios:
 products = %w(Producto1 Producto2 Producto3 Producto4)
 prices = %w[1000 2000 1500 950]

# html = ''
# products.each do |i|
#   html += "<div class='product'>"
#   html += "</div>\n"
# end
#
# Se pide que el output sea:
# <div class='product'><p> Producto1 </p><p> Precio: 1000 </p></div>
# <div class='product'><p> Producto2 </p><p> Precio: 2000 </p></div>
# <div class='product'><p> Producto3 </p><p> Precio: 1500 </p></div>
# <div class='product'><p> Producto4 </p><p> Precio: 950 </p></div>

puts "\t Opcion1"
html = ''
indice = 0
products.each do |i|
  html += "\t <div class='product'><p>"+ i +"</p><p> Precio:" + prices[indice].to_s + "</p></div> \n"
  indice += 1
end
puts html
puts "\n\n\n"

puts "\t Opcion2"
html = ''
products.each_with_index do |i,indice|
  html += "\t <div class='product'><p>"+ i +"</p><p> Precio:" + prices[indice].to_s + "</p>"
  html += "</div>\n"
end
puts html

puts "\n\n\n"


##################################Ejercicio 6#################################

puts "************************************************************"
puts "*********************Ejercicio6*****************************"
puts "************************************************************"
puts "\n\n\n"


# Dado los arrays
 a = [1,2,3,9,12,31, "domingo"]
 b = ["lunes", "martes", "miércoles", "jueves", "viernes", "sábado", "domingo"]
# Obtener:
# 1. La concatenación de a y b. (hint: Los elementos que se repiten en a y b pueden aparecer dos veces en el resultado).
puts "1. La concatenación de a y b. (hint: Los elementos que se repiten en a y b pueden aparecer dos veces en el resultado) \n"
puts "\t Arreglo A:" + a.to_s
puts "\t Arreglo B:" + b.to_s
print "\n\t Opcion1: #{a.concat(b)}"

a = [1,2,3,9,12,31, "domingo"]
b = ["lunes", "martes", "miércoles", "jueves", "viernes", "sábado", "domingo"]
print "\n\t Opcion2: #{a + b}"
puts "\n\n\n"



# 2. La unión de a y b. (hint: Los elementos que se repiten en a y b NO deben aparecer repetidos en el resultado).
puts "2. La unión de a y b. (hint: Los elementos que se repiten en a y b NO deben aparecer repetidos en el resultado). \n"
a = [1,2,3,9,12,31, "domingo"]
b = ["lunes", "martes", "miércoles", "jueves", "viernes", "sábado", "domingo"]
puts "\t Arreglo A:" + a.to_s
puts "\t Arreglo B:" + b.to_s
print "\n\t Resultado: #{a | b}"
puts "\n\n\n"


# 3. La intersección de a y b. (hint: El resultado debe estar compuesto por los elementos que se repiten en a y b).
puts "3. La intersección de a y b. (hint: El resultado debe estar compuesto por los elementos que se repiten en a y b).\n"
a = [1,2,3,9,12,31, "domingo"]
b = ["lunes", "martes", "miércoles", "jueves", "viernes", "sábado", "domingo"]
puts "\t Arreglo A:" + a.to_s
puts "\t Arreglo B:" + b.to_s
print "\n\t Resultado: #{a & b}"
puts "\n\n\n"




# 4. Intercalar los elementos:
puts "4. Intercalar los elementos \n"

a = [1,2,3,9,12,31, "domingo"]
b = ["lunes", "martes", "miércoles", "jueves", "viernes", "sábado", "domingo"]
puts "\t Arreglo A:" + a.to_s
puts "\t Arreglo B:" + b.to_s
print "\n\t Resultado: #{a.zip(b)}"
puts "\n\n\n"

# resultado = [[1, "lunes"], [2, "martes"], [3, "miércoles"], [9, "jueves"], [12, "viernes"], [31, "sábado"], ["domingo", "domingo"]]
