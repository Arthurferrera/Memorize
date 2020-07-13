//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Arthur Ferreira on 13/07/20.
//  Copyright © 2020 Arthur Ferreira. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private(set) var model: MemoryGame<String> = MemoryGame<String>(cards: <#T##Array<MemoryGame<String>.Card>#>)
    
    // MARK: Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    // MARK - Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
