//
//  LogBookViewModel.swift
//  Nano2
//
//  Created by Anselmus Pavel Adriska on 26/07/22.
//

import Foundation

class LogBookViewModel: ObservableObject {
    private var dm = DummyData() //change with real data later
    @Published var logBooks: [LogBook] = []
    @Published var selectedDate: Date = Date.now
    @Published var selectedLogBook: LogBook = LogBook(date: Date.now, description: "") //LogBook(date: Date.now, description: "aklsjdlkasjdljaslkd")
    @Published var emptyState = ""
    
    init() {
        fetchLogBook()
        getLogBookForCurrentDate()
    }
    
    public func fetchLogBook() {
        logBooks = dm.logBooks
    }
    
    public func getLogBookForCurrentDate() {
        let lb = logBooks.filter { NSCalendar.current.isDate(selectedDate, inSameDayAs: $0.date) }
        
        selectedLogBook = (lb.count > 0) ? lb[0] : LogBook(date: selectedDate, description: "")
    }
    
    public func add(_ newObject: LogBook) {
        logBooks.append(newObject)
    }
    
    public func update() {
        let index = logBooks.firstIndex { $0.date == selectedLogBook.date }
        if let foundIndex = index {
            logBooks[foundIndex] = selectedLogBook
        } else {
            add(selectedLogBook)
        }
    }
}
