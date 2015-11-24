# Przykladowe uzycie programu lib/bubble_sort.rb

require 'benchmark'
require_relative '../lib/bubble_sort'

puts 'Bubble Sort - Sortowanie bąbelkowe'

array = [5, 3, 4, 9, 2, 6]

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
