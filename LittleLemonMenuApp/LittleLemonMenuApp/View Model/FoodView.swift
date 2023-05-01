//
//  FoodView.swift
//  LittleLemonMenuApp
//
//  Created by Jessi Zimmerman on 4/29/23.
//

import SwiftUI

struct FoodView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    let dish: Dish
    var body: some View {
        VStack(alignment: .leading){
            AsyncImage(url: URL(string: (dish.image) ?? "")){ image in
                    image.resizable()
                .aspectRatio(contentMode: .fit)
        } placeholder: {
            ProgressView()
        }
        .clipShape(Rectangle())
        .frame(minHeight: 150)
            Text("\(dish.title!)").font(.custom("Karla-Regular_Bold", size: 18))
                .padding(2)
            Text("\(dish.dishDescription!)").font(.custom("Karla-Regular", size: 16)).lineLimit(2)
                .padding(2)
            Text("$\(dish.price!)").font(.custom("Karla-Regular_Medium", size: 16))

            Spacer()
        }
    }
}

struct FoodView_Previews: PreviewProvider {
    static var previews: some View {
        FoodView(dish: PersistenceController.oneDish())
    }
}
