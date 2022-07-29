//
//  DummyData.swift
//  Nano2
//
//  Created by Anselmus Pavel Adriska on 26/07/22.
//

import Foundation

class DummyData {
    var logBooks = [
        LogBook(date: Calendar.current.date(byAdding: .day, value: -1, to: Date.now)!, description: "- Fixin design\n- Lanjut coding dashboardView")
    ]
    
    var resources: [Resource] = [
        Resource(title: "Realm with SwiftUI 2", description: "https://www.youtube.com/watch?v=oCVsFsY3TvM&t=597s", updateTime: Calendar.current.date(byAdding: .hour, value: -2, to: Date.now)!),
        Resource(title: "Realm with SwiftUI 1", description: "https://www.youtube.com/watch?v=b6q9vKaXtoU&t=1782s", updateTime: Calendar.current.date(byAdding: .day, value: -1, to: Date.now)!)
    ]
    
    var reflections: [Reflection] = [
        Reflection(title: "About procrastination", description: "Jangan nunda2 kerjaan, tidak baik gais", updateTime: Calendar.current.date(byAdding: .day, value: -1, to: Date.now)!),
        Reflection(title: "CBL: Challenge", description: "Challenge statement ga boleh mengandung solusi, cth: Help people with laziness by using gamification apps. By using gamification apps <- solusi.", updateTime: Calendar.current.date(byAdding: .day, value: -40, to: Date.now)!)
    ]
}
