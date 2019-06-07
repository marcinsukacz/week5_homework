require('minitest/autorun')
require('minitest/rg')
require_relative('../testing_task_2')

########version1
class TestCard < MiniTest::Test

def setup
 @card1 = Card.new('hearts', 6)
 @card2 = Card.new('spades', 9)
 @card3 = Card.new('hearts', 1)
 @cards = [@card1, @card2, @card3]
 @game1 = CardGame.new()
end

def test_card_has_name()
  result = @card1.name
  assert_equal('6 hearts', result)
end

def test_card_has_value()
  result = @card2.value
  assert_equal(9, result)
end

def test_highest_card()
  result = @game1.highest_card(@card1, @card2)
  assert_equal('9 spades', result)
end

def test_check_for_Ace__false
  result = @game1.checkforAce(@card1)
  assert_equal(false, result)
end

def test_check_for_Ace__true
  result = @game1.checkforAce(@card3)
  assert_equal(true, result)
end

def test_check_cards_total
  result = @game1.cards_total(@cards)
  assert_equal(16, result)
end



end

# ########version2
# class TestCard < MiniTest::Test
#
# def setup
#  @card1 = Card.new('hearts', 6)
#  @card2 = Card.new('spades', 9)
#  @card3 = Card.new('hearts', 1)
#  @cards = [@card1, @card2, @card3]
#  @game1 = CardGame.new(@cards)
# end
#
# def test_card_has_name()
#   result = @card1.name
#   assert_equal('6 hearts', result)
# end
#
# def test_card_has_value()
#   result = @card2.value
#   assert_equal(9, result)
# end
#
# def test_highest_card()
#   result = @game1.highest_card(@card1, @card2)
#   assert_equal('9 spades', result)
# end
#
# def test_check_for_Ace__false
#   result = @game1.checkforAce(@card1)
#   assert_equal(false, result)
# end
#
# def test_check_for_Ace__true
#   result = @game1.checkforAce(@card3)
#   assert_equal(true, result)
# end
#
# def test_check_cards_total
#   result = CardGame.cards_total(@cards)
#   assert_equal(16, result)
# end
#
#
#
# end
