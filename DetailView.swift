//
//  DetailView.swift
//  TheStopBeingLazy-Inator
//
//  Created by Izabela Marcinkowska on 2024-11-29.
//

import SwiftUI

struct DetailView: View {
    @Binding var habit : Habit
    
    var body: some View {
        VStack {
            Spacer()
            Text(habit.description)
                .font(.title2)
                .italic()
            Spacer()
            Button {
                habit.didIt()
            } label: {
                Image(.achieved)
                    .resizable()
                    .frame(width: 220, height: 220)
                    .padding()
            }
            .padding(.trailing, 25)
            Text("Click to mark as checked.")
                .italic()
            Spacer()
            VStack {
                Text("Current Streak:")
                    .font(.title)
                    .padding()
                Text(habit.count, format: .number)
                    .font(.largeTitle)
                    .padding()
            }
            Spacer()
        }
        .navigationTitle(habit.name)
        .frame(maxWidth: .infinity, alignment: .center)
        .background(.teal)
    }
}

struct HabitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StatefulPreviewWrapper(value: Habit(id: UUID(), name: "Exercise", description: "I should exercise everyday.", count: 0)) { habit in
            DetailView(habit: habit)
        }
    }
}

struct StatefulPreviewWrapper<Value, Content: View>: View {
    @State var value: Value
    var content: (Binding<Value>) -> Content
    
    var body: some View {
        content($value)
    }
}
