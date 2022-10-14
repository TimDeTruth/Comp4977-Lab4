//
//  TaskDetails.swift
//  Lab4
//
//  Created by Timmy Lau on 2022-10-07.
//

import SwiftUI

struct TaskDetails: View {
    
    
    
    let taskName:String
    
    var body: some View {
        
        VStack{
            Text(taskName)
        }

    }
}

struct TaskDetails_Previews: PreviewProvider {
    static var previews: some View {
        TaskDetails(taskName: "bogus")
 
    }
}
