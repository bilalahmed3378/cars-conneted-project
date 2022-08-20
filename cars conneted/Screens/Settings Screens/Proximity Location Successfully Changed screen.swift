//
//  Proximity Location Successfully Changed screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 17/08/2022.
//

import SwiftUI

struct Proximity_Location_Successfully_Changed_screen: View {
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
                    
                    Text("Proximity Location")
                        .font(AppFonts.SemiBold_20)
                        .offset(x: -10, y: 0)
                    
                    Spacer()
                   
                }
                .padding()
            
            HStack{
                Text("Successfully Changed")
                    .font(AppFonts.SemiBold_20)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Successfully Changed")
                        .font(AppFonts.SemiBold_20)
                        .fontWeight(.semibold))
                
                Spacer()
            }
            .padding()
            
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                .foregroundColor(.gray)
                .font(AppFonts.regular_14)
            
          Image("ant-design_check-circle-filled")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            
            Button(action: {}, label: {
                Text("Proceed to Home")
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

struct Proximity_Location_Successfully_Changed_screen_Previews: PreviewProvider {
    static var previews: some View {
        Proximity_Location_Successfully_Changed_screen()
    }
}