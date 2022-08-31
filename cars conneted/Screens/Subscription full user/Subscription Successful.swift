//
//  Subscription Successful.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 22/08/2022.
//

import SwiftUI

struct Subscription_Successful: View {
    @Environment(\.presentationMode) var presentaionMode
    var body: some View {
        VStack{
           
                HStack{
                    Button(action: {}, label: {
                        
                        Image("Icons-2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                    })
                   
                    
                    Spacer()
                    
                    Text("Change Password")
                        .font(AppFonts.SemiBold_20)
                        .offset(x: -10, y: 0)
                    
                    Spacer()
                   
                }
                .padding()
            
            HStack{
                Text("Subscription successful Congratulations!")
                    .font(AppFonts.SemiBold_20)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Subscription successful Congratulations!")
                        .font(AppFonts.SemiBold_20)
                        .fontWeight(.semibold))
                
                Spacer()
            }
            .padding()
            
            
            Text("You have successfully subscribed to our premium basic plan. You can continue using our app.")
                .foregroundColor(.gray)
                .font(AppFonts.regular_14)
                .padding()
            
          Image("Rectangle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            
            Button(action: {}, label: {
                Text("Continue")
                    .font(AppFonts.semiBold_16)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(width: 350, height: 70)
                    .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
            })
            .padding(.top,30)
                
            
            
                Spacer()
        }
        .padding(.leading)
        .padding(.trailing)
        .navigationBarHidden(true)
    }
}

struct Subscription_Successful_Previews: PreviewProvider {
    static var previews: some View {
        Subscription_Successful()
    }
}
