//
//  ResourceView.swift
//  Nano2
//
//  Created by Anselmus Pavel Adriska on 26/07/22.
//

import SwiftUI

struct ResourceView: View {
    @EnvironmentObject var resourceVM: ResourceViewModel
    
    var body: some View {
        NavigationView {
            Form {
                if resourceVM.resources.count > 0 {
                    ForEach(resourceVM.resources, id: \.id) { el in
                        NavigationLink {
                            AddNewResourceView(selectedResource: el, mode: "Edit")
                        } label: {
                            ListItemView(title: el.title , date: "22/7/2022", description: el.description )
                        }
                    }
                    .onDelete(perform: resourceVM.delete(indexSet:))
                } else {
                    Text("There are no resource yet")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            .navigationTitle("My Resource")
            .toolbar {
                NavigationLink {
                    AddNewResourceView(selectedResource: Resource(title: "", description: "", updateTime: Date.now), mode: "Add")
                } label: {
                    Text("Add")
                }
            }
        }
    }
}

struct ResourceView_Previews: PreviewProvider {
    static var previews: some View {
        ResourceView().environmentObject(ResourceViewModel())
    }
}
