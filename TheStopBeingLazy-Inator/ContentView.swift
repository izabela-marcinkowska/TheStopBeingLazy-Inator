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
    @State var isPresentingAddHabit: Bool = false
    
    var body: some View {
        NavigationStack {
            List($habits.habits) { $habit in
                NavigationLink(destination: DetailView(habit: $habit)) {
                    Text(habit.name)
                }
            }
            .navigationTitle("The Stop Being Lazy-inator")
            .toolbar{
                Button {
                    isPresentingAddHabit = true
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
        .sheet(isPresented: $isPresentingAddHabit) {
            AddHabitView(habits: habits)
        }
    }
}

#Preview {
    ContentView()
}
