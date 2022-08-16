//
//  Profile.swift
//  UniList
//
//  Created by Adi Krena on 14/08/22.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack {
            CircleImage(image: Image("profile"))
                .frame(width: 200, height: 200)
                .padding(.top, 150)
            Text("Adi Krena")
                .font(.title)
            Text("adikw2000@gmail.com")
                .font(.subheadline)
            Spacer()
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
