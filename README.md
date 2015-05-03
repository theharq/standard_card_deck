# StandardCardDeck

[![Code Climate](https://codeclimate.com/github/theharq/standard_card_deck/badges/gpa.svg)](https://codeclimate.com/github/theharq/standard_card_deck)

This is a Ruby gem that implements a [standard deck of playing cards](http://en.wikipedia.org/wiki/Standard_52-card_deck) (52 cards).

This gem supports these actions

* Shuffle the deck
* Deal a card from the top of the deck
* Select a card at random from the deck

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'standard_card_deck'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install standard_card_deck

## Usage

```ruby
require 'standard_card_deck'

#  52 card deck
deck = Deck.new
deck.cards.size #=> 52

# Shuffle the deck
deck.shuffle

# Deal a card from the top of the deck
deck.deal #=> Card object
deck.cards.size #=> 51

# Select a card at random from the deck
deck.random_card #=> Card object
deck.cards.size #=> 51

# String representation of a card
card = deck.deal
card.to_s #=> "ace of hearts"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/standard_card_deck/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
