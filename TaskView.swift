//
//  TaskView.swift
//  Lab4
//
//  Created by Timmy Lau on 2022-10-07.
//

import SwiftUI

struct TaskView: View {
    
    
    
    let tasks: [String]
    let handlerTxt: String
    let symbolImg: String
    
    
    var body: some View {
        NavigationView {
            List {
                Section(header: TaskTab(systemSymbol: symbolImg, tabNameText: handlerTxt))
                {
                    ForEach(tasks, id: \.self, content: {
                        taskName in
                        NavigationLink(taskName, destination:TaskDetails(taskName:taskName))
                    })
                }
            }
            .listStyle(GroupedListStyle())
        }
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView(tasks: ["bogus1", "Bougus2"], handlerTxt:
                    "Home", symbolImg: "gear")
    }
}
