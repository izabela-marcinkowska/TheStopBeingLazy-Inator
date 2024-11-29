//
//  AddHabitView.swift
//  TheStopBeingLazy-Inator
//
//  Created by Izabela Marcinkowska on 2024-11-29.
//

import SwiftUI

struct AddHabitView: View {
    @ObservedObject var habits: Habits
    @Environment(\.dismiss) var dismiss
    @State private var name: String = ""
    @State private var description: String = ""
    @State private var count: Int = 0
    
    var body: some View {
        Form {
            TextField("Habit Name", text: $name)
            TextField("Description", text: $description)
            Stepper("Did it \(count) times.", value: $count)
            
            Button("Add Habit") {
                let newHabit = Habit(id: UUID(), name: name, description: description, count: count)
                habits.addNewHabit(habit: newHabit)
                dismiss()
            }
        }
    }
}

#Preview {
    AddHabitView(habits: Habits())
}
