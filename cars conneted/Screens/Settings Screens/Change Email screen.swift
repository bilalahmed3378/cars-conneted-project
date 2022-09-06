//
//  Change Email screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 16/08/2022.
//

import SwiftUI

struct Change_Email_screen: View {
    
    @Environment(\.presentationMode) var presentaionMode
    
    @State var currentEmail = ""
      @State var newEmail = ""
    
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
                    
                    Text("Email")
                        .font(AppFonts.SemiBold_20)
                        .offset(x: -10, y: 0)
                    
                    Spacer()
                   
                }
                .padding()
            
            HStack{
                Text("Change Email")
                    .font(AppFonts.semiBold_24)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Change Email")
                        .font(AppFonts.semiBold_24)
                        .fontWeight(.semibold))
                
                Spacer()
            }
            .padding()
            
            VStack(alignment: .leading){
            HStack{
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                .foregroundColor(.gray)
                .font(AppFonts.regular_14)
                
                Spacer()
            }
            } .padding(.leading)
                .padding(.trailing)
            
            Text("Current Email")
                .font(AppFonts.regular_12)
                      .padding(.top)
                      .frame(maxWidth: .infinity, alignment: .leading)
                      .foregroundColor(.gray)
                      .padding(.leading)
                      .padding(.trailing)
                    
          
            
            TextField("Umer12@gmail.com",text:$currentEmail)
                .font(AppFonts.regular_14)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
          
                                   
                      .background(Rectangle().frame(height: 1).padding(.top, 42))
                      .foregroundColor(.gray)
                      .padding(.leading)
                      .padding(.trailing)
            
            
            Text("New Email")
                .font(AppFonts.regular_12)
                      .padding(.top)
                      .frame(maxWidth: .infinity, alignment: .leading)
                      .foregroundColor(.gray)
                      .padding(.leading)
                      .padding(.trailing)
                   
            
            TextField("Umer155464@gmailcom",text:$newEmail)
                .font(AppFonts.regular_14)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
                      .background(Rectangle().frame(height: 1).padding(.top, 42))
                      .foregroundColor(.gray)
                      .padding(.leading)
                      .padding(.trailing)
            
            NavigationLink(destination: Verify_Email_OTP_Screen(), label: {
                Text("Confirm")
                    .font(AppFonts.semiBold_16)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                    .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .padding(.top,30)
            })
               
                
            
            
                Spacer()
        }
        
        .navigationBarHidden(true)
        
        
    }
}

struct Change_Email_screen_Previews: PreviewProvider {
    static var previews: some View {
        Change_Email_screen()
    }
}
