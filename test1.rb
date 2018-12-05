# Realice un script que transforme el siguiente array:
# a = [1,2,3,4,5,6]
# en [1, 4, 9, 16, 25, 36]:

def multi(array)
  convert = []
  array.map { |e| convert.push(e*e) }
  puts " array ==> #{convert}"
  convert
end
multi([1,2,3,4,5,6])


# Realice un script que transforme el siguiente array:
# a = [1, 1, 1, 2, 2, 2, 2, 3, 3, 3]
# en {"1"=>3, "2"=>4, "3"=>3}

def do_hash(array)
  h = {}
  array.each_with_index do |o, i|
    temp_ocurrence = 0
    array.each do |j|
      temp_ocurrence +=1 if (j == o)
    end
    h[o] = temp_ocurrence
  end
  puts " hash ==> #{h}"
end

do_hash([1, 1, 1, 2, 2, 2, 2, 3, 3, 3])
