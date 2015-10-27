## Ruby
---

### Hash

>Tworzenie nowej tablicy Hash, ustawienie wartości domyślnej oraz dostęp do niej

```ruby

studenci = Hash.new {}
puts studenci

studenci = Hash.new('student')

studenci['Jan']
#=> "student"

```

>Przypisanie klucza, zmiana wartości klucza, dopisanie nowego klucza

```ruby

studenci['Tomasz'] = 'absolwent'
#=> "absolwent"

studenci.keys
#=> ["Tomasz"]

studenci['Tomasz'].upcase
#=> "ABSOLWENT"

studenci.store('Andrzej', 'magister')
#=> "magister"

studenci
#=> {"Tomasz"=>"absolwent", "Andrzej"=>"magister"}


```

>Przeszukiwanie, usuwanie wszystkich elementów

```ruby

studenci.assoc('Tomasz')
#=> ["Tomasz", "absolwent"]

studenci.assoc('Jan')
#=> nil

studenci.clear
#=> {}

```

>Prezentowanie tablic hash

```ruby

studenci = { 'Jan' => 'absolwent', 'Tomasz' => 'magister',
             'Piotr' => 'student' }

studenci.each { |key, value| puts "#{key} to #{value}" }
#=>Jan to absolwent
#=>Tomasz to magister
#=>Piotr to student


```

>Zamiana kluczy z obiektami

```ruby

studenci = { 'Jan' => 'absolwent', 'Tomasz' => 'magister',
             'Piotr' => 'student' }

studenci.invert
#=> {"absolwent"=>"Jan", "magister"=>"Tomasz", "student"=>"Piotr"}

```

>Łączenie dwóch tablic hash

```ruby

studenci1 = { 'Jan' => 'absolwent', 'Tomasz' => 'magister',
              'Piotr' => 'student' }

studenci2 = { 'Tomasz' => 'magister', 'Piotr' => 'student',
              'Adam' => 'słuchacz' }

studenci1.merge!(studenci2)
#=> {"Jan"=>"absolwent", "Tomasz"=>"magister", "Piotr"=>"student", "Adam"=>"słuchacz"}

```
