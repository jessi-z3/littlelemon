//
//  Home.swift
//  LittleLemon
//
//  Created by Jessi Zimmerman on 4/24/23.
//

import SwiftUI

struct Home: View {
    @Environment(\.managedObjectContext) private var viewContext
    let persistence = PersistenceController.shared
    
    var body: some View {
        VStack{
            TabView{
                Menu().environment(\.managedObjectContext, persistence.container.viewContext)
                    .tabItem({
                        Label("Menu", systemImage: "list.dash")
                    })
                UserProfile()
                    .tabItem({
                        Label("Profile", systemImage: "square.and.pencil")
                    })
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home().environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
    }
}
