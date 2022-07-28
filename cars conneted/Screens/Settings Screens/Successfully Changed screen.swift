//
//  Successfully Changed.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 27/07/2022.
//

import SwiftUI

struct Successfully_Changed: View {
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
            
          Image("ant-design_check-circle-filled")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            
            Button(action: {}, label: {
                Text("Proceed to Home")
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

struct Successfully_Changed_Previews: PreviewProvider {
    static var previews: some View {
        Successfully_Changed()
    }
}
