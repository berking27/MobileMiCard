//
//  ContentView.swift
//  BerkinBusinessCard
//
//  Created by Berkin Koca on 5.02.2023.
//

import SwiftUI

struct ContentView: View {
     var body: some View {
          ZStack{
               Color(UIColor(red: 0.42, green: 0.36, blue: 0.91, alpha: 0.8)) //you can easily paste from uicolor.io
                    .edgesIgnoringSafeArea(.all)
               VStack {
                    
                    Image("berkin")
                         .resizable()
                         .aspectRatio(contentMode: .fit)
                         .frame(width: 170.0, height: 200.0)
                         .clipShape(Circle())
                         .overlay(
                              Circle().stroke(Color.white,lineWidth: 5)
                         )
                         
                    Text("Berkin Koca")
                         .font(Font.custom("Pacifico-Regular", size: 40))
                         .fontWeight(.bold)
                         .padding()
                    .foregroundColor(Color(hue: 0.134, saturation: 0.939, brightness: 0.928, opacity: 0.935))
                    Text("Software Engineering Student")
                         .foregroundColor(.yellow)
                         .font(.system(size: 25))
                    Divider()
                    InfoView(text: "+90 535 020 03 35", imageName: "phone.fill")
                    InfoView(text: "berkin.koca01@gmail.com", imageName: "envelope.fill")
                    
               }
          }
          
     }
}

struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
          ContentView()
     }
}

