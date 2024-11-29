//
//  Habit.swift
//  TheStopBeingLazy-Inator
//
//  Created by Izabela Marcinkowska on 2024-11-28.
//

import Foundation

struct Habit: Identifiable {
    var id: UUID
    var name: String
    var description: String
    var count: Int
    
    mutating func didIt () {
        count += 1
    }
}


class Habits: ObservableObject {
    @Published var habits: [Habit] = []
    
    func addNewHabit (habit: Habit) {
        habits.append(habit)
    }
    
    func deleteHabit (at offset: IndexSet) {
        habits.remove(atOffsets: offset)
    }
}
