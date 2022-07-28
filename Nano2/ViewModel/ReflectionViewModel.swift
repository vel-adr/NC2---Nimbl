//
//  ReflectionViewModel.swift
//  Nano2
//
//  Created by Anselmus Pavel Adriska on 26/07/22.
//

import SwiftUI

class ReflectionViewModel: ObservableObject {
    @Published var reflections: [Reflection] = [
        Reflection(title: "tes", description: "tes", updateTime: Date.now),
        Reflection(title: "tes", description: "tes", updateTime: Date.now),
        Reflection(title: "tes", description: "tes", updateTime: Date.now),
        Reflection(title: "tes", description: "tes", updateTime: Date.now)
    ]
    
    public func add(title: String, description: String) {
        reflections.append(Reflection(title: title, description: description, updateTime: Date.now))
    }
    
    public func getTodayReflectionCount() -> String {
        let arr = reflections.filter { r in
            Calendar.current.isDateInToday(r.updateTime)
        }
        
        return "\(arr.count)"
    }
}
