# Przykladowe uzycie programu lib/heap_sort.rb

require_relative '../lib/heap_sort'

puts 'Heap Sort - Sortowanie kopcowe'

array = [5, 3, 4, 9, 2, 6]

puts 'Mamy do dyspozycji tablicę:'
print array

puts "\n\n"

puts 'Wywołujemy metodę heapsort() na powyższej tablicy'

heapsort(array, array.size - 1)

puts "\n"

puts 'Tablica po sortowaniu:'

print array

puts "\n\n"

puts 'Wywołujemy metodę extract_max() na powyższej tablicy'

extract_max(array, array.size - 1)

puts "\n"

puts 'Tablica po `wyciągnieciu` największego elementu:'

print array

puts "\n\n"
