//
//  Vehicle Deleted Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 22/08/2022.
//

import SwiftUI

struct Vehicle_Deleted_Screen: View {
    @Environment(\.presentationMode) var presentaionMode
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
                    
                    
                   
                }
            
            HStack{
                Text("Vehicle Deleted Successfully")
                    .font(AppFonts.semiBold_24)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Vehicle Deleted Successfully")
                        .font(AppFonts.semiBold_24)
                        .fontWeight(.semibold))
                
               
            }
            .padding(.top)
            .padding(.bottom)
            
            
         
            
          Image("bin")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            
            Button(action: {}, label: {
                Text("Back to Garage")
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

struct Vehicle_Deleted_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Vehicle_Deleted_Screen()
    }
}
