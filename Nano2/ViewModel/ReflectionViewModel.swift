//
//  ReflectionViewModel.swift
//  Nano2
//
//  Created by Anselmus Pavel Adriska on 26/07/22.
//

import SwiftUI

class ReflectionViewModel: ObservableObject {
    @Published var reflections: [Reflection] = []
    @Published var selectedReflections: Reflection = Reflection(title: "", description: "", updateTime: Date.now)
    
    init() {
        fetch()
    }
    
    public func fetch() {
        let dm = DummyData()
        reflections = dm.reflections
    }
    
    public func fetchRecent() -> [Reflection] {
        var arr: [Reflection] = []
        let reflectionCount = reflections.count
        if reflectionCount > 1 {
            let sorted = reflections.sorted {
                $0.updateTime > $1.updateTime
            }
            if reflectionCount < 3 {
                for i in 0...reflectionCount-1 {
                    arr.append(sorted[i])
                }
            } else {
                for i in 0...2 {
                    arr.append(sorted[i])
                }
            }
        } else {
            arr = reflections
        }
        
        return arr
    }
    
    public func add(title: String, description: String) {
        reflections.append(Reflection(title: title, description: description, updateTime: Date.now))
    }
    
    public func update(_ reflection: Reflection) {
        let index = reflections.firstIndex { $0.id == reflection.id }
        if let foundIndex = index {
            reflections[foundIndex] = reflection
        } else {
            add(title: reflection.title, description: reflection.description )
        }
    }
    
    public func delete(indexSet: IndexSet) {
        for index in indexSet {
            reflections.remove(at: index)
        }
    }
    
    public func getTodayReflectionCount() -> String {
        let arr = reflections.filter { r in
            Calendar.current.isDateInToday(r.updateTime)
        }
        
        return "\(arr.count)"
    }
}
