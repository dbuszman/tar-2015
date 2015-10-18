## Ruby
---

### Arrays

>Tworzenie wypełnionej tablicy, dostęp do jej elementu, oraz wypełnienie wartościami *nil*

```ruby

digits = Array(0..9)
#=> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

digits.first
#=> 0

digits.fill(nil)
#=> [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]

```

>Sprawdzanie rozmiaru tablicy, usunięcie pierszego elementu

```ruby

digits.size
#=> 10

digits.shift
#=> nil

# Sprawdzamy czy ilość elementów tablicy została pomniejszona o 1
digits.size
#=> 9
```

>Stworzenie kombinacji 2 elementowych, następnie z tablicy wielowymiarowej utworzenie jednowymiarowej i wybranie z niej unikatowych elementów

```ruby

a = digits.combination(2).to_a
#=> [[0, 1], [0, 2], [0, 3], [0, 4], [1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]]

a = a.flatten
#=> [0, 1, 0, 2, 0, 3, 0, 4, 1, 2, 1, 3, 1, 4, 2, 3, 2, 4, 3, 4]

a.uniq
#=> [0, 1, 2, 3, 4]

```

#### [Mały program prezentujący możliwości tablic w języku RUBY](programs/palindrom.rb) 
