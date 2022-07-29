//
//  ContentView.swift
//  Nano2
//
//  Created by Anselmus Pavel Adriska on 24/07/22.
//

import SwiftUI
import CTScanText

struct ContentView: View {
    @State var content = ""
    @State var title = ""
    @State var date = Date()
    
    var body: some View {
        VStack {
            // Header view
            //            ZStack {
            //                HStack {
            //                    Spacer()
            //
            //                    VStack(alignment: .center, spacing: 8) {
            //                        Image(systemName: "checkmark.circle.fill")
            //                            .font(.largeTitle)
            //                            .foregroundColor(.green)
            //                        Text("Log Book")
            //                            .font(.caption2)
            //                            .fontWeight(.medium)
            //                    }
            //
            //                    Group {
            //                        Spacer()
            //                        Divider()
            //                        Spacer()
            //                    }
            //
            //                    VStack(alignment: .center, spacing: 8) {
            //                        Text("0")
            //                            .font(.largeTitle)
            //                            .fontWeight(.bold)
            //                        Text("Resources")
            //                            .font(.caption2)
            //                            .fontWeight(.medium)
            //                    }
            //
            //                    Group {
            //                        Spacer()
            //                        Divider()
            //                        Spacer()
            //                    }
            //
            //                    VStack(alignment: .center, spacing: 8) {
            //                        Text("2")
            //                            .font(.largeTitle)
            //                            .fontWeight(.bold)
            //                        Text("Reflections")
            //                            .font(.caption2)
            //                            .fontWeight(.medium)
            //                    }
            //
            //                    Spacer()
            //                }
            //                .background(.white)
            //                .frame(height: 80)
            //                .padding()
            //            }
            //            .background(.red)
            //            .cornerRadius(20)
            //            .offset(y: -50)
            
            List {
                Section(header: Text("Log Book")) {
                    HStack {
//                        DailyStatus(status: "Done", text: "dd/mm")
//                        Spacer()
//                        DailyStatus(status: "Not Done", text: "dd/mm")
//                        Spacer()
//                        DailyStatus(status: "Done", text: "Today")
//                        Spacer()
//                        DailyStatus(status: "Not Done", text: "dd/mm")
//                        Spacer()
//                        DailyStatus(status: "Not Done", text: "dd/mm")
                    }
                }
                .headerProminence(.increased)
                
                Section {
                    //                    ResourceListView()
                    Text("Tes123")
                    Text("Tes123")
                } header: {
                    HStack {
                        Text("Recent Resource")
                        Spacer()
                        Button("See all") {
                            //                        self.selection = 2
                        }
                        .font(.callout)
                    }
                }
                .headerProminence(.increased)
                
                Section {
                    Text("Tes123")
                    Text("Tes123")
                    Text("Tes123")
                } header: {
                    HStack {
                        Text("Recent Reflection")
                        Spacer()
                        Button("See all") {
                            //                        self.selection = 3
                        }
                        .font(.callout)
                    }
                }
                .headerProminence(.increased)
            }
        }
    }
}

//2.0
//VStack(spacing: 0) {
//    //Header
//    ZStack {
//        VStack {
//            HStack {
//                VStack(alignment: .leading) {
//                    Text("22 July 2022")
//                    Text("Today's Activity")
//                }
//                Spacer()
//                Circle()
//                    .frame(width: 50, height: 50)
//            }
//            HStack {
//                VStack(spacing: 12) {
//                    Image(systemName: "checkmark")
//                    Text("Log Book")
//                }
//                .padding()
//                
////                        Divider()
//                
//                VStack(spacing: 12) {
//                    Image(systemName: "checkmark")
//                    Text("Log Book")
//                }
//                .padding()
//                
////                        Divider()
//                
//                VStack(spacing: 12) {
//                    Image(systemName: "checkmark")
//                    Text("Log Book")
//                }
//                .padding()
//            }
//            .background(.white)
//            .offset(y: 50)
////                    .padding()
//        }
//        .padding()
//        .padding(.top, 20)
//    }
//    .frame(maxWidth: .infinity)
//    .background(.red)
//    .padding(0)
//    .cornerRadius(10)
//    .ignoresSafeArea()
//    
//    
//        //Date
//        //Today's activity + ProfPic
//        //Rectagle
//    //List
//    List {
//        Text("123")
//        Text("123")
//        Text("123")
//        Text("123")
//        Text("123")
//        Text("123")
//        Text("123")
//        Text("123")
//        Text("123")
//    }
//}
//.ignoresSafeArea()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
