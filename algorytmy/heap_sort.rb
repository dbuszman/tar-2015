# heapsort

def heapify(arr, i, heapsize)
  # metoda heapify to przywracanie wlasnosci kopca
  # lewy syn: 2 * i, prawy syn: 2 * i + 1
  if (2 * i <= heapsize) && (arr[2 * i] > arr[i])
    larg = 2 * i
  else
    larg = i
  end
  larg = 2 * i + 1 if (2 * i + 1 <= heapsize) && (arr[2 * i + 1] > arr[larg])

  return unless larg != i
  arr[i], arr[larg] = arr[larg], arr[i]
  heapify(arr, larg, heapsize)
end

def build_heap(arr, heapsize)
  # metoda build_heap to budowanie kopca
  i = heapsize / 2
  while i >= 0
    heapify(arr, i, heapsize)
    i -= 1
  end
end

def heapsort(arr, heapsize)
  build_heap(arr, heapsize)

  i = heapsize
  while i >= 1
    arr[i], arr[0] = arr[0], arr[i]
    i -= 1
    heapsize -= 1
    heapify(arr, 0, heapsize)
  end
end

arr = []
print arr
puts "\n\n"

heapsize = arr.size - 1

heapsort(arr, heapsize)

print arr
puts "\n\n"
