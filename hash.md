## Ruby
---

### Hash

>Tworzenie nowej tablicy Hash, ustawienie wartości domyślnej oraz dostęp do niej

```ruby

studenci = Hash.new

studenci = Hash.new( "student" )

studenci["Jan"]
#=> "student"

```

>Przypisanie klucza, zmiana wartości klucza, dopisanie nowego klucza

```ruby

studenci["Tomasz"]="absolwent"
#=> "absolwent"

studenci.keys
#=> ["Tomasz"]

studenci["Tomasz"].upcase
#=> "ABSOLWENT"

studenci.store("Andrzej", "magister")
#=> "magister"

studenci
#=> {"Tomasz"=>"absolwent", "Andrzej"=>"magister"}

```

>Przeszukiwanie, usuwanie wszystkich elementów

```ruby

studenci.assoc("Tomasz")
#=> ["Tomasz", "absolwent"]

studenci.assoc("Jan")
#=> nil

studenci.clear
#=> {}

```
