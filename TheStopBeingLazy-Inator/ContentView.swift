//
//  ContentView.swift
//  TheStopBeingLazy-Inator
//
//  Created by Izabela Marcinkowska on 2024-11-28.
//

import SwiftUI

struct ContentView: View {
    init() {
        UILabel.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).adjustsFontSizeToFitWidth = true
    }
    
    @StateObject var habits = Habits()
    var body: some View {
        NavigationStack {
            List(habits.habits) {
                Text($0.name)
            }
            .navigationTitle("The Stop Being Lazy-inator")
            .toolbar{
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                        .font(.title)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
