//
//  ContentView.swift
//  TheStopBeingLazy-Inator
//
//  Created by Izabela Marcinkowska on 2024-11-28.
//

import SwiftUI

struct ContentView: View {
    @State var habits = Habits()
    var body: some View {
        List(habits.habits) {
            Text($0.name)
        }
    }
}

#Preview {
    ContentView()
}
