//
//  ContentView.swift
//  ToDo
//
//  Created by Scholar on 8/8/25.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    
    var body: some View {
        VStack{
            HStack{
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                Button{
                    withAnimation{
                        showNewTask = true
                    }
                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
            } // end of HStack
            .padding()
            Spacer()
            List {
                ForEach(toDos) { toDoItem in
                    Text(toDoItem.title)
                }
            }
        } // end of VStack
        if showNewTask{
            NewToDoView()
        }
    }
}

#Preview {
    ContentView()
}
