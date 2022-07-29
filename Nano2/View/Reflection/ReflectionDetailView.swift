//
//  ReflectionDetailView.swift
//  Nano2
//
//  Created by Anselmus Pavel Adriska on 29/07/22.
//

import SwiftUI
import CTScanText

struct ReflectionDetailView: View {
    @State var selectedReflection: Reflection
    @EnvironmentObject var reflectionVM: ReflectionViewModel
    var mode: String
    
    var body: some View {
        Form {
            TextField("Title", text: $selectedReflection.title)
                .font(.caption)
                .onChange(of: selectedReflection.title, perform: { newValue in
                    reflectionVM.update(selectedReflection)
                })
            
            
            ScanTextEditor("Description, URL, etc.", text: $selectedReflection.description)
                .frame(height: UIScreen.main.bounds.height * 0.6)
                .onChange(of: selectedReflection.description) { newValue in
                    reflectionVM.update(selectedReflection)
                }
        }
        .navigationTitle((mode == "Edit") ? "Edit Resource" : "New Resource")
        .navigationBarTitleDisplayMode(.inline)
//        .navigationViewStyle(.columns)
//        .navigationBarHidden(true)
//        .frame(maxHeight: 800)
    }
}

//struct ReflectionDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        ReflectionDetailView()
//    }
//}
