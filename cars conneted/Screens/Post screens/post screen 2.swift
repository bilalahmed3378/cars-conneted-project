//
//  post screen 2.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 20/07/2022.
//

import SwiftUI

struct post_screen_2: View {
    @State private var post: String = ""

    var body: some View {
        VStack{
            
            Spacer()
            
            HStack{
                Image("post back icons")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 35)
                
                
                Spacer()
                Text("Add Post")
                    .font(AppFonts.SemiBold_20)
                
               Spacer()
            }
            .padding()
            .padding(.trailing,20)
            
            HStack{
                Text("What is in your mind?")
                    .font(AppFonts.regular_12)
                Spacer()
            }
            .padding()
            
            TextEditor(text: self.$post)
                .font(AppFonts.regular_14)
                .foregroundColor(AppColors.redGradientColor2)
                .frame(minHeight: 50, idealHeight: 50 , maxHeight: 150)
                .colorMultiply(.white)
                .overlay(RoundedRectangle(cornerRadius: 10).strokeBorder(AppColors.redGradientColor2,lineWidth:1))
                .padding(.leading)
                .padding(.trailing)
            
              Spacer()
            Spacer()
            Spacer()
            
            VStack{
            HStack{
                Button(action: {}, label: {
                    VStack{
                       Image("clarity_picture-solid-1")
                        Text("Add photo")
                            .font(AppFonts.regular_14)
                            .foregroundColor(AppColors.redGradientColor1)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(AppColors.redGradientColor2).opacity(0.5))
                })
              
                Button(action: {}, label: {
                    VStack{
                        Image("bxs_video")
                        Text("Add Video")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.black)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(.gray).opacity(0.5))
                })
              
                Button(action: {}, label: {
                    VStack{
                        Image("bxs_calendar-event")
                        Text("Add Event")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.black)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(.gray).opacity(0.5))
                })
               
                
                
            }
            .frame(width: 400, height: 80)
            .padding(.top,30)
            
            Image("Line 5")
                .padding()
            
            HStack{
                Text("Gallery")
                    .font(AppFonts.medium_18)
                
                Spacer()
                
                Button(action: {}, label: {
                    Text("Done")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: 85, height: 40))
                        .padding(.trailing,30)
                })
            }
            .padding()
            
            HStack{
                Text("2 Images selected")
                    .font(AppFonts.regular_12)
                    .foregroundColor(AppColors.redGradientColor2)
                Spacer()
                
            }
            .padding()
            Group{
            HStack{
                Image("unsplash_eqW1MPinEV4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("unsplash_eqW1MPinEV4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("unsplash_eqW1MPinEV4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            
            }
            .frame(width: 328, height: 106)
          
            
            HStack{
                Image("unsplash_eqW1MPinEV4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("unsplash_eqW1MPinEV4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("unsplash_eqW1MPinEV4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            
            }
            .frame(width: 328, height: 106)
          
            }
            HStack{
                Image("unsplash_eqW1MPinEV4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("unsplash_eqW1MPinEV4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("unsplash_eqW1MPinEV4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            
            }
            .frame(width: 328, height: 106)
          
            }
            
         
           
            
            
            
        } .edgesIgnoringSafeArea(.bottom)
    }
}

struct post_screen_2_Previews: PreviewProvider {
    static var previews: some View {
        post_screen_2()
    }
}
