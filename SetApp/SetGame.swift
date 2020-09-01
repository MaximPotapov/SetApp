//
//  SetGame.swift
//  SetApp
//
//  Created by Maxim Potapov on 31.08.2020.
//  Copyright © 2020 Maxim Potapov. All rights reserved.
//
// API
import Foundation

struct SetGame {
    private(set) var cardsOnTable = [SetCard]()
    private(set) var cardsSelected = [SetCard]()
    private(set) var cardsTryMatched = [SetCard]()
    private(set) var cardsRemoved = [SetCard]()
    
    private var deck = SetCardDeck()
    var deckCount: Int{ return deck.cards.count}
    
    
    private mutating func takeThreeFromDeck() -> [SetCard]? { // method of getting 3 rand cards
        var threeCards = [SetCard]()
        for _ in 0...2 {
            if let card = deck.draw() {
                threeCards += [card]
            } else {
                return nil
            }
        }
        return threeCards
    }
    
    mutating func dealThree() { // place 3 rand cards on table
        if let dealThreeCards = takeThreeFromDeck() {
            cardsOnTable += dealThreeCards
        }
    }
    
    private mutating func replaceOrRemoveThreeCards() {
        if let takeThreeCards = takeThreeFromDeck() {
            cardsOnTable.replace(elements: cardsTryMatched, with:takeThreeCards)
        } else {
            cardsOnTable.remove(elements: cardsTryMatched)
        }
        cardsRemoved += cardsTryMatched
        cardsTryMatched.removeAll()
    }
}
