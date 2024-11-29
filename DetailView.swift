//
//  DetailView.swift
//  TheStopBeingLazy-Inator
//
//  Created by Izabela Marcinkowska on 2024-11-29.
//

import SwiftUI

struct DetailView: View {
    var habit : Habit
    
    var body: some View {
        Text(habit.name)
        Text(habit.description)
        
    }
}

#Preview {
    DetailView(habit: Habit(id: UUID(), name: "Exercise", description: "Everyday", count: 2))
}
