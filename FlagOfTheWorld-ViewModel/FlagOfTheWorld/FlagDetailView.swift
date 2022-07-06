//
//  FlagDetailView.swift
//  FlagOfTheWorld
//
//  Created by Anupam G on 02/06/22.
//

import SwiftUI

struct FlagDetailView: View {
    
//    var flag : String
//    @Binding  var country : String
//    @Binding var showModel : Bool
    
    @Binding var flagViewModel : FlagViewModel
    var body: some View {
        VStack{
            Text(flagViewModel.flag)
                .font(.custom("Arial", size: 200))
            TextField("Country", text: $flagViewModel.country)
                .padding()
                .border(.gray, width: 2)
                .fixedSize()
            Button("Submit"){
                self.flagViewModel.showModel.toggle()
            }
        }
        
    }
}

struct FlagDetailView_Previews: PreviewProvider {
    static var previews: some View {
//        FlagDetailView(flag: .constant("🇧🇧"))
        FlagDetailView(flagViewModel: .constant(FlagViewModel()))
    }
}
