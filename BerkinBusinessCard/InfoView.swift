//
//  InfoView.swift
//  BerkinBusinessCard
//
//  Created by Berkin Koca on 5.02.2023.
//

import SwiftUI

struct InfoView: View {
     let text : String
     let imageName : String
     
     var body: some View {
          RoundedRectangle(cornerRadius: 30)
               .frame(height: 50)
               .foregroundColor(.white)
               .overlay(HStack {
                    Image(systemName: imageName)
                         .foregroundColor(Color.yellow)
                    Text(text)
                         .foregroundColor(Color(UIColor(red: 0.42, green: 0.36, blue: 0.91, alpha: 1)))
               })
               .padding(.all)
     }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello World!", imageName: "phone.fill")
              .previewLayout(.sizeThatFits)
    }
}
