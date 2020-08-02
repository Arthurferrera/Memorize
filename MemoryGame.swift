//
//  MemoryGame.swift
//  Memorize
//
//  Created by Arthur Ferreira on 12/07/20.
//  Copyright © 2020 Arthur Ferreira. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
         print("card chosem: \(card)")
    }
    
    init(numberOfPairOfCards: Int) {
        cards = Array<Card>()
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(isFaceUp: false, isMatched: false, content: content))
            cards.append(Card(isFaceUp: false, isMatched: false, content: content))
        }
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
 
