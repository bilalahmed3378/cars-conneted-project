//
//  Support Issue Solved Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 18/08/2022.
//

import SwiftUI

struct Support_Issue_Solved_Screen: View {
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
                    
                    Text("Contact Support")
                        .font(AppFonts.SemiBold_20)
                        .offset(x: -10, y: 0)
                    
                    Spacer()
                   
                }
                .padding()
            
            HStack{
                Text("Issue Solved")
                    .font(AppFonts.SemiBold_20)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Issue Solved")
                        .font(AppFonts.SemiBold_20)
                        .fontWeight(.semibold))
                
                Spacer()
            }
            .padding()
            .padding(.top,-20)
            
            VStack(alignment: .leading){
            HStack{
            Text("Your issue regarding profile image issue has been solved successfully ")
                .foregroundColor(.gray)
                .font(AppFonts.regular_14)
            }
            }.padding(.leading)
                .padding(.trailing)
            
            HStack{
                Spacer()
                
                LottieView(name: LottieAnimations.successAnimation)
                    .frame(width: 300, height: 300)
                
                Spacer()
            }
            
           
                Text("Proceed to Home")
                    .font(AppFonts.semiBold_16)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                    .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .padding(.top,30)
                
            
                
            
            
                Spacer()
        }
       
        .navigationBarHidden(true)
    }
}

struct Support_Issue_Solved_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Support_Issue_Solved_Screen()
    }
}
