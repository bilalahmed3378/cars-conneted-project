//
//  Club chat Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 25/08/2022.
//

import SwiftUI

struct Club_chat_Screen: View {
    @State private var typemessage = ""
    var body: some View {
        ZStack{
            
            VStack{
                
                VStack{
                    
                    // top bar
                    HStack{
                        
                        Button(action: {
                           
                        }, label: {
                            Image("back icon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 35, height: 35)
                                .padding(.leading,-10)
                        })
                        
                        HStack{
                            Image("profile icon home")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                            
                            VStack(alignment: .leading){
                                
                                Text("Ace Club Chat")
                                    .font(AppFonts.semiBold_16)
                                    .foregroundColor(.white)
                                
                                HStack{
                                    Image("unsplash_-IPFb6J03Mw")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 22, height: 22)
                                       
                                    
                                    Image("unsplash_-IPFb6J03Mw")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 22, height: 22)
                                        .offset(x:-16)
                                    
                                    Image("unsplash_-IPFb6J03Mw")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 22, height: 22)
                                        .offset(x:-30)
                                    
                                    Image("unsplash_-IPFb6J03Mw")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 22, height: 22)
                                        .offset(x:-44)
                                    
                                    Text("+5 more")
                                        .foregroundColor(.white)
                                        .font(AppFonts.regular_12)
                                        .offset(x:-44)
                                 
                                    Spacer()
                                } .padding(.top,-7)
                              
                            }
                        }
                        
                        Spacer()
                        
                        Image("fluent_call-24-filled")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                        
                        
                    }.padding(.leading,24)
                        .padding(.trailing,24)
                        .padding(.top,20)
                    
                }  .padding(.top,40)
                    .padding(.bottom,30)
                    .background(
                        Image("home screen background")
                        .resizable())
                HStack{
                    Spacer()
                    VStack(alignment: .trailing){
                        HStack{
                            
                HStack(alignment: .bottom){
                    Text("Good bye!")
                        .font(AppFonts.regular_16)
                        .foregroundColor(.white)
                    Text("17:47")
                        .font(AppFonts.regular_10)
                        .foregroundColor(.white)
                }
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                           
                                    Image("unsplash_OhKElOkQ3RE")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 35, height: 35)
                            
                        }
                        
                        
                        HStack{
                        HStack(alignment: .bottom){
                            Text("Good bye sir Thank you!")
                                .font(AppFonts.regular_16)
                                .foregroundColor(.white)
                            Text("17:47")
                                .font(AppFonts.regular_10)
                                .foregroundColor(.white)
                        }
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                            
                        
                                Image("unsplash_OhKElOkQ3RE")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 35, height: 35)
                            
                        }
              
                    }
                }
                .padding()
                HStack{
                    Text("Fri, Jul 26")
                        .font(AppFonts.semiBold_12)
                }
                .background(RoundedRectangle(cornerRadius:10).fill(.gray).opacity(0.5).frame(width: 100, height: 24))
              
                HStack{
                VStack(alignment: .leading){
                    
                    
                    HStack{
                        Image("unsplash_OhKElOkQ3RE")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                        
                HStack(alignment: .bottom){
                    Text("Good bye sir you!")
                        .font(AppFonts.regular_16)
                        .foregroundColor(.black)
                    Text("17:47")
                        .font(AppFonts.regular_10)
                        .foregroundColor(.black)
                   
                }
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 10).fill(.gray).opacity(0.2))
                        
                    }
                    
                    
                    HStack{
                        Image("unsplash_OhKElOkQ3RE")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                        
                    HStack(alignment: .bottom){
                        Text("Good bye sir you!")
                            .font(AppFonts.regular_16)
                            .foregroundColor(.black)
                        Text("17:47")
                            .font(AppFonts.regular_10)
                            .foregroundColor(.black)
                       
                    }
                    .padding(10)
                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray).opacity(0.2))
                    }
                    
                    Spacer()
                }
                .padding()
                    
                    Spacer()
                }
                
                
                Spacer()
                
                //bottom bar
                HStack{
                    
                    Image("Add icon")
                        .resizable()
                        .frame(width: 20, height: 20 )
                        .padding(.leading,20)
                    
                    
                    VStack{
                        
                        TextEditor(text: self.$typemessage)
                            .frame( height: 50 )
                            .colorMultiply(AppColors.redGradientColor2)
                            
                    }
                    .background(RoundedRectangle(cornerRadius: 25).fill(.white))
                    .padding(.leading,10)
                    .padding(.trailing,10)
                    
                  Image("Camera icon")
                        .resizable()
                        .frame(width: 22, height: 20)
                        .padding(.trailing,10)
                    
                    Image("mic icon")
                        .resizable()
                        .frame(width: 18, height: 22)
                        .padding(.trailing,20)
                }
                .background(Rectangle().fill(AppColors.redGradientColor1).frame(width: 425, height: 82 ))
            }
            .padding(.bottom)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct Club_chat_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Club_chat_Screen()
    }
}
