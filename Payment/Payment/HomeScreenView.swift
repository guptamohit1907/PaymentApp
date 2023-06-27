//
//  HomeScreenView.swift
//  Payment
//
//  Created by Mohit Gupta on 28/06/23.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        NavigationView {
            Color(.systemBlue)
                .ignoresSafeArea(.all)
            .overlay(
                VStack{
                    Text("Hello World")
                    Text("Hello World")
                }
            )
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
