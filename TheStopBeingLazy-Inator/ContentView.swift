//
//  ContentView.swift
//  TheStopBeingLazy-Inator
//
//  Created by Izabela Marcinkowska on 2024-11-28.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    init() {
        UILabel.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).adjustsFontSizeToFitWidth = true
    }
    @Environment(\.modelContext) var modelContext
    @Query var habits: [Habit]
    @State var isPresentingAddHabit: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(habits) { habit in
                    
                    NavigationLink(destination: DetailView(habit: habit)) {
                        Text(habit.name)
                    }
                }
                .onDelete(perform: deleteHabits)
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
            AddHabitView()
        }
        
    }
    
    private func deleteHabits(at offsets: IndexSet) {
            for index in offsets {
                modelContext.delete(habits[index])
            }
        }
}

#Preview {
    ContentView()
}
