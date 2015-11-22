require 'simplecov'
SimpleCov.start

require_relative '../lib/heap_sort'

describe 'before and after' do
  before :all do
    @arr = []

    # Sprawdam czy zainicjalizowana tablica arr jest pusta
    expect(@arr.empty?).to eq(true)

    @arr = [5, 3, 7, 1]
    @heapsize = @arr.length - 1
  end

  describe '#heapsort' do
    it 'initialized properly' do
      expect(@arr).to eq([5, 3, 7, 1])
      expect(@heapsize).to eq(3)
    end

    it 'should be defined' do
      expect { heapsort(@arr, @heapsize) }.not_to raise_error
    end

    it 'returns the correct sort' do
      # sortuje tablice arr i sprawdzam czy zostala posortowana prawidlowo
      heapsort(@arr, @heapsize)
      expect(@arr).to eq([1, 3, 5, 7])

      # dodaje do tablicy arr element najmniejszy
      # sprawdzam czy jest pierwszym elementem po sortowaniu
      @arr.push(-100)
      @heapsize = @arr.length - 1
      expect(@arr.last).to eq(-100)
      heapsort(@arr, @heapsize)
      expect(@arr.first).to eq(-100)

      # dodaje do tablicy arr element najwiekszy
      # sprawdzam czy jest ostatnim elementem po sortowaniu
      @arr.push(100)
      @heapsize = @arr.length - 1
      expect(@arr.last).to eq(100)
      heapsort(@arr, @heapsize)
      expect(@arr.last).to eq(100)
    end
  end
end
