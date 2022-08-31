//
//  My Subscription details Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 22/08/2022.
//

import SwiftUI

struct My_Subscription_details_Screen: View {
    @Environment(\.presentationMode) var presentaionMode
    var body: some View {
        VStack{
            HStack{
                Image("Group")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                
                Spacer()
                
                Text("Membership")
                    .font(AppFonts.medium_20)
                
                Spacer()
            }.padding(24)
            
            HStack{
                Text("Your Subscription")
                    .foregroundColor(AppColors.redGradientColor1)
                    .font(AppFonts.semiBold_24)
                
                Spacer()
            }.padding(.leading,24)
                .padding(.bottom)
            
            HStack{
                Text("You have subscribed to our premium plan on 02-22-22")
                    Spacer()
            }.padding(.leading,24)
            
            HStack{
                Spacer()
                Text("View Invoice")
                    .font(AppFonts.semiBold_16)
            }
            .padding(.trailing,24)
            .padding(.bottom)
            
            Group{
            HStack{
                
                Text("E-mail")
                    .font(AppFonts.medium_12)
                Spacer()
                
                Text("jhonsmith@gmail.com")
                    .font(AppFonts.medium_12)
                
            }  .padding(.trailing,24)
                .padding(.bottom)
                .padding(.leading,24)
            
            
            HStack{
                
                Text("Name")
                    .font(AppFonts.medium_12)
                Spacer()
                
                Text("Jhon Smith")
                    .font(AppFonts.medium_12)
                
            }  .padding(.trailing,24)
                .padding(.bottom)
                .padding(.leading,24)
            
            
            HStack{
                
                Text("Start Date")
                    .font(AppFonts.medium_12)
                Spacer()
                
                Text("02-22-2022")
                    .font(AppFonts.medium_12)
                
            }  .padding(.trailing,24)
                .padding(.bottom)
                .padding(.leading,24)
            
            
            HStack{
                
                Text("Expiry Date")
                    .font(AppFonts.medium_12)
                Spacer()
                
                Text("03-22-2023")
                    .font(AppFonts.medium_12)
                
            }  .padding(.trailing,24)
                .padding(.bottom)
                .padding(.leading,24)
            
            
            HStack{
                
                Text("Yearly Subscription")
                    .font(AppFonts.medium_12)
                Spacer()
                
                Text("$50/ Month")
                    .font(AppFonts.medium_12)
                
            }  .padding(.trailing,24)
                .padding(.bottom)
                .padding(.leading,24)
            }
            
            Group{
            HStack{
                Text("**** **** **** **45")
                    .font(AppFonts.regular_12)
                Spacer()
            }.padding(.trailing,24)
                .padding(.bottom)
                .padding(.leading,24)
                .padding(.top)
           
            
            HStack{
                Text("Your next billing date is 22-May-2022")
                    .foregroundColor(AppColors.redGradientColor1)
                    .font(AppFonts.regular_14)
                
                Spacer()
            }.padding(.leading,24)
                .padding(.bottom)
               
            HStack{
                Text("Billing Details")
                    .font(AppFonts.semiBold_12)
                Spacer()
                
                Image("Vector-2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
            }
            .padding(.leading,24)
            .padding(.trailing,24)
            .padding(.bottom)
            
            HStack{
            Button(action: {}, label: {
                Text("Cancel Membership")
                    .font(AppFonts.semiBold_16)
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*80, height: 56))
            })
                
            } .padding(24)
            }
            HStack{
                Text("Upgrade Plan")
                    .foregroundColor(AppColors.redGradientColor1)
                
            }.padding(24)
              
            
            
            Spacer()
        } .navigationBarHidden(true)
    }
}

struct My_Subscription_details_Screen_Previews: PreviewProvider {
    static var previews: some View {
        My_Subscription_details_Screen()
    }
}
