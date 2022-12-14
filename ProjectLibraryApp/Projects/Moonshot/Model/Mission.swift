//
//  Mission.swift
//  ProjectLibraryApp
//
//  Created by Ivan Aguiar on 14/10/2022.
//

import Foundation

struct Mission: Codable, Identifiable {
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formatterLaunchDate: String {
        launchDate?.formatted(date: .long, time: .omitted) ?? "N/A"
    }
}
