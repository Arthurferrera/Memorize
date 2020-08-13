//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Arthur Ferreira on 13/07/20.
//  Copyright © 2020 Arthur Ferreira. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
//    @Published faz com que toda vez que o objeto muda, ele chama o metodo objectWiiChanged.send
//    para 'avisar' a tela que tem alteração
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
