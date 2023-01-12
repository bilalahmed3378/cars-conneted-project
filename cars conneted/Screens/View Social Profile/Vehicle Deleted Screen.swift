//
//  Vehicle Deleted Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 22/08/2022.
//

import SwiftUI

struct Vehicle_Deleted_Screen: View {
    @Environment(\.presentationMode) var presentaionMode
    
    @State var toGarage = false
    var body: some View {
        VStack{
           
            NavigationLink(destination: My_Garage_My_View(), isActive: self.$toGarage){
                EmptyView()
            }
            
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
            
            HStack{
                Text("Vehicle Deleted Successfully")
                    .font(AppFonts.semiBold_24)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Vehicle Deleted Successfully")
                        .font(AppFonts.semiBold_24)
                        .fontWeight(.semibold))
                
               Spacer()
            }
            .padding(.top)
            .padding(.bottom)
            
            
         
            
            LottieView(name: LottieAnimations.deletedSuccessfully)
                .frame(width: 300, height: 300)
            
            Button(action: {
                self.toGarage = true
            }, label: {
                Text("Back to Garage")
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

//struct Vehicle_Deleted_Screen_Previews: PreviewProvider {
//    static var previews: some View {
//        Vehicle_Deleted_Screen()
//    }
//}
