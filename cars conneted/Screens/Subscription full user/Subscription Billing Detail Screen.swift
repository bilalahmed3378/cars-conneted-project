//
//  Subscription Billing Detail Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 22/08/2022.
//

import SwiftUI

struct Subscription_Billing_Detail_Screen: View {
    @Environment(\.presentationMode) var presentaionMode
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
        VStack{
            HStack{
                Image("Icons-2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                
                Spacer()
                
                Text("Billing Details")
                    .font(AppFonts.medium_20)
                    .offset(x: -15)
                
                Spacer()
            }.padding(24)
            
            HStack{
                Text("Your Membership")
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
                    VStack(alignment: .leading){
                
                Text("Plan")
                            .font(AppFonts.medium_12)
                            .foregroundColor(.black.opacity(0.8))
                            .padding(.bottom,5)
               
                Text("Yearly")
                    .font(AppFonts.medium_14)
                
             
                
            }  .padding(.trailing,24)
                .padding(.bottom)
                .padding(.leading,24)
                    
                    Spacer()
                }
            
                HStack{
                    VStack(alignment: .leading){
                
                Text("Payment")
                            .font(AppFonts.medium_12)
                            .foregroundColor(.black.opacity(0.8))
                            .padding(.bottom,5)
               
                Text("$50 / Month")
                    .font(AppFonts.medium_14)
                
             
                
            }  .padding(.trailing,24)
                .padding(.bottom)
                .padding(.leading,24)
                    
                    Spacer()
                }
                
                HStack{
                    VStack(alignment: .leading){
                
                Text("Next Billing Month")
                            .font(AppFonts.medium_12)
                            .foregroundColor(.black.opacity(0.8))
                            .padding(.bottom,5)
               
                Text("22 May 2022")
                    .font(AppFonts.medium_14)
                
             
                
            }  .padding(.trailing,24)
                .padding(.bottom)
                .padding(.leading,24)
                    
                    Spacer()
                }
               
            }
            
          
            Divider()
               .padding(.leading,24)
              .padding(.trailing,24)
            
            Group{
                
                HStack{
                    Text("Billing Dates")
                        .font(AppFonts.semiBold_12)
                    Spacer()
                }
                .padding(.leading,24)
                    .padding(.trailing,24)
                    .padding(.top)
                
                
                HStack{
                    Text("22 Feb 2022 - 22 Mar 2022")
                        .font(AppFonts.semiBold_12)
                    
                    Spacer()
                    
                    Text("$ 50")
                        .foregroundColor(AppColors.redGradientColor1)
                        .font(AppFonts.bold_12)
                }
                .padding(.leading,24)
                    .padding(.trailing,24)
                    .padding(.top,10)
                    .padding(.bottom,5)
                
                HStack{
                    Text("**** **** **** 3643")
                        .font(AppFonts.medium_14)
                    
                    Spacer()

                }
                .padding(.leading,24)
                    .padding(.trailing,24)
                    .padding(.bottom,5)
                
                
                Divider()
                   .padding(.leading,24)
                  .padding(.trailing,24)
                
                HStack{
                    Text("23 Mar 2022 - 23 Apr 2022")
                        .font(AppFonts.semiBold_12)
                    
                    Spacer()
                    
                    Text("$ 50")
                        .foregroundColor(AppColors.redGradientColor1)
                        .font(AppFonts.bold_12)
                }
                .padding(.leading,24)
                    .padding(.trailing,24)
                    .padding(.top,10)
                    .padding(.bottom,5)
                
                HStack{
                    Text("**** **** **** 3643")
                        .font(AppFonts.medium_14)
                    
                    Spacer()

                }
                .padding(.leading,24)
                    .padding(.trailing,24)
                    .padding(.bottom,5)
                
                
                Divider()
                   .padding(.leading,24)
                  .padding(.trailing,24)
                
                
                
                
            }
            
           
            
            Spacer()
        } .navigationBarHidden(true)
        }
    }
}

struct Subscription_Billing_Detail_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Subscription_Billing_Detail_Screen()
    }
}
