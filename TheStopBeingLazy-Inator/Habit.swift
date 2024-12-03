//
//  Habit.swift
//  TheStopBeingLazy-Inator
//
//  Created by Izabela Marcinkowska on 2024-11-28.
//

import Foundation
import SwiftData

@Model
class Habit: Identifiable {
    var id: UUID
    var name: String
    var details: String
    var count: Int
    
    init(id: UUID = UUID(), name: String, details: String, count: Int = 0) {
            self.id = id
            self.name = name
            self.details = details
            self.count = count
        }
    
    func didIt () {
        count += 1
    }
}


@Observable
class HabitsMenager {
    var habits: [Habit] = []
    
    func addNewHabit (_ habit: Habit) {
        habits.append(habit)
    }
    
    func deleteHabit (at offset: IndexSet) {
        habits.remove(atOffsets: offset)
    }
}
