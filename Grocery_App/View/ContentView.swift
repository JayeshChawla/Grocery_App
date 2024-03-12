//
//  ContentView.swift
//  Grocery_App
//
//  Created by MACPC on 11/03/24.
//

import SwiftUI

struct ContentView: View {
    @State var shopView : Bool = false
    var body: some View {
        NavigationView{
            VStack(spacing : 50){
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                Text("We delivered Grocery at your doorstep")
                    .font(.system(size: 42, weight: .bold, design: .rounded))
                    .multilineTextAlignment(.center)
                    .lineLimit(3)
                    .truncationMode(.tail)
                    .frame(width: 320, height: 160) // Adjust the frame size as needed

                    

                Text("Grocerr gaves you a fresh vegetabels and fruits, \n Order a fresh at your Grocerr")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                    .padding(.horizontal,10)

                NavigationLink(destination: Shop(), isActive: $shopView, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 50)
                        Text("Get Start")
                            .foregroundColor(.white)
                            .bold()
                    }
                    .frame(width: 200, height: 70)
                        .foregroundColor(.purple)
                        .padding()
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
