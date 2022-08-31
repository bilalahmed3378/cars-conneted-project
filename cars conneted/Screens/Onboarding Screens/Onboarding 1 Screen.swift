//
//  Onboarding 1 Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 18/08/2022.
//

import SwiftUI

struct Onboarding_1_Screen: View {
    var body: some View {
        ZStack{
            
            VStack{
                HStack{
                Image("Group 8725")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.widthBlockSize*50, height: UIScreen.heightBlockSize*40)
                    Spacer()
                }
                Spacer()
            }.edgesIgnoringSafeArea(.top)
            
            
        VStack{
            Group{
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
                Image("unsplash_qyfco1nfMtg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*50)
            }
            
            Spacer()
            
            HStack{
                Text("Create your virtual garage")
                    .font(AppFonts.semiBold_22)
            }.padding(.leading)
                .padding(.trailing)
                .padding(.bottom,10)
            
            Spacer()
            
            HStack{
                Text("Setup your virtual garage, add your most favourate cars collection to it. You can share your garage and cars within the community and with your followers, friends.")
                    .font(AppFonts.regular_14)
                    .foregroundColor(.gray)
            }.padding(.leading)
                .padding(.trailing)
              
            Spacer()
            }
            
            HStack{
                Image("Rectangle 7")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 10)
                
                Image("Ellipse 3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 10, height: 10)
                
                Image("Ellipse 3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 10, height: 10)
                
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
           
            }
            Spacer()
           
        }
            
            
        } .navigationBarHidden(true)
    }
}

struct Onboarding_1_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_1_Screen()
    }
}
