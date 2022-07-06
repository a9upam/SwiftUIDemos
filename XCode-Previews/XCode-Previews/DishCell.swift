//
//  DishCell.swift
//  XCode-Previews
//
//  Created by Anupam G on 27/05/22.
//

import Foundation
import SwiftUI

struct DishCell : View{
    var dish : Dish
    var body: some View{
//        NavigationView{
            HStack{
                Image(dish.imageURL).resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .clipShape(Circle())
                
                VStack(alignment: .leading){
                    Text(dish.name)
                        .font(.title)
                        .foregroundColor(.red)
                    
                    Text(String(format: "%.2f $", dish.price))
                        .font(.subheadline)
                        .foregroundColor(.green)
                }
            }
            
//        }
    }
}

#if DEBUG

struct DishCell_Preview : PreviewProvider{
    static var previews: some View{
        DishCell(dish: Dish.allDish().first!)
        
        /*
        Group{
            //Color Scheme .light and .dark mode
            DishCell().colorScheme(.dark).previewLayout(.sizeThatFits)
            //Diffrent Devices
            DishCell().previewDevice("iPhone SE")
            //Diffrent sizes
            DishCell()
                .previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraSmall)
            DishCell()
                .previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraLarge)
            DishCell()
                .previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraExtraLarge)
            DishCell()
                .previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraExtraExtraLarge)
        }
    }
    */
    }
}

#endif
