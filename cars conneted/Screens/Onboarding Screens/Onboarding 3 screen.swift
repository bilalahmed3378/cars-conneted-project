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
            
            VStack{
                HStack{
                    Spacer()
            Image("Group 8726")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.widthBlockSize*60, height: UIScreen.heightBlockSize*40)
                }
                Spacer()
            }.edgesIgnoringSafeArea(.top)
            
        VStack{
            Group{
            Spacer()
            
            HStack{
                
                Spacer()
                Button(action: {}, label: {
                    Text("Skip")
                        .font(AppFonts.regular_14)
                        .foregroundColor(AppColors.redGradientColor1)
                })
               
                
            }.padding(.leading)
                    .padding(.trailing)
            
            Spacer()
            
            HStack{
                Image("unsplash_Aqt08E8JzEc")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*50)
            }
            
            Spacer()
            
            HStack{
                Text("Local & global events")
                    .font(AppFonts.semiBold_22)
            }
            .padding(.leading)
                .padding(.trailing)
                .padding(.bottom,10)
            
            Spacer()
                
            HStack{
                Text("View local and global events around you. Change your proximity settings to local events within a radius. Post your own events with cars connected.")
                    .font(AppFonts.regular_14)
                    .foregroundColor(.gray)
            }
            .padding(.leading)
                .padding(.trailing)
            }
            Spacer()
            
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
            
            Spacer()
            
            HStack{
            Button(action: {}, label: {
                Text("Next")
                    .font(AppFonts.semiBold_16)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*8)
                    .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
            })
            .padding(.top,10)
            .padding(.bottom,10)
            }
          
        }
            
        } .navigationBarHidden(true)
        
    }
}

struct Onboarding_3_screen_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_3_screen()
    }
}
