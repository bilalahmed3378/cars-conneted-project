//
//  My Events.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 27/07/2022.
//

import SwiftUI

struct My_Events: View {
    var body: some View {
        
        VStack{
            
            Events_Top_bar()
            
            ScrollView(.horizontal,showsIndicators: false){
                
                HStack{
                    
                    Text("My Events")
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding(10)
                        .padding(.leading,5)
                        .padding(.trailing,5)
                        .background(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(100)
                    
                    
                    Text("Registered")
                        .padding(10)
                        .padding(.leading,5)
                        .padding(.trailing,5)
                        .overlay(Color.gray.opacity(0.3))
                        .cornerRadius(100)
                    
                    
                    Text("Nearby")
                        .padding(10)
                        .padding(.leading,5)
                        .padding(.trailing,5)
                        .overlay(Color.gray.opacity(0.3))
                        .cornerRadius(100)
                    
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
            
            
            ScrollView(.vertical,showsIndicators: false){
                
                VStack{
                    
                    Event_Card()
                    Event_Card()
                    Event_Card()
                    Event_Card()

                    
                }.padding(.leading,20)
                    .padding(.trailing,20)
                    .padding(.top,10)

            }
            
          
            
        }.edgesIgnoringSafeArea(.all)
        
        
    }
}

struct My_Events_Previews: PreviewProvider {
    static var previews: some View {
        My_Events()
    }
}
