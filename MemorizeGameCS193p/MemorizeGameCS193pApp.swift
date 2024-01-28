//
//  MemorizeGameCS193pApp.swift
//  MemorizeGameCS193p
//
//  Created by Mia on 28/1/2024.
//

import SwiftUI

@main
struct MemorizeGameCS193pApp: App {
    
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
