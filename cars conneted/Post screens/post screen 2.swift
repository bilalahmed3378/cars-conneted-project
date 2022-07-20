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
            HStack{
                Image("post back icons")
                Spacer()
                Text("Add Post")
                    .font(.title)
               Spacer()
            }
            .padding()
            .padding(.trailing,20)
            
            HStack{
                Text("What is in your mind?")
                Spacer()
            }
            .padding()
            
            TextEditor(text: self.$post)
                .foregroundColor(AppColors.redGradientColor2)
                .frame(minHeight: 50, idealHeight: 50 , maxHeight: 150)
                .colorMultiply(.white)
                .overlay(RoundedRectangle(cornerRadius: 10).strokeBorder(AppColors.redGradientColor2,lineWidth:1))
                .padding(.leading)
                .padding(.trailing)
            
            Spacer()
                        
            HStack{
                Button(action: {}, label: {
                    VStack{
                       Image("clarity_picture-solid")
                        Text("Add photo")
                            .fontWeight(.light)
                            .foregroundColor(.black)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(.gray).opacity(0.5))
                })
              
                Button(action: {}, label: {
                    VStack{
                        Image("bxs_video")
                        Text("Add Video")
                            .fontWeight(.light)
                            .foregroundColor(.black)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(.gray).opacity(0.5))
                })
              
                Button(action: {}, label: {
                    VStack{
                        Image("bxs_calendar-event")
                        Text("Add Event")
                            .fontWeight(.light)
                            .foregroundColor(.black)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(.gray).opacity(0.5))
                })
               
                
                
            }
            .padding(.top,30)
            
            Image("Line 5")
                .padding(10)
            //Remove 10 from padding
            
            
        }
    }
}

struct post_screen_2_Previews: PreviewProvider {
    static var previews: some View {
        post_screen_2()
    }
}
