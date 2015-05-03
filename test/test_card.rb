require 'minitest_helper'
require 'standard_card_deck/card'

class TestCard < Minitest::Test

  def setup
    @card = Card.new("hearts", "queen")
  end

  def test_rank
    assert_equal "queen", @card.rank
  end

  def test_suit
    assert_equal "hearts", @card.suit
  end

  def test_to_s
    assert_equal "queen of hearts", @card.to_s
  end
end
