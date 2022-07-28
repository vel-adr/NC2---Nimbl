//
//  Resource.swift
//  Nano2
//
//  Created by Anselmus Pavel Adriska on 26/07/22.
//

import Foundation

struct Resource: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var updateTime: Date
}
