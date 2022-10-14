//
//  FishView.swift
//  Lab4
//
//  Created by Timmy Lau on 2022-10-07.
//

import SwiftUI

struct FishView: View {
    
    
    let fishes: [String]

    let columns = [
        GridItem(.fixed(100)),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(fishes, id: \.self) { item in
                    Text(item)
                }
            }
            .padding(.horizontal)
        }
        .frame(maxHeight: 300)
    }
}

struct FishView_Previews: PreviewProvider {
    static var previews: some View {
        FishView(fishes: ["bogus1", "bogus2", "bogus3", "bogus4", "bogus5"])
    }
}
