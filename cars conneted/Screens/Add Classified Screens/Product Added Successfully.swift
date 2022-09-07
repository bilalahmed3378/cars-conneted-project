//
//  Product Added Successfully.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 07/09/2022.
//

import SwiftUI

struct Product_Added_Successfully: View {
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
                    
                    Text("Product Added")
                        .font(AppFonts.SemiBold_20)
                        .offset(x: -10, y: 0)
                    
                    Spacer()
                   
                }
               
            
            HStack{
                Text("Product added Successfully")
                    .font(AppFonts.SemiBold_20)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Product added Successfully")
                        .font(AppFonts.SemiBold_20)
                        .fontWeight(.semibold))
                
                Spacer()
            }
            .padding(.top)
            .padding(.bottom)
            
            VStack(alignment: .leading){
            HStack{
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                .foregroundColor(.gray)
                .font(AppFonts.regular_14)
                Spacer()
            }
            }
            
          Image("ant-design_check-circle-filled")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            
            
            
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

struct Product_Added_Successfully_Previews: PreviewProvider {
    static var previews: some View {
        Product_Added_Successfully()
    }
}
