//
//  HikingDetail.swift
//  Hiking
//
//  Created by Anupam G on 19/05/22.
//

import SwiftUI

struct HikingDetail: View {
    let hike : Hike
    @State private var zoomed  = false
    var body: some View {
        VStack{
            Image(hike.imageUrl)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation{
                        self.zoomed.toggle()
                    }
                }
            Text(hike.name)
                .font(.title)
            Text(String(format: "%.2f miles", hike.miles))
                .font(.title2)
        }
        .navigationBarTitle(Text(hike.name),displayMode: .inline)
    }
}

struct HikingDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikingDetail(hike: Hike.all().first!)
    }
}
