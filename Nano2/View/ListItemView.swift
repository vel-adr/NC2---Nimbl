//
//  ListItemView.swift
//  Nano2
//
//  Created by Anselmus Pavel Adriska on 26/07/22.
//

import SwiftUI

struct ListItemView: View {
    var title: String
    var date: String
    var description: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                HStack(alignment: .firstTextBaseline) {
                    Text(title)
                        .fontWeight(.semibold)
                    Text(date)
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }
                Text(description)
                    .font(.footnote)
                    .lineLimit(1)
            }
            
            Spacer()
            
            //Change with Image later if possible
            
//            Rectangle()
//                .frame(width: 50, height: 50)
//                .cornerRadius(9)
        }
    }
}

//struct ResourceListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ResourceListView()
//    }
//}
