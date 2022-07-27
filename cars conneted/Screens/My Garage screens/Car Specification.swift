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
                Spacer()
                Image("image 11")
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                  .frame(width: UIScreen.screenWidth, height: UIScreen.heightBlockSize*40)
                  .clipped()
                  .overlay(Color.black.opacity(0.02))
              }
              ScrollView(.vertical, showsIndicators: false){
                  HStack{
                    VStack{
                      Text("Model")
                        .font(.system(size: 16))
                      Text("Civic")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.redGradientColor1)
                        .padding(.top,5)
                    }
                    Spacer()
                    VStack{
                      Text("Brand")
                        .font(.system(size: 16))
                      Text("Honda")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.redGradientColor1)
                        .padding(.top,5)
                    }
                    Spacer()
                    VStack{
                      Text("Year")
                        .font(.system(size: 16))
                      Text("2017")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.redGradientColor1)
                        .padding(.top,5)
                    }
                  }
                  HStack{
                    VStack{
                      Text("Engine")
                        .font(.system(size: 16))
                      Text("Civic")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.redGradientColor1)
                        .padding(.top,5)
                    }
                    Spacer()
                    VStack{
                      Text("Type")
                        .font(.system(size: 16))
                      Text("Honda")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.redGradientColor1)
                        .padding(.top,5)
                    }
                    Spacer()
                    VStack{
                      Text("Year")
                        .font(.system(size: 16))
                      Text("2017")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.redGradientColor1)
                        .padding(.top,5)
                    }
                  }.padding(.top,30)
                  VStack(alignment: .leading){
                    Text("Description")
                      .font(.system(size: 16))
                      .padding(.top,30)
                    Text("Risus ullamcorper sed ultrices quam mauris ullamcorper vulputate elementum morbi. A aliquet aenean faucibus turpis erat. Sed neque lobortis et nullam et bibendum tristique faucibus elementum.")
                      .font(.system(size: 12))
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
