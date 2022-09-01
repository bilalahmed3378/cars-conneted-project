//
//  Proximity Screen 3.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 20/08/2022.
//

import SwiftUI

struct Proximity_Screen_3: View {
    @Environment(\.presentationMode) var presentaionMode
    var body: some View {
        VStack{
        
        VStack{
            
           
            HStack{
                Button(action: {
                  
                }, label: {
                    Image("back icon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 35, height: 35)
                })
              
                
               Spacer()
                
                Text("Proximity Location")
                    .foregroundColor(.white)
                    .font(AppFonts.SemiBold_20)
                    .offset(x: -15)
                Spacer()
                
                
                
            }.padding(.leading,20)
                .padding(.trailing,20)
                .padding(.top,20)
            
        }  .padding(.top,40)
            .padding(.bottom,30)
            .background(
                Image("home screen background")
                .resizable())
            
          
         Spacer()
            
            Text("No feeds found.")
                .font(AppFonts.semiBold_24)
                .foregroundColor(AppColors.redGradientColor1)
                .padding()
            
            Text("Change your proximity settings to enhance your search")
                .font(AppFonts.regular_14)
               
            
            Image("Vector-1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.widthBlockSize*10, height: UIScreen.heightBlockSize*10)
            
            
            Spacer()
        }.edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
    }
}

struct Proximity_Screen_3_Previews: PreviewProvider {
    static var previews: some View {
        Proximity_Screen_3()
    }
}
