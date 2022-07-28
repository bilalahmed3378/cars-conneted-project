//
//  Change Password.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 27/07/2022.
//

import SwiftUI

struct Change_Password: View {
    @State var password = ""
      @State var confirmPassword = ""
    var body: some View {
        VStack{
           
                HStack{
                    Button(action: {}, label: {
                        
                        Image("Icons-2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                    })
                   
                    
                    Spacer()
                    
                    Text("Change Password")
                        .font(.title)
                        .offset(x: -10, y: 0)
                    
                    Spacer()
                   
                }
                .padding()
            
            HStack{
                Text("Change Password")
                    .font(.title)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Change Password")
                        .font(.title)
                        .fontWeight(.semibold))
                
                Spacer()
            }
            .padding()
            
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                .foregroundColor(.gray)
            
            Text("Password")
                      .padding(.top,28)
                      .frame(maxWidth: .infinity, alignment: .leading)
                      .foregroundColor(.gray)
                      .padding(.leading)
                      .padding(.trailing)
                    TextField("BBS RMS 17",text:$password)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
                      .background(Rectangle().frame(height: 1).padding(.top, 42))
                      .foregroundColor(.gray)
                      .padding(.leading)
                      .padding(.trailing)
            
            
            Text("Confirm Password")
                      .padding(.top,28)
                      .frame(maxWidth: .infinity, alignment: .leading)
                      .foregroundColor(.gray)
                      .padding(.leading)
                      .padding(.trailing)
                    TextField("BBS RMS 17",text:$confirmPassword)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
                      .background(Rectangle().frame(height: 1).padding(.top, 42))
                      .foregroundColor(.gray)
                      .padding(.leading)
                      .padding(.trailing)
            
            Button(action: {}, label: {
                Text("Submit New Password")
                    .font(.title2)
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
        
        
    }
}

struct Change_Password_Previews: PreviewProvider {
    static var previews: some View {
        Change_Password()
    }
}
