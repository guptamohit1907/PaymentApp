//
//  HomeScreenView.swift
//  Payment
//
//  Created by Mohit Gupta on 28/06/23.
//

import SwiftUI


struct HomeScreenView: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem {
                    Label("", systemImage: "house")
                }
            Text("Search")
                .tabItem {
                    Label("", systemImage: "magnifyingglass")
                }
            Text("Notification")
                .tabItem {
                    Label("", systemImage: "bell")
                }
            Text("Settings")
                .tabItem {
                    Label("", systemImage: "gearshape")
                }
        }.background(Color.blue)
        NavigationView {
            Color(.systemBlue)
                .ignoresSafeArea(.all)
            .overlay(
               
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("$ 3,887.65").bold().font(.title)
                    Text("Available Balance").font(.body)
                    HStack(spacing: 50) {
                        Button(action: {
                            print("First button is tapped")
                        }) {
                            VStack{
                                Image(systemName: "arrow.up.right")
                                           .imageScale(.large)
                                           .tint(Color.black)
                                Text("Send")
                            }
                            
                        }
                        Button(action: {
                            print("Second button is tapped")
                        }) {
                            VStack{
                                Image(systemName: "arrow.down.left")
                                    .imageScale(.large)
                                Text("Request")
                            }
                        }
                        Button(action: {
                            print("Third button is tapped")
                        }) {
                            VStack{
                                Image(systemName: "divide")
                                    .imageScale(.large)
                                Text("Loan")
                            }
                        }
                        Button(action: {
                            print("Fourth button is tapped")
                        }) {
                            VStack{
                                Image(systemName: "plus.square")
                                    .imageScale(.large)
                                Text("Topup")
                            }
                        }
                    }.padding(.horizontal)
                    Spacer()
                    
                }.foregroundColor(.white)
                    .padding(.top)
                    .padding(.leading)
            )
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
