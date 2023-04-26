//
//  Onboarding.swift
//  LittleLemon
//
//  Created by Jessi Zimmerman on 4/23/23.
//
let kFirstName = "first name key"
let kLastName = "last name key"
let kEmail = "email key"

import SwiftUI

struct Onboarding: View {
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var pressed = false
    @State var validated = false
    @State var oops = false
    var body: some View {
        VStack{
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
                pressed.toggle()
                if (!firstName.isEmpty && !lastName.isEmpty && !email.isEmpty){
                    UserDefaults.standard.set(firstName, forKey: kFirstName)
                    UserDefaults.standard.set(lastName, forKey: kLastName)
                    UserDefaults.standard.set(email, forKey: kEmail)
                    validated.toggle()
                }else {
                    oops.toggle()
                }
            }
            .background(RoundedRectangle(cornerRadius: 8).fill(Color("llyellow")).frame(width: 150, height: 40))
            .alert(isPresented:$pressed){
                Alert(title: validated ? Text("Welcome. We're glad to have you.") :
            Text("Oops! Some infomration is missing."))
            }

        }
        .padding(50)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("llgreen"))
        .foregroundColor(Color("llblack"))
        .font(.title3)
    }
    
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
