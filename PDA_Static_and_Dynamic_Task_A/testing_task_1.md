### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby
### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.

require_relative('card.rb')
class CardGame


  def checkforAce(card)
    if card.value = 1# should use '==' for comparison
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) #spelling mistake and missing ',' between two arguments
  if card1.value > card2.value
    return card.name #not specified what argument is being referenced (must be 'card1')
  else
    card2 #it is going to return a whole object and you probably want the name (missing .name)
  end
end
end

def self.cards_total(cards)
  total #probably you want to initialize it with 0
  for card in cards
    total += card.value
    return "You have a total of" + total
  end
end


```
