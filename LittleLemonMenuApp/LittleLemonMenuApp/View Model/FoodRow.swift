//
//  FoodRow.swift
//  LittleLemonMenuApp
//
//  Created by Jessi Zimmerman on 4/29/23.
//

import SwiftUI

struct FoodRow: View {
    let dish: Dish
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading){
                    Text("\(dish.title!)").font(.custom("Karla-Regular_Bold", size: 18))
                        .padding(2)
                    Text("\(dish.dishDescription!)").font(.custom("Karla-Regular", size: 16)).lineLimit(2)
                        .padding(2)
                    Text("$\(dish.price!)").font(.custom("Karla-Regular_Medium", size: 16))
                }
                Spacer()
                AsyncImage(url: URL(string: (dish.image) ?? "")){ image in
                    image.resizable()
                        .frame(width: 100, height: 100)
                        .aspectRatio(contentMode: .fit)
                } placeholder: {
                    ProgressView()
                }
                .padding(10)
            }
        }
    }
}

struct FoodRow_Previews: PreviewProvider {
    static var previews: some View {
        FoodRow(dish: PersistenceController.oneDish())
    }
}
