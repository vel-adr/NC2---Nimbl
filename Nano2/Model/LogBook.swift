//
//  LogBook.swift
//  Nano2
//
//  Created by Anselmus Pavel Adriska on 26/07/22.
//

import Foundation

struct LogBook: Identifiable {
    var id = UUID()
    var date: Date
    var description: String
}
