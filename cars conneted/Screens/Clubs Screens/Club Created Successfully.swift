//
//  Club Created Successfully.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 25/08/2022.
//

import SwiftUI

struct Club_Created_Successfully: View {
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
            }
              
          Spacer()
            
          
          Image("ant-design_check-circle-filled")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            
            
            HStack{
                
                Text("Club Created Successfully")
                    .font(AppFonts.SemiBold_20)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Club Created Successfully")
                        .font(AppFonts.SemiBold_20)
                        .fontWeight(.semibold))
                
               
            }
            .padding()
            
            
            NavigationLink(destination: {
                MainTabContainer()
            }, label: {
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
        .padding(.leading)
        .padding(.trailing)
        .navigationBarHidden(true)
    }
}

struct Club_Created_Successfully_Previews: PreviewProvider {
    static var previews: some View {
        Club_Created_Successfully()
    }
}
