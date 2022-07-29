//
//  ReflectionView.swift
//  Nano2
//
//  Created by Anselmus Pavel Adriska on 26/07/22.
//

import SwiftUI

struct ReflectionView: View {
    @EnvironmentObject var reflectionVM: ReflectionViewModel
    
    var body: some View {
        NavigationView {
            Form {
                ForEach(reflectionVM.reflections, id: \.id) { el in
                    NavigationLink {
                        ReflectionDetailView(selectedReflection: el, mode: "Edit")
                    } label: {
                        ListItemView(title: el.title , date: "22/7/2022", description: el.description )
                    }
                }
                .onDelete(perform: reflectionVM.delete(indexSet:))
            }
            .navigationTitle("My Reflection")
            .toolbar {
                NavigationLink {
                    ReflectionDetailView(selectedReflection: Reflection(title: "", description: "", updateTime: Date.now), mode: "Add")
                } label: {
                    Text("Add")
                }
            }
        }
    }
}

struct ReflectionView_Previews: PreviewProvider {
    static var previews: some View {
        ReflectionView().environmentObject(ReflectionViewModel())
    }
}
