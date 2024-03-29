//
//  Payment method step 1 screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 25/07/2022.
//

import SwiftUI

struct Payment_method_step_1_screen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            
            VStack{
                // top bar
        VStack{
            
           
            HStack{
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image("BackIconWhite")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 35, height: 35)
                })
              
                
               Spacer()
                
                Text("Choose payment Method")
                    .foregroundColor(.white)
                    .font(AppFonts.SemiBold_20)
                
                Spacer()
                
                
                    
                
                
            }.padding(.leading,20)
                .padding(.trailing,20)
                .padding(.top,20)
            
        }  .padding(.top,40)
            .padding(.bottom,30)
            .background(
                Image("home screen background")
                .resizable())
                
                VStack{
                    
                    HStack{
                    Text("No Payment Method Found!")
                            .font(AppFonts.SemiBold_20)
                        .foregroundColor(AppColors.redGradientColor1)
                        Spacer()
                    }
                    
                    HStack{
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Auctor sagittis sed lobortis pretium sagittis porta.")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    .padding(.top,10)
                    
                    Image("94339-edited-yelly-face 1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.widthBlockSize*80, height: UIScreen.heightBlockSize*40)
                        .padding()
                    
                    NavigationLink(destination: payment_method_2_screen(), label: {
                        Text("Add Payment Method")
                            .font(AppFonts.semiBold_16)
                            .foregroundColor(AppColors.redGradientColor1)
                            .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                            .background(RoundedRectangle(cornerRadius: 50).strokeBorder(AppColors.redGradientColor2))
                    })
                        
                }
                .padding()
                
                
                Spacer()
            }
        }.edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
    }
}

struct Payment_method_step_1_screen_Previews: PreviewProvider {
    static var previews: some View {
        Payment_method_step_1_screen()
    }
}
