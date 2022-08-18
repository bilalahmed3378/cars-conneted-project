//
//  SignUp Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 18/08/2022.
//

import SwiftUI

struct SignUp_Screen: View {
    @State  var email = ""
    @State  var password = ""
    @State  var confirmPassword = ""
    var body: some View {
        ZStack{
          
           
            
            Image("bilal2")
            
            VStack{
               
                VStack(alignment: .leading){
                    HStack{
                    Text("Signup")
                        .font(AppFonts.semiBold_22)
                        .fontWeight(.semibold)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Signup")
                            .font(AppFonts.semiBold_22)
                            .fontWeight(.semibold))
                        
                        Spacer()
                        
                    }
                    .padding()
                    
                    HStack{
                        Text("Welcome to Cars Connected. Please provide your details to create your account today.")
                            .font(AppFonts.regular_14)
                    }
                    
                    
                }.padding()
                
            }
            .edgesIgnoringSafeArea(.all)
            
           
        }
    }
}

struct SignUp_Screen_Previews: PreviewProvider {
    static var previews: some View {
        SignUp_Screen()
    }
}
