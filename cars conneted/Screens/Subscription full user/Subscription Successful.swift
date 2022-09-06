//
//  Subscription Successful.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 22/08/2022.
//

import SwiftUI

struct Subscription_Successful: View {
    @Environment(\.presentationMode) var presentaionMode
    
    @State var toHome = false
    var body: some View {
        VStack{
           
                HStack{
                    Button(action: {
                        self.presentaionMode.wrappedValue.dismiss()
                    }, label: {
                        
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
                .padding(.top)
                .padding(.bottom)
               
            
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
            .padding(.bottom)
            
            
            VStack(alignment: .leading){
                HStack{
            Text("You have successfully subscribed to our premium basic plan. You can continue using our app.")
                .foregroundColor(.gray)
                .font(AppFonts.regular_14)
                    Spacer()
                }
            }
            
          Image("Rectangle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.widthBlockSize*80, height: UIScreen.heightBlockSize*35)
            
            Button(action: {
                self.toHome = true
            }, label: {
                Text("Continue")
                    .font(AppFonts.semiBold_16)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
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
