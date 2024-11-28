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
}

class Habits {
    var habits: [Habit] = []
}
