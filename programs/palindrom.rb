# Program wykorzystujący podstawowe własności tworzenia tablic w języku RUBY

puts "\n"
new_array = Array.new(2) { Array.new(5) }
puts 'Zainicjalizowana tablica new_array:'
print new_array
puts "\n\n"

new_array = [%w(k a j a k), [1, 2, 3, 4, 5]]
puts 'Tablice mogą przechowywać różne typy obiektów:'
print new_array
puts "\n\n"

puts "Ruby umożliwia przeprowadzanie różnych operacji na tablicach,
co ilustruje poniższy przykład z palindromem:"
print new_array.first.to_s + "\n" + new_array.last.to_s
puts "\n"

puts '  -> Możemy scalić ze sobą elementy tablicy:'
palindrom = new_array.first.join(' ')
print palindrom.to_s + "\n"

puts '  -> Możemy odwrócić kolejność elementów tablicy:'
palindrom  = new_array.first.reverse
print palindrom.to_s + "\n" + new_array.last.reverse.to_s + "\n"

puts '  -> Możemy wybrać tylko unikatowe elementy tablicy:'
palindrom = new_array.first.uniq
print palindrom.to_s + "\n"

puts '  -> Możemy z tablicy wielowymiarowej utworzyć jednowymiarową:'
one_dim = new_array.flatten
print one_dim.to_s + "\n"

puts "\n"
