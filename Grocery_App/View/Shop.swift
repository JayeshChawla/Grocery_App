//
//  Shop.swift
//  Grocery_App
//
//  Created by MACPC on 11/03/24.
//

import SwiftUI

struct Shop: View {
    
    @State var goToCart = false
    
    var body: some View {
        
        
        var coloums = [
            GridItem(.flexible()),
            GridItem(.flexible())
            
        ]
        var items : [[Any]] = shopItems
        NavigationView{
            VStack(spacing : 5){
                VStack{
                    Text("Goog Morning")
                        .frame(width: 320, alignment: .leading)
                        .foregroundColor(.gray)
                    Text("Lets ordere a fresh \n item for you!")
                        .font(.system(size: 38, weight: .semibold, design: .rounded))
                        .frame(width : 320  , alignment: .leading)
                    Spacer().frame(height :75)
                    Text("Fresh Items")
                        .frame(width : 320  , alignment: .leading)
                        .foregroundColor(.gray)
                }
                ScrollView{
                    LazyVGrid(columns : coloums , spacing: 30){
                        ForEach(0..<items.count, id: \.self) { item in
                            Shopitem(imageName: items[item][0] as! String, title: items[item][1] as! String, price: items[item][2] as! Double, color: items[item][3] as! Color, selfIndex: item)
                        }
                    }
                }.padding(15)
            }
            .navigationBarHidden(true)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(isActive: $goToCart, destination: {Cart()}, label: {Image(systemName: "cart")})
            }
    }

        
    }
}

struct Shop_Previews: PreviewProvider {
    static var previews: some View {
        Shop()
    }
}
