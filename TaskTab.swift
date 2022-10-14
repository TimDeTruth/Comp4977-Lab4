//
//  TaskTab.swift
//  Lab4
//
//  Created by Timmy Lau on 2022-10-07.
//

import SwiftUI

struct TaskTab: View {
    
    let systemSymbol: String
    let tabNameText: String
    
    var body: some View {
        HStack{
            Image(systemName: systemSymbol)
            Text(tabNameText)
        }.font(.title)
    }
}

struct TaskTab_Previews: PreviewProvider {
    static var previews: some View {
        TaskTab(systemSymbol: "house", tabNameText: "bogus")
    }
}
