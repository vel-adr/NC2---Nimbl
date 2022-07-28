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
                    ListItemView(title: el.title ?? "", date: "22/7/2022", description: el.description ?? "")
                }
            }
            .navigationTitle("My Resource")
            .toolbar {
                Button("Add") {
                    reflectionVM.add(title: "Halo", description: "baru")
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
