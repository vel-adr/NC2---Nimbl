//
//  LogBookView.swift
//  Nano2
//
//  Created by Anselmus Pavel Adriska on 26/07/22.
//

import SwiftUI
import CTScanText

struct LogBookView: View {
    @EnvironmentObject var logBookVM: LogBookViewModel
    
    var body: some View {
        Form {
            Section {
                DatePicker("tes", selection: $logBookVM.selectedDate, displayedComponents: .date)
                    .onChange(of: logBookVM.selectedDate, perform: { newValue in
                        logBookVM.getLogBookForCurrentDate()
                    })
                    .datePickerStyle(.graphical)
            }
            Section {
                TextEditor(text: $logBookVM.selectedLogBook.description)
                    .frame(height: 200)
                    .onChange(of: logBookVM.selectedLogBook.description) { newValue in
                        logBookVM.update()
                    }
            } header: {
                Text("Activity")
            }
        }
    }
}

struct LogBookView_Previews: PreviewProvider {
    static var previews: some View {
        LogBookView().environmentObject(LogBookViewModel())
    }
}
