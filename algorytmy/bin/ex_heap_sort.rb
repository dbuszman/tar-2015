# Przykladowe uzycie programu lib/heap_sort.rb

require 'benchmark'
require_relative '../lib/heap_sort'

puts 'Heap Sort - Sortowanie kopcowe'

array = [5, 3, 4, 9, 2, 6]

array1 = (1..10).map { rand }
array2 = (1..100).map { rand }
array3 = (1..1000).map { rand }

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

puts 'Benchmark dla Heap Sort-a'

Benchmark.bmbm do |x|
  x.report('Heap Sort, n = 10') { heapsort(array1, array1.size - 1) }
  x.report('Heap Sort, n = 100') { heapsort(array2, array2.size - 1) }
  x.report('Heap Sort, n = 1000') { heapsort(array3, array3.size - 1) }
end

puts "\n"
