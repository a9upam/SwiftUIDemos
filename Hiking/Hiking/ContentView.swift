//
//  ContentView.swift
//  Hiking
//
//  Created by Anupam G on 18/05/22.
//

import SwiftUI

struct ContentView: View {
    let hikes = Hike.all()
    
    var body: some View {
        NavigationView{
            List(self.hikes,id:\.name){ hike in
                NavigationLink(destination: HikingDetail(hike: hike)) {
                    HikeCell(hike: hike)
                }
            }
            .navigationTitle("Hikings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    let hike : Hike
    var body: some View {
        HStack{
            Image(hike.imageUrl)
                .resizable()
                .frame(width: 80
                       , height: 80, alignment: .center)
                .clipShape(Circle())
            VStack(alignment: .leading){
                Text(hike.name)
                    .font(.title)
                Text(String(format: "%.2f miles", hike.miles))
                    .font(.subheadline)
            }
        }
    }
}
