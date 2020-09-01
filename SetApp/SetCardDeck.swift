//
//  SetCardDeck.swift
//  SetApp
//
//  Created by Maxim Potapov on 31.08.2020.
//  Copyright © 2020 Maxim Potapov. All rights reserved.
//

import Foundation


struct SetCardDeck {  // created a deck of cards
    private(set) var cards = [SetCard]()
    
    init() {
        for number in SetCard.Variant.all {
            for color in SetCard.Variant.all {
                for shape in SetCard.Variant.all {
                    for fill in SetCard.Variant.all {
                        cards.append(SetCard(number: number,
                        color: color,
                        shape: shape,
                        fill: fill))
                    }
                }
            }
        }
    }
    
    mutating func draw() -> SetCard? { // picks random card from deck 
        if cards.count > 0 {
            return cards.remove(at: cards.count.arc4random)
        } else {
            return nil
        }
    }
}

    


    extension Int {
    var arc4random: Int {
        if self > 0 {
        return Int(arc4random_uniform(UInt32(self)))
            
        } else if self < 0 {
            return -Int(arc4random_uniform(UInt32(abs(self))))

        } else {
            return 0
        }
    }
}
