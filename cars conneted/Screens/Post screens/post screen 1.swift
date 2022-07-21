//
//  post sceen 1.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 20/07/2022.
//

import SwiftUI

struct post_sceen_1: View {
    
    @State private var post: String = ""
    
    var body: some View {
        VStack{
            HStack{
                Image("cross icons")
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
                .frame(minHeight: 50, idealHeight: 50 , maxHeight: 300)
                .colorMultiply(.white)
                .overlay(RoundedRectangle(cornerRadius: 10).strokeBorder(AppColors.redGradientColor2,lineWidth:1))
                .padding(.leading)
                .padding(.trailing)
            
           
            
            Spacer()
            
            Button(action: {}, label: {
                Text("Post")
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: 327, height: 56))
            })
           
            
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
            
        }
    }
}

struct post_sceen_1_Previews: PreviewProvider {
    static var previews: some View {
        post_sceen_1()
    }
}
