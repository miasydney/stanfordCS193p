//
//  MemorizeGame.swift
//  CS193pLecture4MVVM
//
//  Created by Mia on 28/1/2024.
//

import Foundation

// MARK: - Model

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card> // only this model can set the value
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = []
        // add numberOfPairsOfCards x 2 cards to cards array
        for pairIndex in 0..<max(2, numberOfPairsOfCards) {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    func choose(_ card: Card) {
        
    }
    
    mutating func shuffle() {
        cards.shuffle()
        print(cards)
    }
    
    struct Card {
        var isFaceUp = false
        var isMatched = false
        let content: CardContent
    }
    
}
