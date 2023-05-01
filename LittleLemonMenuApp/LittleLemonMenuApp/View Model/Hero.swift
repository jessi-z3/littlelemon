//
//  Hero.swift
//  LittleLemonMenuApp
//
//  Created by Jessi Zimmerman on 4/29/23.
//

import SwiftUI

struct Hero: View {

    @Environment(\.managedObjectContext) private var viewContext
    var body: some View {
        VStack{
            Text("Little Lemon")
                .font(Font.custom("MarkaziText-Medium", size: 60)).padding(.top).frame(width: 390, height: 30, alignment: .leading)
                .foregroundColor(Color("llyellow"))
            HStack{
                VStack{
                    Text("Chicago").font(Font.custom("MarkaziText-Medium", size: 40)).frame(width: 225, alignment: .leading)
                    Text("We are a family owned Mediterranean restaurant, focused on traditional recipes served with a modern twist.").font(.custom("Karla-Regular-Medium", size: 18)).frame(width: 225, alignment: .leading)
                }
                .foregroundColor(Color("llwhite"))
                Image("Hero image")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .cornerRadius(15)
            }
        }.padding(5)
    .frame(maxWidth: .greatestFiniteMagnitude, maxHeight: 250)
    .background(Color("llgreen"))
    .foregroundColor(Color("llblack"))
    .font(.title3)
    }
}

struct Hero_Previews: PreviewProvider {
    static var previews: some View {
        Hero()
    }
}
