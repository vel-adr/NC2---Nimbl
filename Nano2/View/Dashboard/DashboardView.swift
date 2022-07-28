//
//  DashboardView.swift
//  Nano2
//
//  Created by Anselmus Pavel Adriska on 25/07/22.
//

import SwiftUI

struct DashboardView: View {
    @EnvironmentObject var logBookVM: LogBookViewModel
    @EnvironmentObject var resourceVM: ResourceViewModel
    @EnvironmentObject var reflectionVM: ReflectionViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Rectangle()
                        .fill(.orange)
                        .frame(maxHeight: 155)
                        .cornerRadius(20)
                        .ignoresSafeArea()
                    
                    Spacer()
                }
                
                VStack(spacing: 16) {
                    Group {
                        //Date & Title
                        HStack {
                            VStack(alignment: .leading, spacing: 8) {
                                Text("22 July 2022")
                                    .font(.headline)
                                Text("Today's Activity:")
                                    .font(.title2)
                                    .bold()
                            }
                            
                            Spacer()
                            
                            //Uncomment when user is ready
                            //                        Circle()
                            //                            .frame(width: 50, height: 50)
                        }
                        
                        //3 items of today activity
                        DailyStatusBar()
                    }
                    .padding(.horizontal)
                    .zIndex(3)
                    
                    
                    List {
                        //Today's log book section
                        Section {
                            if logBookVM.selectedLogBook.description == "" {
                                Text("There are no resource yet.")
                                    .foregroundColor(.secondary)
                                    .font(.footnote)
                            } else {
                                Text(logBookVM.selectedLogBook.description)
                                    .font(.footnote)
                            }
                        } header: {
                            Text("Today's Log Book")
                        }
                        .headerProminence(.increased)
                        
                        //Resource section
                        Section {
                            if resourceVM.fetchRecent().count > 0 {
                                ForEach(resourceVM.fetchRecent(), id: \.id) { el in
                                    NavigationLink {
                                        AddNewResourceView(selectedResource: el, mode: "Edit")
                                    } label: {
                                        ListItemView(title: el.title, date: el.updateTime.formatted(.dateTime.day().month().year()), description: el.description)
                                    }
                                }
                            } else {
                                Text("There are no resource yet.")
                                    .foregroundColor(.secondary)
                                    .font(.footnote)
                            }
                            
                        } header: {
                            Text("Recent Resource")
                        }
                        .headerProminence(.increased)

                        
                        Section {
                            ForEach(resourceVM.fetchRecent(), id: \.id) { el in
                                NavigationLink {
                                    AddNewResourceView(selectedResource: el, mode: "Edit")
                                } label: {
                                    ListItemView(title: el.title, date: "dd/mm/yyyy", description: el.description)
                                }
                            }
                        } header: {
                            Text("Recent Reflection")
                        }
                        .headerProminence(.increased)
                    }
                    .listStyle(.insetGrouped)
                    .padding(.top, -24)
                }
            }
            .background(Color("BgColor"))
        .navigationBarHidden(true)
        }
        
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
            .environmentObject(ResourceViewModel())
            .environmentObject(LogBookViewModel())
    }
}
