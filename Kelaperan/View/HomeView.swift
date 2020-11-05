//
//  HomeView.swift
//  Kelaperan
//
//  Created by Andika on 10/30/20.
//  Copyright © 2020 Muhammad Rizki Andika. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var showAccountSheet: Bool = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                List(foodItems, id: \.id) { food in
                    NavigationLink(destination: FoodDetailView(foodData: food)) {
                        FoodListRow(foodData: food)
                    }
                }
            }
            .navigationBarTitle("Beranda")
            .navigationBarItems(trailing: Button(action: {
                self.showAccountSheet.toggle()
            }) {
                Image(systemName: "person.crop.circle")
                    .imageScale(.large)
            }.sheet(isPresented: self.$showAccountSheet) {
                NavigationView {
                    ProfileView(showAccountSheet: self.$showAccountSheet)
                }
            })
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
