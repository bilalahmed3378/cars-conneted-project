//
//  Support FAQS Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 18/08/2022.
//

import SwiftUI

struct Support_FAQS_Screen: View {
    
    @Environment (\.presentationMode) var presentationMode
    @State private var isClicked = false
    @State private var isClickedTwo = false
    @State private var isClickedThree = false
    @State private var isClickedFour = false
    
    var body: some View {
        
        VStack{
        
        VStack{
            
            Group{
            HStack{
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image("back icon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 35, height: 35)
                })
              
                
               Spacer()
                
                Text("Support FAQ's")
                    .foregroundColor(.white)
                    .font(AppFonts.SemiBold_20)
                
                Spacer()
                
                
               
                
            }.padding(.leading,20)
                .padding(.trailing,20)
                .padding(.top,20)
            
        }
        }.padding(.top,40)
            .padding(.bottom,30)
            .background(
                Image("home screen background")
                .resizable())
            .padding(.bottom,30)
            
            VStack(alignment: .leading){
                
                HStack{
                    Text("When Registration will start?")
                        .foregroundColor(.gray)
                        .font(AppFonts.regular_14)
                      
                    Spacer()
                    Button(action: {
                        withAnimation{
                            self.isClicked.toggle()
                        }
                    }, label: {
                        
                        Image(self.isClicked ? "dropdown menu icon" : "dropdown menu 2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 16)
                        
                    })
                   
                    
                }
                
                if(self.isClicked){
                    
                VStack(alignment: .leading){
                    
                    
                Divider()
                        .padding()
                
                Text("Registration will start on Aug 20")
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_14)
                     
                }
            }
            }.padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
            
            
            VStack(alignment: .leading){
                
                HStack{
                    Text("When Registration will start?")
                        .foregroundColor(.gray)
                        .font(AppFonts.regular_14)
                      
                    Spacer()
                    Button(action: {
                        withAnimation{
                            self.isClickedTwo.toggle()
                        }
                    }, label: {
                        
                        Image(self.isClickedTwo ? "dropdown menu icon" : "dropdown menu 2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 16)
                        
                    })
                   
                    
                }
                
                if(self.isClickedTwo){
                    
                VStack(alignment: .leading){
                    
                    
                Divider()
                        .padding()
                
                Text("Registration will start on Aug 20")
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_14)
                     
                }
            }
            }.padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
            
            
            VStack(alignment: .leading){
                
                HStack{
                    Text("When Registration will start?")
                        .foregroundColor(.gray)
                        .font(AppFonts.regular_14)
                      
                    Spacer()
                    Button(action: {
                        withAnimation{
                            self.isClickedThree.toggle()
                        }
                    }, label: {
                        
                        Image(self.isClickedThree ? "dropdown menu icon" : "dropdown menu 2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 16)
                        
                    })
                   
                    
                }
                
                if(self.isClickedThree){
                    
                VStack(alignment: .leading){
                    
                    
                Divider()
                        .padding()
                
                Text("Registration will start on Aug 20")
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_14)
                     
                }
            }
            }.padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
            
            VStack(alignment: .leading){
                
                HStack{
                    Text("When Registration will start?")
                        .foregroundColor(.gray)
                        .font(AppFonts.regular_14)
                      
                    Spacer()
                    Button(action: {
                        withAnimation{
                            self.isClickedFour.toggle()
                        }
                    }, label: {
                        
                        Image(self.isClickedFour ? "dropdown menu icon" : "dropdown menu 2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 16)
                        
                    })
                   
                    
                }
                
                if(self.isClickedFour){
                    
                VStack(alignment: .leading){
                    
                    
                Divider()
                        .padding()
                
                Text("Registration will start on Aug 20")
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_14)
                     
                }
            }
            }.padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
            
            HStack{
                Text("Still need Help?")
                    .font(AppFonts.semiBold_16)
                
            }.padding(.top,30)
            
            HStack{
                Text("We are here for you")
                    .font(AppFonts.regular_16)
                
            }.padding(.bottom)
            
            HStack{
                Button(action: {}, label: {
                    Text("Contact Support")
                        .font(AppFonts.semiBold_16)
                        .foregroundColor(.white)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: 200, height: 50))
                })
              
            }
            
            
            
            Spacer()
            
        }.edgesIgnoringSafeArea(.top)
        
    }
}

struct Support_FAQS_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Support_FAQS_Screen()
    }
}
