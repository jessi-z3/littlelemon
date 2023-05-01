//
//  Onboarding.swift
//  LittleLemon
//
//  Created by Jessi Zimmerman on 4/23/23.
//
let kFirstName = "first name key"
let kLastName = "last name key"
let kEmail = "email key"
let kIsLoggedIn = "kIsLoggedIn"

import SwiftUI

struct Onboarding: View {
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var pressed = false
    @State var validated = false
    @State var isLoggedIn = false
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: Home(), isActive: $isLoggedIn){
                    EmptyView()
                }
                Text("Welcome")
                    .foregroundColor(Color("llyellow"))
                    .font(.title)

                Spacer()
                TextField("First Name", text: $firstName)
                    .background(RoundedRectangle(cornerRadius: 8).fill(Color("llwhite")).frame(width: 325, height: 40)).padding(10);
                TextField("Last Name", text: $lastName).background(RoundedRectangle(cornerRadius: 8).fill(Color("llwhite")).frame(width: 325, height: 40)).padding(10)
                TextField("Email", text: $email).textContentType(.emailAddress).background(RoundedRectangle(cornerRadius: 8).fill(Color("llwhite")).frame(width: 325, height: 40)).padding(10)
                Spacer()
                Button("Register") {
                    pressed = true
                    if (!firstName.isEmpty && !lastName.isEmpty && !email.isEmpty){
                        UserDefaults.standard.set(firstName, forKey: kFirstName)
                        UserDefaults.standard.set(lastName, forKey: kLastName)
                        UserDefaults.standard.set(email, forKey: kEmail)
                        validated = true
                        UserDefaults.standard.set(true, forKey: kIsLoggedIn)
                        isLoggedIn = true
                    }else {
                        validated = false
                    }
                }
                .background(RoundedRectangle(cornerRadius: 8).fill(Color("llyellow")).frame(width: 150, height: 40))
            }
            .padding(50)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("llgreen"))
            .foregroundColor(Color("llblack"))
            .font(.title3)
            .onAppear(){
                if (UserDefaults.standard.bool(forKey: kIsLoggedIn)){
                    isLoggedIn = true
                }
            }
        }
    }
    
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
