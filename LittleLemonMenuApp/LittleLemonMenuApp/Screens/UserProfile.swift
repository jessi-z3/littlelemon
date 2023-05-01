//
//  UserProfile.swift
//  LittleLemon
//
//  Created by Jessi Zimmerman on 4/25/23.
//

import SwiftUI

struct UserProfile: View {
    
    let firstName = UserDefaults.standard.string(forKey: kFirstName)
    let lastName = UserDefaults.standard.string(forKey: kLastName)
    let email = UserDefaults.standard.string(forKey: kEmail)
    
    @Environment(\.presentationMode) var presentation

    var body: some View {
        VStack{
            HStack{
                Text("Personal Information").font(Font.custom("MarkaziText-Medium", size: 40)).frame(alignment: .leading)
            }
            VStack(alignment: .leading){
                Image("profile-image-placeholder").resizable().scaledToFit()
                    .frame(height: 250).padding(.vertical)
                Text("First:" + (firstName ?? "")).font(.custom("Karla-Regular_Bold", size: 18))
                Text("Last:" + (lastName ?? "")).font(.custom("Karla-Regular_Bold", size: 18))
                Text("Email:" + (email ?? "")).font(.custom("Karla-Regular_Bold", size: 18))
            }
            Spacer()
            Button("Logout"){
                UserDefaults.standard.set(false, forKey: kIsLoggedIn)
                self.presentation.wrappedValue.dismiss()
            }
            .background(RoundedRectangle(cornerRadius: 8).fill(Color("llyellow")).frame(width: 150, height: 40))
            .foregroundColor(Color("llblack"))
            Spacer()
        }
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
