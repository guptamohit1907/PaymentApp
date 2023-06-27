//
//  ContentView.swift
//  Payment
//
//  Created by Mohit Gupta on 28/06/23.
//

import SwiftUI



struct ContentView: View {
    @State private var showWelcomeView = false
    
    var body: some View {
        NavigationView {
            Color(.systemBlue)
                .ignoresSafeArea(.all)
                .overlay(
                    VStack(alignment: .leading, spacing: 10) {
                        Spacer()
                        Text("Revolutianize Your Bank").font(.title)
                        Text("Make Your Banking More").font(.body).foregroundColor(.white)
                        Text("Simple Secure and Convenient").font(.body).foregroundColor(.white)
                        
                        
                        Button(action: {
                            showWelcomeView = true
                        }
                         , label: {
                            Text("Get Started")
                                .foregroundColor(.white)
                        })
                        NavigationLink("", destination:  HomeScreenView(), isActive: $showWelcomeView)
                            .navigationBarBackButtonHidden(true)
                            
                    }.padding(.bottom)
                        .padding(.leading)
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
