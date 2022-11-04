//
//  personal message screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 21/07/2022.
//

import SwiftUI

struct personal_message_screen: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var typemessage = ""
    @State var addItems: Bool = false
    var body: some View {
        ZStack{
            
            VStack{
                
                VStack{
                    
                    // top bar
                    HStack{
                        
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
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
                                .frame(width: 40, height: 40)
                            VStack(alignment: .leading){
                                Text("Arsalan Ash")
                                    .font(AppFonts.semiBold_16)
                                    .foregroundColor(.white)
                                HStack{
                                    Image("Ellipse 17")
                                    Text("Online")
                                        .font(AppFonts.regular_12)
                                        .foregroundColor(.white)
                                       
                                } .padding(.top,-7)
                              
                            }
                        }
                        
                        Spacer()
                        
                        Image("fluent_call-24-filled")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        
                        
                    }.padding(.leading)
                        .padding(.trailing)
                        .padding(.top)
                    
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
                        .font(AppFonts.regular_16)
                        .foregroundColor(.white)
                    Text("17:47")
                        .font(AppFonts.regular_10)
                        .foregroundColor(.white)
                }
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        
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
                    
                    
                    Spacer()
                }
                .padding()
                    
                    Spacer()
                }
                
                
                Spacer()
                
                //bottom bar
                HStack{
                    Button(action: {
                        self.addItems = true
                    }, label: {
                        Image("Add icon")
                            .resizable()
                            .frame(width: 20, height: 20 )
                            .padding(.leading,20)
                            .sheet(isPresented: $addItems){
                                VStack{
                                    Spacer()
                                    
                                   
                                    Button(action: {
                                        self.addItems = false
                                       
                                    }){
                                        
                                             HStack{
                                                 Image("Add post icon red")
                                                     .padding(.trailing)
                                                 
                                                 Text("Camera")
                                                     .foregroundColor(AppColors.redGradientColor1)
                                                     .font(AppFonts.medium_16)
                                                 Spacer()
                                             }.padding()
                                                 .padding(.leading)
                                    }
                                   
                                    Divider()
                                    Group{
                                    HStack{
                                        Image("photo video red")
                                            .padding(.trailing)
                                        
                                        Text("Photo & Video Library")
                                            .foregroundColor(AppColors.redGradientColor1)
                                            .font(AppFonts.medium_16)
                                        Spacer()
                                    }.padding()
                                            .padding(.leading)
                                    
                                    Divider()
                                    
                                    HStack{
                                        Image("document red")
                                            .padding(.trailing)
                                        
                                        Text("Document")
                                            .foregroundColor(AppColors.redGradientColor1)
                                            .font(AppFonts.medium_16)
                                        Spacer()
                                    }.padding()
                                            .padding(.leading)
                                    
                                    Divider()
                                    
                                    HStack{
                                        Image("location red")
                                            .padding(.trailing)
                                        
                                        Text("Location")
                                            .foregroundColor(AppColors.redGradientColor1)
                                            .font(AppFonts.medium_16)
                                        Spacer()
                                    }.padding()
                                            .padding(.leading)
                                    
                                    Divider()
                                    
                                    HStack{
                                        Image("Icon")
                                            .padding(.trailing)
                                        
                                        Text("Contact")
                                            .foregroundColor(AppColors.redGradientColor1)
                                            .font(AppFonts.medium_16)
                                        Spacer()
                                    }.padding()
                                            .padding(.leading)
                                    }
                                    Divider()
                                    
                                    Spacer()
                                    
                                    HStack{
                                        Button(action: {
                                            self.addItems = false
                                        }, label: {
                                            Text("Cancel")
                                                .font(AppFonts.semiBold_16)
                                                .fontWeight(.medium)
                                                .foregroundColor(.white)
                                                .frame(width: 350, height: 70)
                                                .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                        })
                                        
                                        
                                    }.padding()

                                    
                                    
                                    
                                }
                            }
                    })
                   
                    
                    
                    VStack{
                        
                        TextEditor(text: self.$typemessage)
                            .frame( height: 0 )
                            .font(AppFonts.regular_14)
                            .foregroundColor(.gray)
                            .frame(minHeight: 40, idealHeight: 40 , maxHeight: 40)
                            .colorMultiply(.white)
                            .overlay(HStack{
                                Text("Write message")
                                    .font(AppFonts.regular_14)
                                    .foregroundColor(.gray)
                                    .padding(.leading)
                                Spacer()
                            })
                            
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
        .navigationBarHidden(true)
    }
}

struct personal_message_screen_Previews: PreviewProvider {
    static var previews: some View {
        personal_message_screen()
    }
}

   


