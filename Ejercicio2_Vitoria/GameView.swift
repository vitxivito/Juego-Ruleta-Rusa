//
//  ContentView.swift
//  Ejercicio2_Vitoria
//
//  Created by Vitoria Garcia on 28/11/24.
//

import SwiftUI

struct GameView: View {
    @StateObject private var vm = GameViewModel()
    var body: some View {
        VStack {
            if vm.isGameOver{
                Text("Ha perdido el jugador")
                    .font(.largeTitle)
                Text(vm.isPlayerOneTurn ? "Jugador 1" : "Jugador 2")
                    .font(.title)
            } else {
                Text("Turno de jugador :")
                    .font(.largeTitle)
                Text(vm.isPlayerOneTurn ? "Jugador 1" : "Jugador 2")
                    .font(.title)
                Text("Quedan \(6-vm.turnCount) balas")
            }
            Spacer()
            
            Button {
                vm.playTurn()
            } label: {
                Text("Jugar")
                    .frame(maxWidth: .infinity, maxHeight: 75)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .onAppear {vm.gameStart()}
    }
}

#Preview {
    GameView()
}
