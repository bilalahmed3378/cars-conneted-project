//
//  Post screen 3.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 21/07/2022.
//

import SwiftUI

struct Post_screen_3: View {
    @State private var post: String = ""
    @State private var addLocation = false
    
    @State private var location: String = ""
    @Environment(\.presentationMode) var presentaionMode
    
    var body: some View {
        VStack{
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
            
            ScrollView(.vertical, showsIndicators: false){
            HStack{
                Text("What is in your mind?")
                    .font(AppFonts.regular_12)
                Spacer()
            }
            .padding()
            
            TextEditor(text: self.$post)
                .font(AppFonts.regular_14)
                .foregroundColor(AppColors.redGradientColor2)
                .frame(minHeight: 150, idealHeight: 150 , maxHeight: 150)
                .colorMultiply(.white)
                .overlay(RoundedRectangle(cornerRadius: 10).strokeBorder(AppColors.redGradientColor2,lineWidth:1))
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
            
            Button(action: {
                self.addLocation = true
            }, label: {
                if(self.addLocation == false){
                ZStack{
                    
                    Text("Add Location?")
                        .foregroundColor(AppColors.redGradientColor1)
                        .font(AppFonts.semiBold_16)
                       .background(RoundedRectangle(cornerRadius: 50).strokeBorder(AppColors.redGradientColor2).frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7))
                        .padding()
                }
                }
            })
            
            if(self.addLocation){
            HStack{
                Text("Add Location")
                    .font(AppFonts.regular_12)
                Spacer()
            }
            .padding()
            .padding(.leading,5)
            .padding(.bottom,-20)
            .padding(.top,10)
            
           
                
            HStack{
               
                    TextField("Add Location",text:$location)
                        .foregroundColor(AppColors.redGradientColor1)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
                      .background(Rectangle().frame(height: 1).padding(.top,40))
                      .foregroundColor(.black)
                      .overlay(HStack{
                          Spacer()
                          Image("export icons")
                      })
                    
                
                Spacer()
                
                
            }
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
                            .font(AppFonts.semiBold_16)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7))
                            .padding()
                    }
                })
                
            }
            
            
        }
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarHidden(true)
    }
}

struct Post_screen_3_Previews: PreviewProvider {
    static var previews: some View {
        Post_screen_3()
    }
}
