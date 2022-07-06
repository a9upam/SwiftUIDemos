//
//  FlagDetailView.swift
//  FlagOfTheWorld
//
//  Created by Anupam G on 02/06/22.
//

import SwiftUI

struct FlagDetailView: View {
    
    var flag : String
    @Binding  var country : String
    @Binding var showModel : Bool
    var body: some View {
        VStack{
            Text(flag)
                .font(.custom("Arial", size: 200))
            TextField("Country", text: $country)
                .padding()
                .border(.gray, width: 2)
                .fixedSize()
            Button("Submit"){
                showModel.toggle()
            }
        }
        
    }
}

struct FlagDetailView_Previews: PreviewProvider {
    static var previews: some View {
//        FlagDetailView(flag: .constant("🇧🇧"))
        FlagDetailView(flag: "🇧🇧", country: .constant("A"), showModel: .constant(false))
    }
}
