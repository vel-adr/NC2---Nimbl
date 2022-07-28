//
//  DummyData.swift
//  Nano2
//
//  Created by Anselmus Pavel Adriska on 26/07/22.
//

import Foundation

class DummyData {
    var logBooks = [
        LogBook(date: Calendar.current.date(byAdding: .day, value: 1, to: Date.now)!, description: "Tes123")
//        LogBook(date: Date.now, description: "Mulai ngoding")
    ]
    
    var resources: [Resource] = [
        Resource(title: "Tes", description: "1", updateTime: Date.now),
        Resource(title: "Tes", description: "2", updateTime: Date.now),
        Resource(title: "Tes", description: "3", updateTime: Date.now),
        Resource(title: "Tes", description: "4", updateTime: Date.now),
        Resource(title: "Tes", description: "5", updateTime: Date.now)
    ]
}
