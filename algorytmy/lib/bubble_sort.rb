# in lib/bubble_sort

def wymieszaj(arr)
  arr.shuffle!
end

def sortuj(arr)
  wymieszaj(arr)
  j = 0
  # z definicji bubble sort
  ile = arr.size - 1
  while j < ile
    arr.each_index do |i|
      if (i < ile) && (arr[i] > arr[i + 1])
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
    end
    j += 1
  end
end
