//
//  Car Specification.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 27/07/2022.
//

import SwiftUI

struct Car_Specification: View {
    
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
                
                Text("Car Specification")
                    .font(AppFonts.SemiBold_20)
                   
                
                Spacer()
                Button(action: {}, label: {
                    Image("doted Icons")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                })
               
               }
            .padding()
            .padding(.leading,-10)
            
              HStack{
                Spacer()
                Image("image 11")
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                  .frame(width: UIScreen.screenWidth, height: UIScreen.heightBlockSize*40)
                  .clipped()
                  .overlay(Color.black.opacity(0.02))
                  .padding(.bottom)
              }
              ScrollView(.vertical, showsIndicators: false){
                  HStack{
                    VStack{
                      Text("Model")
                            .font(AppFonts.regular_16)
                      Text("Civic")
                            .font(AppFonts.semiBold_18)
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.redGradientColor1)
                        .padding(.top,5)
                    }
                    Spacer()
                    VStack{
                      Text("Brand")
                            .font(AppFonts.regular_16)
                      Text("Honda")
                            .font(AppFonts.semiBold_18)
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.redGradientColor1)
                        .padding(.top,5)
                    }
                    Spacer()
                    VStack{
                      Text("Year")
                            .font(AppFonts.regular_16)
                      Text("2017")
                            .font(AppFonts.semiBold_18)
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.redGradientColor1)
                        .padding(.top,5)
                    }
                  }
                  HStack{
                    VStack{
                      Text("Engine")
                            .font(AppFonts.regular_16)
                      Text("124")
                            .font(AppFonts.semiBold_18)
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.redGradientColor1)
                        .padding(.top,5)
                    }
                    Spacer()
                    VStack{
                      Text("Type")
                            .font(AppFonts.regular_16)
                      Text("Sports")
                            .font(AppFonts.semiBold_18)
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.redGradientColor1)
                        .padding(.top,5)
                    }
                    Spacer()
                    VStack{
                      Text("Color")
                            .font(AppFonts.regular_16)
                      Text("White")
                            .font(AppFonts.semiBold_18)
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.redGradientColor1)
                        .padding(.top,5)
                    }
                  }.padding(.top,30)
                  VStack(alignment: .leading){
                    Text("Description")
                          .font(AppFonts.regular_16)
                      .padding(.top,30)
                    Text("Risus ullamcorper sed ultrices quam mauris ullamcorper vulputate elementum morbi. A aliquet aenean faucibus turpis erat. Sed neque lobortis et nullam et bibendum tristique faucibus elementum.")
                          .font(AppFonts.regular_12)
                      .padding(.top,5)
                  }
              }
              .padding(.leading,22)
              .padding(.trailing,22)
             
            }.edgesIgnoringSafeArea(.bottom)

        
    }
}

struct Car_Specification_Previews: PreviewProvider {
    static var previews: some View {
        Car_Specification()
    }
}
