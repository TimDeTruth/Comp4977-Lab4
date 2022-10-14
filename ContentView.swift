//
//  ContentView.swift
//  Lab4
//
//  Created by Timmy Lau on 2022-10-07.
//

import SwiftUI


let nightlyTasks = [
    "Check all windows",
    "Check all doors",
    "Check that the safe is locked",
    "Check the mailbox",
    "Inspect security cameras",
    "Clear ice from sidewalks",
    "Document 'Strange & unusual' occurrences"
]


let weeklyTasks = [
    "Check inside all vacant rooms",
    "Walk the perimeter of property"
]

let monthlyTasks = [
    "Test security alarm",
    "Test motion detectors",
    "Test smoke alarms"
]


let fish = [
    "Pacific Turbot",
    "Turbot",
    "Pacific Turbot",
    "Black Drum",
    "Pollock",
    "Pollack",
    "Coalfish",
    "Boston Bluefish",
    "Big-eye",
    "Saithe",
    "Gooseneck Barnacle",
    "Goose Barnacle",
    "Paradise Threadfin",
    "Chilean Wreckfish",
    "Angelfish",
    "Grey Angelfish",
    "Angelfish",
    "French Angelfish",
    "Bluefish",
    "Crappie",
    "White Crappie",
    "Black Crappie",
    "Crappie",
    "Blue Swimming Crab",
    "Crab",
    "Swimming Crab",
    "Bigeye",
    "Blue Pointer",
    "Blue Pointer Shark",
    "Blue Sharkv",
    "Great Blue Shark",
    "Shark",
    "Blue Dog",
    "Searobin",
    "Gurnard"
]
struct ContentView: View {
        var body: some View {
        TabView{
            TaskView(tasks: nightlyTasks, handlerTxt: "Nightly tasks", symbolImg: "moon.stars")
                .tabItem {
                    Text("Nightly")
                    Image(systemName: "moon.stars")
                }.tag(1)
            
            

                TaskView(tasks: weeklyTasks, handlerTxt: "Weekly Task", symbolImg: "gear")
                    .tabItem {
                        Text("Weekly")
                        Image(systemName: "gear")
                }.tag(2)
                
                

            TaskView(tasks: monthlyTasks, handlerTxt: "Monthly tasks", symbolImg: "moon.stars") .tabItem {
                    Text("Monthly")
                    Image(systemName: "house")
            }.tag(3)
            
            FishView(fishes: fish).tabItem{
                Text("Fihes")
                Image(systemName: "car")
            }.tag(4)
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
