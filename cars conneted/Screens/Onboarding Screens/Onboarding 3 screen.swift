//
//  Onboarding 3 screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 18/08/2022.
//

import SwiftUI

struct Onboarding_3_screen: View {
    var body: some View {
        ZStack{
            Image("")
        VStack{
            HStack{
                
                Spacer()
                Button(action: {}, label: {
                    Text("Skip")
                        .font(AppFonts.regular_14)
                        .foregroundColor(AppColors.redGradientColor1)
                })
               
                
            }.padding(24)
                .padding(.trailing)
            
            HStack{
                Image("unsplash_Aqt08E8JzEc")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 377, height: 390)
            }
            
            HStack{
                Text("Local & global events")
                    .font(AppFonts.semiBold_22)
            }.padding(24)
                
            HStack{
                Text("View local and global events around you. Change your proximity settings to local events within a radius. Post your own events with cars connected.")
                    .font(AppFonts.regular_14)
                    .foregroundColor(.gray)
            }.padding(24)
            
            HStack{
                Image("Ellipse 3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 10, height: 10)
                
                Image("Ellipse 3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 10, height: 10)
                
                Image("Rectangle 7")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 10)
                
                Image("Ellipse 3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 10, height: 10)
            }.frame(width: 80, height: 10)
            
            HStack{
            Button(action: {}, label: {
                Text("Next")
                    .font(AppFonts.semiBold_16)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(width: 350, height: 70)
                    .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
            })
            .padding(.top,30)
            }
            Spacer()
        }
            
        }
        
    }
}

struct Onboarding_3_screen_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_3_screen()
    }
}
