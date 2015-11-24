# Przykladowe uzycie programu lib/bubble_sort.rb

require 'benchmark'
require_relative '../lib/bubble_sort'

puts 'Bubble Sort - Sortowanie bąbelkowe'

array = [5, 3, 4, 9, 2, 6]

array1 = (1..10).map { rand }
array2 = (1..100).map { rand }
array3 = (1..1000).map { rand }

puts 'Mamy do dyspozycji tablicę:'
print array

puts "\n\n"

puts 'Wywołujemy metodę sortuj() na powyższej tablicy'

sortuj(array)

puts "\n"

puts 'Tablica po sortowaniu:'

print array

puts "\n\n"

puts 'Wywołujemy metodę wymieszaj() na powyższej tablicy'

wymieszaj(array)

puts "\n"

puts 'Tablica po wymieszaniu elementów'

print array

puts "\n\n"

puts 'Benchmark dla Bubble Sort-a'

Benchmark.bmbm do |x|
  x.report('Bubble Sort, n = 10') { sortuj(array1) }
  x.report('Bubble Sort, n = 100') { sortuj(array2) }
  x.report('Bubble Sort, n = 1000') { sortuj(array3) }
end

puts "\n"
