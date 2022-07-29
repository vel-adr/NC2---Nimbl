//
//  AddNewResourceView.swift
//  Nano2
//
//  Created by Anselmus Pavel Adriska on 27/07/22.
//

import SwiftUI
import CTScanText

struct AddNewResourceView: View {
//    @State var title: String = ""
//    @State var description: String = ""
    @State var selectedResource: Resource
    @EnvironmentObject var resourceVM: ResourceViewModel
    var mode: String
    
    var body: some View {
        Form {
            TextField("Title", text: $selectedResource.title)
                .onChange(of: selectedResource.title, perform: { newValue in
                    resourceVM.update(selectedResource)
                })
            ScanTextEditor("Description, URL, etc.", text: $selectedResource.description)
                .frame(height: UIScreen.main.bounds.height * 0.6)
                .onChange(of: selectedResource.description) { newValue in
                    resourceVM.update(selectedResource)
                }
        }
        .navigationTitle((mode == "Edit") ? "Edit Resource" : "New Resource")
        .navigationBarTitleDisplayMode(.inline)
//        .navigationViewStyle(.columns)
//        .navigationBarHidden(true)
//        .frame(maxHeight: 800)
    }
}

//struct AddNewResourceView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddNewResourceView()
//    }
//}
