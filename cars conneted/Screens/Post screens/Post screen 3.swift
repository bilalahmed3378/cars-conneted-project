//
//  Post screen 3.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 21/07/2022.
//

import SwiftUI

struct Post_screen_3: View {
    @State private var post: String = ""
    var body: some View {
        VStack{
            HStack{
                Image("post back icons")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 35)
                
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
            
            Button(action: {}, label: {
                ZStack{
                    Text("Add Location?")
                        .foregroundColor(AppColors.redGradientColor1)
                        .font(.body)
                        .padding()
                        .padding(.trailing,120)
                        .padding(.leading,120)
                        .background(RoundedRectangle(cornerRadius: 50).strokeBorder(AppColors.redGradientColor2))
                        .padding()
                }
            })
            
            ScrollView{
                Image("unsplash_YApiWyp0lqo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay(
                        VStack{
                            
                            HStack{
                                Spacer()
                                Button(action: {}, label: {
                                    Image(systemName: "minus.circle.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(Color.red)
                                        .frame(width: 20, height: 20)
                                        .offset(x: -10, y: -10)
                                })
                               
                            }
                            
                            Spacer()
                        }
                        
                    )
                    .padding()
          
            
              Spacer()
            
            
            Image("unsplash_YApiWyp0lqo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(
                    VStack{
                        
                        HStack{
                            Spacer()
                            Button(action: {}, label: {
                                Image(systemName: "minus.circle.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color.red)
                                    .frame(width: 20, height: 20)
                                    .offset(x: -10, y: -10)
                            })
                           
                        }
                        
                        Spacer()
                    }
                    
                )
                .padding()
      
        
          Spacer()
     
                
                Button(action: {}, label: {
                    ZStack{
                        Text("Preview?")
                            .foregroundColor(.white)
                            .font(.body)
                            .padding()
                            .padding(.trailing,135)
                            .padding(.leading,135)
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                            .padding()
                    }
                })
                
            }
            
            
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct Post_screen_3_Previews: PreviewProvider {
    static var previews: some View {
        Post_screen_3()
    }
}
