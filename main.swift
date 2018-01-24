//
//  main.swift
//  DealersChoice
//
//  Created by Cameron Latham on 1/24/18.
//  Copyright © 2018 Cameron Latham. All rights reserved.
//

import Foundation

// Create a deck of cards
// 1. Create a full 52 deck of cards
// 2. Shuffle the deck
// 3. Pull out 3 hands of 7 cards
// 4. Print out each hand.

struct Card: CustomStringConvertible {
    enum Suit: CustomStringConvertible {
        case diamonds
        case spades
        case hearts
        case clubs

        var description: String {
            switch self {
            case .diamonds:
                return "♦️"
            case .spades:
                return "♠️"
            case .hearts:
                return "♥️"
            case .clubs:
                return "♣️"
            }
        }
    }

    enum Value: Int, CustomStringConvertible {
        case two = 2
        case three = 3
        case four = 4
        case five = 5
        case six = 6
        case seven = 7
        case eight = 8
        case nine = 9
        case ten = 10
        case jack = 11
        case queen = 12
        case king = 13
        case ace = 14

        var description: String {
            switch self {
            case .two:
                return "Two"
            case .three:
                return "Three"
            case .four:
                return "Four"
            case .five:
                return "Five"
            case .six:
                return "Six"
            case .seven:
                return "Seven"
            case .eight:
                return "Eight"
            case .nine:
                return "Nine"
            case .ten:
                return "Ten"
            case .jack:
                return "Jack"
            case .queen:
                return "Queen"
            case .king:
                return "King"
            case .ace:
                return "Ace"
            }
        }
    }

    let suit: Suit
    let value: Value

    var description: String {
        return "\(value) of \(suit)"
    }
}

struct Deck {
    var cards: [Card]

    init() {
        self.cards = []
        let suits: [Card.Suit] = [.diamonds, .hearts, .clubs, .spades]
        let values: [Card.Value] = [.two, .three, .four, .five, .six, .seven, .eight, .nine, .ten, .jack, .queen, .king, .ace]

        for suit in suits {
            for value in values {
                cards.append(Card(suit: suit, value: value))
            }
        }
    }

    mutating func shuffle() {
        for _ in 0..<cards.count {
            let card = self.cards.remove(at: cards.count - 1)
            let index = Int(arc4random_uniform(UInt32(cards.count)))

            self.cards.insert(card, at: index)
        }
    }
}

var deck = Deck()

print("Deck Before Shuffling")

//for (index, card) in deck.cards.enumerated() {
//    print("\(index). \(card)")
//}

print("Shuffled Deck")
deck.shuffle()

//for (index, card) in deck.cards.enumerated() {
//    print("\(index). \(card)")
//}

let card = deck.cards[9]



let handOne = Array(0...7).map{_ in deck.cards.removeFirst() }
let handTwo = Array(0...7).map{_ in deck.cards.removeFirst() }
let handThree = Array(0...7).map{_ in deck.cards.removeFirst() }

print("************HAND ONE************")

for (index, card) in handOne.enumerated() {
    print("\(index). \(card)")
}

print("************HAND ONE END************")
print("************HAND TWO************")
for (index, card) in handTwo.enumerated() {
    print("\(index). \(card)")
}

print("************HAND TWO END************")
print("************HAND THREE************")
for (index, card) in handThree.enumerated() {
    print("\(index). \(card)")
}
print("************HAND THREE END************")





