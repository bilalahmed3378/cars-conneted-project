//
//  Proximity Screen 2.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 20/08/2022.
//

import SwiftUI

struct Proximity_Screen_2: View {
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
                
                Spacer()
                
                
                
            }.padding(.leading,20)
                .padding(.trailing,20)
                .padding(.top,20)
            
        }  .padding(.top,40)
            .padding(.bottom,30)
            .background(
                Image("home screen background")
                .resizable())
            
          
            Image("lf30_0z2egcd1.json]")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.widthBlockSize*80, height: UIScreen.heightBlockSize*50)
            
            Text("Sorry, We couldn’t find any results.")
                .font(AppFonts.regular_12)
            
            Text("Increase your radius.")
                .font(AppFonts.regular_12)
                .foregroundColor(AppColors.redGradientColor1)
            
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct Proximity_Screen_2_Previews: PreviewProvider {
    static var previews: some View {
        Proximity_Screen_2()
    }
}
