//
//  Change User Name.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 16/08/2022.
//

import SwiftUI

struct Change_User_Name: View {
    
    @State var userName = ""
    @Environment(\.presentationMode) var presentaionMode
    
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
                    
                    Text("Username")
                        .font(AppFonts.SemiBold_20)
                        .offset(x: -10, y: 0)
                    
                    Spacer()
                   
                }
                .padding()
            
            HStack{
                Text("Change Username")
                    .font(AppFonts.semiBold_24)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Change Username")
                        .font(AppFonts.semiBold_24)
                        .fontWeight(.semibold))
                
                Spacer()
            }
            .padding()
            
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                .foregroundColor(.gray)
                .font(AppFonts.regular_14)
            
            Text("Username")
                .font(AppFonts.regular_12)
                      .padding(.top,28)
                      .frame(maxWidth: .infinity, alignment: .leading)
                      .foregroundColor(.gray)
                      .padding(.leading)
                      .padding(.trailing)
                    
          
            
            TextField("Umer12345",text:$userName)
                .font(AppFonts.regular_14)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
          
                                   
                      .background(Rectangle().frame(height: 1).padding(.top, 42))
                      .foregroundColor(.gray)
                      .padding(.leading)
                      .padding(.trailing)
            
            
         
            
            
            
            Button(action: {}, label: {
                Text("Change")
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



struct Change_User_Name_Previews: PreviewProvider {
    static var previews: some View {
        Change_User_Name()
    }
}
