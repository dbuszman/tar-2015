require 'simplecov'
SimpleCov.start

require_relative '../lib/bubble_sort'

RSpec.describe 'before' do
  before :each do
    @arr = []

    # Sprawdam czy zainicjalizowana tablica arr jest pusta
    expect(@arr).to be_empty

    @arr = [1, 2, 3, 4, 5, 6, 7, 8]
  end
  describe '#wymieszaj' do
    it 'initialized array properly' do
      expect(@arr).to eq([1, 2, 3, 4, 5, 6, 7, 8])
    end
    it 'should be defined' do
      expect { wymieszaj(@arr) }.not_to raise_error
    end
    it 'is shuffled' do
      wymieszaj(@arr)
      expect(@arr).not_to eq([1, 2, 3, 4, 5, 6, 7, 8])
    end
  end
  describe '#sortuj' do
    it 'should be defined' do
      expect { sortuj(@arr) }.not_to raise_error
    end
    it 'should not have nil element' do
      expect(@arr).not_to include(nil)
    end
    it 'returns the correct sort' do
      # sortuje tablice arr i sprawdzam czy zostala posortowana prawidlowo
      sortuj(@arr)
      expect(@arr).to eq([1, 2, 3, 4, 5, 6, 7, 8])

      # dodaje do tablicy arr element najmniejszy
      # sprawdzam czy jest pierwszym elementem po sortowaniu
      @arr.push(-100)
      expect(@arr.last).to eq(-100)
      sortuj(@arr)
      expect(@arr.first).to eq(-100)

      # dodaje do tablicy arr element najwiekszy
      # sprawdzam czy jest ostatnim elementem po sortowaniu
      @arr.push(100)
      expect(@arr.last).to eq(100)
      sortuj(@arr)
      expect(@arr.last).to eq(100)
    end
  end
end
