//
//  ContentView.swift
//  ListStateDemo
//
//  Created by Anupam G on 23/05/22.
//

import SwiftUI

struct ContentView: View {
    @State var tasks = [Task]()
    var body: some View {
        
        List{
            Button(action: addTask) {
                Text("Add Task")
            }
            ForEach(tasks){ task in
                Text(task.name)
            }
        }
    }
    
    private func addTask(){
        self.tasks.append(Task(name: "Wash the Car"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
