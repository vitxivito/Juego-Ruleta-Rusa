//
//  GameViewModel.swift
//  Ejercicio2_Vitoria
//
//  Created by Vitoria Garcia on 28/11/24.
//

import Foundation
class GameViewModel: ObservableObject{
    @Published var isPlayerOneTurn = true
    @Published var turnCount = 0
    private var bullets = [1, 2, 3, 4, 5, 6]
    @Published var isGameOver = false
    func playTurn() {
        if isGameOver {
            gameStart()
            return
        }
        if bullets[turnCount] == 6 {
            isGameOver = true
            return
        }
        turnCount += 1
        isPlayerOneTurn.toggle()
    }
    func gameStart() {
        turnCount = 0
        bullets.shuffle()
        isPlayerOneTurn = true
        isGameOver = false
    }
    
}
