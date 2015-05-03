require 'standard_card_deck/card'

class Deck
  SUITS = %w(hearts clubs spades diamonds).freeze
  RANKS = %w(ace two three four five six seven eight nine ten jack queen king).freeze
  NO_CARDS_ERROR = "There are no more cards on the Deck".freeze

  attr_reader :cards

  def initialize
    @cards = SUITS.product(RANKS).map{|suit, rank| Card.new(suit, rank) }
  end

  def shuffle
    cards.shuffle!
  end

  def deal
    return NO_CARDS_ERROR unless cards.any?
    cards.shift
  end

  def random_card
    return NO_CARDS_ERROR unless cards.any?
    cards.delete cards.sample
  end
end