//
//  ProfileView.swift
//  Kelaperan
//
//  Created by Andika on 10/30/20.
//  Copyright © 2020 Muhammad Rizki Andika. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    @Binding var showAccountSheet: Bool
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        ScrollView {
            Image("Account")
                .resizable()
                .frame(width: 128.0, height: 128.0)
                .clipShape(Circle())
            
            Text("Muhammad Rizki Andika")
                .bold()
                .padding(.top, 14.0)
            
            Text("Universitas Telkom")
                .font(.system(size: 14))
                .foregroundColor(Color(UIColor.systemGray))
            
            }.padding()
        .navigationBarTitle(Text("Akun"), displayMode: .inline)
        .navigationBarItems(trailing: Button(action: {
            self.showAccountSheet = false
        }) {
            Text("Done").bold()
        })
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(showAccountSheet: .constant(true))
    }
}
