//
//  ContentView.swift
//  Friends Face
//
//  Created by RANGA REDDY NUKALA on 01/10/20.
//

import SwiftUI

struct ContentView: View {

    let users: [User] = Bundle.main.decode("FriendsFace.json")
    var body: some View {
        List(users) { user in
            HStack {
                Text(user.name!)
                Text(user.company!)
                    .foregroundColor(.gray)
                    .font(.subheadline)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
