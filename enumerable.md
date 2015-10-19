## Ruby
---

### Enumerable

>Sprawdzanie:
- czy wszystkie elementy kolekcji spełniają warunek,
- czy przynajmniej jeden element kolekcji spełnia warunek

```ruby

%w[jeden dwa trzy].all? { |liczebnik| liczebnik.length >= 4 }
#=> false

%w[jeden dwa trzy].any? { |liczebnik| liczebnik.length >= 4 }
#=> true

```

>Przeszukiwanie kolekcji aż do spełnienia warunku

```ruby

("a".."g").detect   { |i| i > "d" and i < "g" }
#=> "e"

```

>Tworzenie tablic kolejnych elementów

```ruby

("a".."h").each_cons(3) { |a| p a }
#=>["a", "b", "c"]
#=>["b", "c", "d"]
#=>["c", "d", "e"]
#=>["d", "e", "f"]
#=>["e", "f", "g"]
#=>["f", "g", "h"]

("a".."h").each_slice(3) { |a| p a }
#=>["a", "b", "c"]
#=>["d", "e", "f"]
#=>["g", "h"]

```

>Wyszukiwanie wszystkich elementów kolekcji spełniających warunek, wyszukiwanie wzorca

```ruby

("a".."g").find_all { |i| i > "d" }
#=> ["e", "f", "g"]

("a".."h").grep "b".."e"
#=> ["b", "c", "d", "e"]

```

>Wartości minimalne, maksymalne i mieszane

```ruby

studenci = %w(Jan Adam Tomasz Krzysztof Anna Agnieszka Magdalena)
#=> ["Jan", "Adam", "Tomasz", "Krzysztof", "Anna", "Agnieszka", "Magdalena"]

studenci.min
#=> "Adam"

studenci.max
#=> "Tomasz"

studenci.minmax { |a,b| a.length <=> b.length }
 => ["Jan", "Krzysztof"]

```

>Podział kolekcji na dwie tablice: spełniającą warunek i resztę

```ruby

studenci = %w(Jan Adam Tomasz Krzysztof Anna Agnieszka Magdalena)
#=> ["Jan", "Adam", "Tomasz", "Krzysztof", "Anna", "Agnieszka", "Magdalena"]

studenci.partition { |imie| imie.length <= 4}
#=> [["Jan", "Adam", "Anna"], ["Tomasz", "Krzysztof", "Agnieszka", "Magdalena"]]

```

>Podział kolekcji według warunku

```ruby

studenci = %w(Jan Adam Tomasz Krzysztof Anna Agnieszka Magdalena)
#=> ["Jan", "Adam", "Tomasz", "Krzysztof", "Anna", "Agnieszka", "Magdalena"]

studenci.slice_after("Krzysztof").to_a
#=> [["Jan", "Adam", "Tomasz", "Krzysztof"], ["Anna", "Agnieszka", "Magdalena"]]

studenci.slice_when { |imie| imie[0] == "A" }.to_a
#=> [["Jan", "Adam"], ["Tomasz", "Krzysztof", "Anna"], ["Agnieszka"], ["Magdalena"]] 

```
