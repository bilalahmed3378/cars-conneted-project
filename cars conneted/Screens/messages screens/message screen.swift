//
//  personal message screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 21/07/2022.
//

import SwiftUI

struct personal_message_screen: View {
    @State private var typemessage = ""
    var body: some View {
        ZStack{
            
            VStack{
                
                VStack{
                    
                    // top bar
                    HStack{
                        Image("back icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            .padding(.leading,-10)
                        HStack{
                            Image("profile icon home")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            VStack(alignment: .leading){
                                Text("Arsalan Ash")
                                    .foregroundColor(.white)
                                HStack{
                                    Image("Ellipse 17")
                                    Text("Online")
                                        .font(.caption)
                                        .foregroundColor(.white)
                                       
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
                HStack(alignment: .bottom){
                    Text("Good bye!")
                        .font(.body)
                        .foregroundColor(.white)
                    Text("17:47")
                        .font(.caption)
                        .foregroundColor(.white)
                }
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        
                        HStack(alignment: .bottom){
                            Text("Good bye sir Thank you!")
                                .font(.body)
                                .foregroundColor(.white)
                            Text("17:47")
                                .font(.caption)
                                .foregroundColor(.white)
                        }
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                
              
                    }
                }
                .padding()
                HStack{
                    Text("Fri, Jul 26")
                        .font(.caption)
                }
                .background(RoundedRectangle(cornerRadius:10).fill(.gray).opacity(0.5).frame(width: 100, height: 24))
              
                HStack{
                VStack(alignment: .leading){
                    
                HStack(alignment: .bottom){
                    Text("Good bye sir you!")
                        .font(.body)
                        .foregroundColor(.black)
                    Text("17:47")
                        .font(.caption)
                        .foregroundColor(.black)
                   
                }
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 10).fill(.gray).opacity(0.2))
                    
                    
                    HStack(alignment: .bottom){
                        Text("Good bye sir you!")
                            .font(.body)
                            .foregroundColor(.black)
                        Text("17:47")
                            .font(.caption)
                            .foregroundColor(.black)
                       
                    }
                    .padding(10)
                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray).opacity(0.2))
                    
                    
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

struct personal_message_screen_Previews: PreviewProvider {
    static var previews: some View {
        personal_message_screen()
    }
}
