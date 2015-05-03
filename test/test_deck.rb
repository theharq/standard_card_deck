require 'minitest_helper'
require 'standard_card_deck/deck'

class TestDeck < Minitest::Test

  def setup
    @deck = Deck.new
  end

  def test_cards_collection_size
    assert_equal 52, @deck.cards.size
  end

  def test_cards_returns_cards_objects
    assert_kind_of(Card, @deck.cards.first)
  end
end