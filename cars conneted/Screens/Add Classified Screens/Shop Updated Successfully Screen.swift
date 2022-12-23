//
//  Classified or Shop Updated Successfully Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 24/08/2022.
//

import SwiftUI

struct Classified_or_Shop_Updated_Successfully_Screen: View {
    @Environment(\.presentationMode) var presentaionMode
    var body: some View {
        VStack{
           
             
            
            HStack{
                Text("Shop UpdatedSuccessfully")
                    .font(AppFonts.SemiBold_20)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Shop UpdatedSuccessfully")
                        .font(AppFonts.SemiBold_20)
                        )
                
                Spacer()
            }
            .padding()
            
            
            
          Image("ant-design_check-circle-filled")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.widthBlockSize*80, height: UIScreen.heightBlockSize*40)
            
            Button(action: {}, label: {
                Text("Proceed to Home")
                    .font(AppFonts.semiBold_16)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
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

struct Classified_or_Shop_Updated_Successfully_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Classified_or_Shop_Updated_Successfully_Screen()
    }
}
