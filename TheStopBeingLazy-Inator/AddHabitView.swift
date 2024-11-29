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

    
    var body: some View {
        Form {
            TextField("Habit Name", text: $name)
            TextField("Description", text: $description)
            
            Button("Add Habit") {
                let newHabit = Habit(id: UUID(), name: name, description: description, count: 0)
                habits.addNewHabit(habit: newHabit)
                dismiss()
            }
        }
    }
}

#Preview {
    AddHabitView(habits: Habits())
}
