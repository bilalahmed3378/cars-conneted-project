//
//  Onboarding 4 screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 18/08/2022.
//

import SwiftUI

struct Onboarding_4_screen: View {
    var body: some View {
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
                Image("unsplasbhbh_qyfco1nfMtg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 377, height: 390)
            }
            
            HStack{
                Text("Setup & join clubs")
                    .font(AppFonts.semiBold_22)
            }.padding(24)
                
            HStack{
                Text("Setup your own club and invite people to join and post within cars connected. The group chat features allows user to participate in a group converstation to share ideas and media.")
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
                
              
                Image("Ellipse 3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 10, height: 10)
                
                Image("Rectangle 7")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 10)
                
                
            }.frame(width: 80, height: 10)
            
            HStack{
            Button(action: {}, label: {
                Text("Get Started")
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

struct Onboarding_4_screen_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_4_screen()
    }
}
