# in lib/heapsort.rb
# Sortowanie kopcowe

def heapify(arr, i, heapsize)
  # przywracanie wlasnosci kopca
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
  # budowanie kopca
  i = heapsize / 2
  while i >= 0
    heapify(arr, i, heapsize)
    i -= 1
  end
end

def heapsort(arr, heapsize)
  build_heap(arr, heapsize)

  while heapsize >= 1
    arr[heapsize], arr[0] = arr[0], arr[heapsize]
    heapsize -= 1
    heapify(arr, 0, heapsize)
  end
end

def extract_max(arr, heapsize)
  heapsort(arr, heapsize)
  max = arr[heapsize]
  heapsize -= 1
  arr.delete(max)
  heapify(arr, 0, heapsize)
end
