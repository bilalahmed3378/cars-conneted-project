//
//  Subscription Updated Successful Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 22/08/2022.
//

import SwiftUI

struct Subscription_Updated_Successful_Screen: View {
    @Environment(\.presentationMode) var presentaionMode
    
    @State var toHome = false
    var body: some View {
        VStack{
            
            NavigationLink(destination: MainTabContainer(), isActive: self.$toHome){
                EmptyView()
            }
            
           
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
                    
                   
                }
                .padding(.top)
                .padding(.bottom)
            
            HStack{
                Text("Subscription successfully Updated")
                    .font(AppFonts.SemiBold_20)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Subscription successfully Updated")
                        .font(AppFonts.SemiBold_20)
                        .fontWeight(.semibold))
                
                Spacer()
            }
            
            
            HStack{
                Text("Congratulations!")
                    .font(AppFonts.SemiBold_20)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Congratulations!")
                        .font(AppFonts.SemiBold_20)
                        .fontWeight(.semibold))
                
                Spacer()
            }
            .padding(.top)
            .padding(.bottom)
            
            VStack{
                HStack{
            Text("You have successfully subscribed to our premium basic plan. You can continue using our app.")
                .foregroundColor(.gray)
                .font(AppFonts.regular_14)
                    Spacer()
                }
                
            }
            
          Image("ant-design_check-circle-filled")
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

struct Subscription_Updated_Successful_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Subscription_Updated_Successful_Screen()
    }
}
