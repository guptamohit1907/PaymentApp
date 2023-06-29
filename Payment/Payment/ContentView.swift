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
                    VStack(alignment: .leading, spacing: 15) {
                        Spacer()
                        Text("Revolutianize Your Bank").font(.title).foregroundColor(.white)
                        Text("Make Your Banking More").font(.body).foregroundColor(.white)
                        Text("Simple Secure and Convenient").font(.body).foregroundColor(.white)
                        VStack(alignment: .leading){
                            HStack{
                                Text("Get Started").font(.body).foregroundColor(.white)
                                MyDraggableButtonComponent()
                            }
                        }
                    }
                )
        }
    }
}

struct MyDraggableButtonComponent: View {
    @State private var buttonOffset: CGSize = .zero
    @State private var dragging = false
    
    var body: some View {
            let dragGesture = DragGesture()
                .onChanged { value in
                    let translation = value.translation.width
                    if translation > 0 {
                        buttonOffset = CGSize(width: translation, height: 0)
                        dragging = true
                    }
                }
                .onEnded { value in
                    if buttonOffset.width > 10 {
                        NavigationLink("", destination:  HomeScreenView())
                        
                    }
                    
                    withAnimation {
                        buttonOffset = .zero
                        dragging = false
                    }
                }
            return Button(action: {
                HomeScreenView()
            })
        {
                withAnimation {
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.blue)
                        .frame(width: 350, height: 80)
                        .cornerRadius(10)
                        .offset(buttonOffset)
                        .multilineTextAlignment(.center)
                        .gesture(dragGesture)
                        .background(Color.white)
                }.background(Color.white)
                    .cornerRadius(40)
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
