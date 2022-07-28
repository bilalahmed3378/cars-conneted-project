//
//  post screen 4.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 21/07/2022.
//

import SwiftUI

struct post_screen_4: View {
    @State private var post: String = ""
    @State private var location: String = ""
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
            
            ScrollView{
                
                HStack{
                    Text("What is in your mind?")
                    Spacer()
                }
                .padding()
                
                TextEditor(text: self.$post)
                    .foregroundColor(AppColors.redGradientColor2)
                    .frame(minHeight: 100,  maxHeight: 150)
                    .colorMultiply(.white)
                    .overlay(RoundedRectangle(cornerRadius: 10).strokeBorder(AppColors.redGradientColor2,lineWidth:1))
                    .padding(.leading)
                    .padding(.trailing)
                
                HStack{
                    Text("Add Location")
                    Spacer()
                }
                .padding()
                .padding(.leading,5)
                .padding(.bottom,-5)
                VStack{
                HStack{
                    Text("Choose Location")
                        .foregroundColor(AppColors.redGradientColor2)
                    Spacer()
                    Image("export icons")
                    
                }
                .padding(.leading,20)
                .padding(.trailing,20)
                    
                    Image("red line long")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.leading,20)
                        .padding(.trailing,20)
                }
              
                
              
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

struct post_screen_4_Previews: PreviewProvider {
    static var previews: some View {
        post_screen_4()
    }
}
