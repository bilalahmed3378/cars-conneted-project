//
//  Onboarding 4 screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 18/08/2022.
//

import SwiftUI

struct Onboarding_4_screen: View {
    @State var nextScreen4 = false
    var body: some View {
        ZStack{
            
            NavigationLink(destination: Getting_Started_Screen(), isActive: $nextScreen4){
                EmptyView()
            }
            
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
                NavigationLink(destination: Getting_Started_Screen(), label: {
                    Text("Skip")
                        .font(AppFonts.regular_14)
                        .foregroundColor(AppColors.redGradientColor1)
               
                })
               
                
            }.padding(.leading)
                .padding(.trailing,30)
                .padding(.top,10)
            
            Spacer()
            
            HStack{
                Image("unsplasbhbh_qyfco1nfMtg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*50)
            }
            
            Spacer()
            
            HStack{
                Text("Setup & join clubs")
                    .font(AppFonts.semiBold_22)
            }
            .padding(.leading)
                .padding(.trailing)
                .padding(.bottom,10)
            
            Spacer()
                
            HStack{
                Text("Setup your own club and invite people to join and post within cars connected. The group chat features allows user to participate in a group converstation to share ideas and media.")
                    .font(AppFonts.regular_14)
                    .foregroundColor(.gray)
            }
            .padding(.leading)
                .padding(.trailing)
            
            Spacer()
            }
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
            
            Spacer()
            
            HStack{
            Button(action: {
                self.nextScreen4 = true
            }, label: {
                Text("Get Started")
                    .font(AppFonts.semiBold_16)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                    .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
            })
            .padding(.top,10)
            .padding(.bottom,10)
            }
           
        }
            
        } .navigationBarHidden(true)
    }
}

struct Onboarding_4_screen_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_4_screen()
    }
}
