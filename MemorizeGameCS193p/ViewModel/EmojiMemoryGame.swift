//
//  File.swift
//  CS193pLecture4MVVM
//
//  Created by Mia on 28/1/2024.
//

import SwiftUI

// MARK: - ViewModel

class EmojiMemoryGame: ObservableObject {
    
    private static let emojis = ["5", "r", "e", "a"] // static means to make the emojis a global variable but only have the name space inside of this class
    
    private static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame(numberOfPairsOfCards: 6) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            } else {
                return "oops"
            }
        }
    }
        
   @Published private var model = createMemoryGame()
    
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intents
    
    func shuffle() {
        model.shuffle()
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
}
