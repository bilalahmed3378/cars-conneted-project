//
//  Turn On Location.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 27/07/2022.
//

import SwiftUI

struct Turn_On_Location: View {
    
    var body: some View {
        
        VStack{
            
            Events_Top_bar()
            
            ScrollView(.horizontal,showsIndicators: false){
                
                HStack{
                    
                    Text("My Events")
                        .fontWeight(.medium)
                        .padding(10)
                        .padding(.leading,5)
                        .padding(.trailing,5)
                        .overlay(Color.gray.opacity(0.3))
                        .cornerRadius(100)
                    
                    
                    Text("Registered")
                        .padding(10)
                        .padding(.leading,5)
                        .padding(.trailing,5)
                        .overlay(Color.gray.opacity(0.3))
                        .cornerRadius(100)
                    
                    
                    Text("Nearby")
                        .foregroundColor(.white)
                        .padding(10)
                        .padding(.leading,5)
                        .padding(.trailing,5)
                        .background(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing))                             .cornerRadius(100)
                    
                    Text("Nearby")
                        .padding(10)
                        .padding(.leading,5)
                        .padding(.trailing,5)                        .overlay(Color.gray.opacity(0.3))
                        .cornerRadius(100)
                    Text("Nearby")
                        .padding(10)
                        .padding(.leading,5)
                        .padding(.trailing,5)                        .overlay(Color.gray.opacity(0.3))
                        .cornerRadius(100)
                    
                    
                    
                }.padding(.top,10)
                
            }
            
            Spacer()
            
            Text("Turn on your Location to see nearby events.")
                .foregroundColor(.gray)
            
            HStack{
                
                Text("Turn On")
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                
                
                Image("locationIcon")
                    .resizable()
                    .frame(width: 17, height: 25)
                
                
            }.padding(10)
                .background(Color.blue)
                .cornerRadius(50)
                .padding(.top,10)

            
            
            Spacer()
            
          
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Turn_On_Location_Previews: PreviewProvider {
    static var previews: some View {
        Turn_On_Location()
    }
}
