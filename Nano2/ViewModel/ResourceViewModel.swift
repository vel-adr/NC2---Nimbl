//
//  ResourceViewModel.swift
//  Nano2
//
//  Created by Anselmus Pavel Adriska on 26/07/22.
//

import SwiftUI

class ResourceViewModel: ObservableObject {
    @Published var resources: [Resource] = []
    @Published var selectedResource: Resource = Resource(title: "", description: "", updateTime: Date.now)
    
    init() {
        fetchResource()
    }
    
    public func fetchResource() {
        let dm = DummyData()
        resources = dm.resources
    }
    
    public func fetchRecent() -> [Resource] {
        var arr: [Resource] = []
        let resourceCount = resources.count
        if resourceCount > 1 {
            let sorted = resources.sorted {
                $0.updateTime > $1.updateTime
            }
            if resourceCount < 3 {
                for i in 0...resourceCount {
                    arr.append(sorted[i])
                }
            } else {
                for i in 0...2 {
                    arr.append(sorted[i])
                }
            }
        } else {
            arr = resources
        }
        
        return arr
    }
    
    public func add(title: String, description: String) {
        resources.append(Resource(title: title, description: description, updateTime: Date.now))
    }
    
    public func update(_ resource: Resource) {
        let index = resources.firstIndex { $0.id == resource.id }
        if let foundIndex = index {
            resources[foundIndex] = resource
        } else {
            add(title: resource.title, description: resource.description)
        }
    }
    
    public func delete(indexSet: IndexSet) {
        for index in indexSet {
            resources.remove(at: index)
        }
    }
    
    public func getTodayResourceCount() -> Int {
        let arr = resources.filter { r in
            Calendar.current.isDateInToday(r.updateTime)
        }
        
        return arr.count
    }
}
