//
//  Help Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 17/08/2022.
//

import SwiftUI

struct Help_Screen: View {
    @Environment (\.presentationMode) var presentationMode
    @State private var isClicked = false
    @State private var isClickedTwo = false
    @State private var searchText = ""
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
                
                Text("Help")
                    .foregroundColor(.white)
                    .font(AppFonts.SemiBold_20)
                
                Spacer()
                
                
               
                
            }.padding(.leading,20)
                .padding(.trailing,20)
                .padding(.top,20)
            
        }  .padding(.top,40)
            .padding(.bottom,30)
            .background(
                Image("home screen background")
                .resizable())
        }
            HStack{
            HStack{
              
              TextField("Search",text: self.$searchText)
                    .font(AppFonts.regular_14)
                    .foregroundColor(.red)
                    
               
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width :20, height: 20)
                    .foregroundColor(.red)
           
            } .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
            }.padding()
            
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
            
            
            
            Spacer()
        }.edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
    }
}

struct Help_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Help_Screen()
    }
}
