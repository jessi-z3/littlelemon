//
//  Header.swift
//  LittleLemonMenuApp
//
//  Created by Jessi Zimmerman on 4/29/23.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack{
            Spacer(minLength: 100)
            Image("Logo")
            Spacer()
            Image("profile-image-placeholder").resizable().scaledToFit()
        }
        .frame(height: 50)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
