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
        ScrollView(.vertical, showsIndicators: false){
        VStack{
            HStack{
                
                Button(action: {
                    self.presentaionMode.wrappedValue.dismiss()
                }, label: {
                    Image("Icons-2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                })
             
                
                Spacer()
                
                Text("Membership")
                    .font(AppFonts.medium_20)
                    .offset(x: -15)
                
                Spacer()
            }.padding()
            
            HStack{
                Text("Your Subscription")
                    .foregroundColor(AppColors.redGradientColor1)
                    .font(AppFonts.semiBold_24)
                
                Spacer()
            }.padding(.leading)
                .padding(.bottom)
            
            HStack{
                Text("You have subscribed to our premium plan on 02-22-22")
                    Spacer()
            }.padding(.leading)
            
            HStack{
                Spacer()
                Text("View Invoice")
                    .font(AppFonts.semiBold_16)
            }
            .padding(.trailing)
            .padding(.bottom)
            
            Group{
            HStack{
                
                Text("E-mail")
                    .font(AppFonts.medium_12)
                Spacer()
                
                Text("jhonsmith@gmail.com")
                    .font(AppFonts.medium_12)
                
            }  .padding(.trailing)
                .padding(.bottom)
                .padding(.leading)
            
            
            HStack{
                
                Text("Name")
                    .font(AppFonts.medium_12)
                Spacer()
                
                Text("Jhon Smith")
                    .font(AppFonts.medium_12)
                
            }  .padding(.trailing)
                .padding(.bottom)
                .padding(.leading)
            
            
            HStack{
                
                Text("Start Date")
                    .font(AppFonts.medium_12)
                Spacer()
                
                Text("02-22-2022")
                    .font(AppFonts.medium_12)
                
            }  .padding(.trailing)
                .padding(.bottom)
                .padding(.leading)
            
            
            HStack{
                
                Text("Expiry Date")
                    .font(AppFonts.medium_12)
                Spacer()
                
                Text("03-22-2023")
                    .font(AppFonts.medium_12)
                
            }  .padding(.trailing)
                .padding(.bottom)
                .padding(.leading)
            
            
            HStack{
                
                Text("Yearly Subscription")
                    .font(AppFonts.medium_12)
                Spacer()
                
                Text("$50/ Month")
                    .font(AppFonts.medium_12)
                
            }  .padding(.trailing)
                .padding(.bottom)
                .padding(.leading)
            }
            
            Group{
            HStack{
                Text("**** **** **** **45")
                    .font(AppFonts.regular_12)
                Spacer()
            }.padding(.trailing)
                .padding(.bottom)
                .padding(.leading)
                .padding(.top)
           
            
            HStack{
                Text("Your next billing date is 22-May-2022")
                    .foregroundColor(AppColors.redGradientColor1)
                    .font(AppFonts.regular_14)
                
                Spacer()
            }.padding(.leading)
                .padding(.bottom)
               
                NavigationLink(destination: {
                    Subscription_Billing_Detail_Screen()
                })
                {
                    HStack{
                        Text("Billing Details")
                            .font(AppFonts.semiBold_12)
                            .foregroundColor(AppColors.BlackColor)
                        Spacer()
                        
                        Image("Vector-2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                    }
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                }
           
            
            HStack{
            Button(action: {}, label: {
                Text("Cancel Membership")
                    .font(AppFonts.semiBold_16)
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*80, height: UIScreen.heightBlockSize*7))
            })
                
            } .padding()
            }
            
            NavigationLink(destination: {
                Choose_your_plan_Screen()
            }, label: {
                HStack{
                    Text("Upgrade Plan")
                        .foregroundColor(AppColors.redGradientColor1)
                    
                }.padding()
                    .padding(.top)
            })
          
              
            
            
            Spacer()
        } .navigationBarHidden(true)
        }
    }
}

struct My_Subscription_details_Screen_Previews: PreviewProvider {
    static var previews: some View {
        My_Subscription_details_Screen()
    }
}
