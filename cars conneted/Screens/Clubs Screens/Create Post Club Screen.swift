//
//  Create Post Club Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 25/08/2022.
//

import SwiftUI

struct Create_Post_Club_Screen: View {
    @Environment(\.presentationMode) var presentaionMode
    
    @State private var postText: String = "What's in your mind..."
    
    var body: some View {
        VStack{
            HStack{
                Button(action: {}, label: {
                    Image("Icons-2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                        .padding(.trailing)
                        
                })
                
                Text("Ace Classic Club")
                    .font(AppFonts.SemiBold_20)
                
                Spacer()
                
                Text("POST")
                    .font(AppFonts.medium_12)
                    .foregroundColor(.white)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*20, height: UIScreen.heightBlockSize*6))
                
            }
            .padding()
            
            HStack{
                Image("unsplash_X6Uj51n5CE8")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                
               
                    Text("Emma Watson")
                        .font(AppFonts.medium_14)
                        .padding(.bottom,2)
                    
                
                  
                Spacer()
               
               
            }.padding(.leading)
                .padding(.trailing)
            
           
            TextEditor(text: self.$postText)
                .font(AppFonts.regular_14)
                .padding()
                .foregroundColor(.gray)
                .frame(minHeight: 50, idealHeight: 50 , maxHeight: 250)
                .colorMultiply(.white)
                .overlay(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.05)))
                .overlay(
                    VStack{
                        Spacer()
                    HStack{
                    Image("dashicons_format-gallery")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    
                    Image("ant-design_camera-filled")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    
                    Spacer()
                        
                    }.padding()
                        
                    }
                )
                .padding()
            
           
            
            Spacer()
        } .navigationBarHidden(true)
    }
}

struct Create_Post_Club_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Create_Post_Club_Screen()
    }
}
