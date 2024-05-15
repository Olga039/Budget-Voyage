//
//  PageModel.swift
//  Budget Voyage
//
//  Created by Asif on 5/15/24.
//

import Foundation

struct Page: Identifiable, Equatable {
    let id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    var tag: Int
    
    static var samplePage = Page(name: "Title Example", description: "This is a sample description for debugging", imageUrl: "Trip", tag: 0)
    
    static var samplePages: [Page] = [
        Page(name: "Hello!", description: "Welcome to Budget Voyage, an app to help you plan and save for adventures of all kinds", imageUrl: "Family", tag: 0),
    Page(name: "Begin", description: "Start by creating your first trip by tapping the “Create a Trip” button", imageUrl: "Trip", tag: 1),
    Page(name: "Save Your Trip!", description: "Then fill out the trip information. When you are finished, tap save at the bottom", imageUrl: "Save", tag: 2),
    Page(name: "View Your Saved Trips!", description: "You will then be brought to a list of your saved trips where you can access them in the future", imageUrl: "SavedTrips", tag: 3),
    Page(name: "Start Budgeting!", description: "To begin budgeting, select the budget tab and input the total budget you wish to save and the money saving interval you will choose", imageUrl: "Main", tag: 4),
    ]
    
}
