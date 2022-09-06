//
//  E-Mail Confirmation screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 16/08/2022.
//

import SwiftUI

struct E_Mail_Confirmation_screen: View {
    @Environment(\.presentationMode) var presentaionMode
    var body: some View {
        VStack(alignment: .leading){
           
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
                .padding()
            
            HStack{
                Text("E-mail Verified Successfully")
                    .font(AppFonts.SemiBold_20)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("E-mail Verified Successfully")
                        .font(AppFonts.SemiBold_20)
                       )
                
                Spacer()
            }
            .padding()
            .padding(.top,-20)
            
            VStack(alignment: .leading){
            HStack{
            Text("Thankyou! Your Email has verified and updated \nsuccessfully")
                .foregroundColor(.gray)
                .font(AppFonts.regular_14)
                
                Spacer()
            }
            }.padding(.leading)
                .padding(.trailing)
            
            HStack{
                Spacer()
          Image("ant-design_check-circle-filled")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*50)
                Spacer()
            }
            
            HStack{
                Spacer()
            
                NavigationLink(destination: MainTabContainer(), label: {
                    Text("Proceed to Home")
                        .font(AppFonts.semiBold_16)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                        .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                            .padding(.top,30)
                })
              
             
                Spacer()
            }
            
            
                Spacer()
        }
        
        .navigationBarHidden(true)
    }
}

struct E_Mail_Confirmation_screen_Previews: PreviewProvider {
    static var previews: some View {
        E_Mail_Confirmation_screen()
    }
}
