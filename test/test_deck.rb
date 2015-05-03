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

  def test_suffle_deck
    original = @deck.cards.map(&:to_s)
    @deck.shuffle
    shuffled = @deck.cards.map(&:to_s)

    refute_equal(original, shuffled)
  end

  def test_deal_from_the_top
    card = @deck.deal
    assert_kind_of(Card, card)
    refute_includes @deck.cards, card
  end

  def test_deal_with_no_remaining_cards
    @deck.stub :cards, [] do
      assert_equal("There are no more cards on the Deck", @deck.deal)
    end
  end
end