//
//  E-mail Confirmation Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/08/2022.
//

import SwiftUI
import SwiftUIGIF


struct E_mail_Confirmation_Screen: View {
    @Environment(\.presentationMode) var presentaionMode
    
    var image = Image("Group 7139")
    
    
    @State var toLoginScreen = false
    
    @State var isUserLoggedIn = false
    
    @State var toHomeScreen = false
    
    @State var isProfileSetUp = false
    
    var body: some View {
        VStack{
            
            NavigationLink(destination: Login_Screen(), isActive: self.$toLoginScreen){
                EmptyView()
            }
//           
//               
//            NavigationLink(destination: MainTabContainer(), isActive: self.$toHomeScreen){
//                EmptyView()
//            }
            
         
            
       
            
            HStack{
                Text("E-mail Confirmation")
                    .font(AppFonts.semiBold_24)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("E-mail Confirmation")
                        .font(AppFonts.semiBold_24)
                        )
                
                Spacer()
            }
            .padding()
            
            VStack(alignment: .leading){
                HStack{
            Text("Thankyou! Your email has verified successfully. Now you can proceed to setup your profile.")
                .font(AppFonts.regular_14)
                    Spacer()
                }
            }.padding(.leading)
                .padding(.trailing)
            
            LottieView(name: LottieAnimations.successAnimation)
                .frame(width: 300, height: 300)
            
           
            
            Button(action: {
                self.toLoginScreen = true
            }, label: {
                Text("Login Now")
                    .font(AppFonts.semiBold_16)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                    .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
            })
            .padding(.top)
                
          
//                Button(action: {
//                    self.toHomeScreen = true
//                }, label: {
//                    HStack{
//                        Spacer()
//                        Text("Skip")
//                            .font(AppFonts.regular_16)
//                            .foregroundColor(AppColors.redGradientColor1)
//                        Spacer()
//                    }
//                })
//                .padding(.top)
            
            
            
            
                Spacer()
        }
        
        .navigationBarHidden(true)
    
        
    }
}


//struct E_mail_Confirmation_Screen_Previews: PreviewProvider {
//    static var previews: some View {
//        E_mail_Confirmation_Screen()
//    }
//}
//
//
