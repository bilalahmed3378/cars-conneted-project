//
//  Create Club Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 25/08/2022.
//

import SwiftUI

struct Create_Club_Screen: View {
    @Environment(\.presentationMode) var presentaionMode
    @State var name = ""
    @State var location = ""
    @State var description = ""
    @State var clubPrivacy = ""
    @State var whoCanJoin = ""
    
    
    var body: some View {
        ZStack{
           
                VStack{
                    HStack{
                        
                    Image("Group 2-2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.widthBlockSize*50, height: UIScreen.heightBlockSize*50)
                        
                       Spacer()
                        
                    }
                  
                    Spacer()
                }.edgesIgnoringSafeArea(.top)
                    
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading){
               
                    HStack{
                        Button(action: {}, label: {
                            
                            Image("Icons-2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 35, height: 35)
                        })
                       
                        
                        Spacer()
                        
                       
                       
                    } .padding(.bottom)
                   
                
                HStack{
                    Text("Create your Club")
                        .font(AppFonts.semiBold_24)
                        .fontWeight(.semibold)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Create your Club")
                            .font(AppFonts.semiBold_24)
                            .fontWeight(.semibold))
                    
                    Spacer()
                }
                .padding(.bottom)
               
                
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                    .font(AppFonts.regular_14)
                   
                    
                    Group{
                    VStack{
                        
                Text("Name")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                   .padding(.bottom,-5)
                
                  
                TextField("Ace Classic Club",text:$name)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                 
                        
                    }
                    
                    VStack{
                        
                Text("Location")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                   .padding(.bottom,-5)
                
                  
                TextField("Street 1, D Arcade, Ace Club",text:$location)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                  
                        
                    }
                    
                    VStack{
                        
                Text("Description")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom,-5)
                
                  
                TextField("Club Description",text:$description)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                  
                    }
                    
                    VStack{
                        
                Text("Club Privacy")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  
                  .padding(.bottom,-5)
                
                  
                TextField("Select Private or Public",text:$clubPrivacy)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                  
                  .overlay(HStack{
                    Spacer()
                    Button(action: {
                     
                    }) {
                      Image("dropdown menu 2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                    }.padding()
                  })
                        
                    }
                    
                    VStack{
                        
                Text("Who can join this Club")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  
                  .padding(.bottom,-5)
                
                  
                TextField("Invited only",text:$whoCanJoin)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                 
                  .overlay(HStack{
                    Spacer()
                    Button(action: {
                     
                    }) {
                      Image("dropdown menu 2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                    }.padding()
                  })
                        
                    }
                    
                
                        
                    }
                    
                    HStack{
                        Image("unsplash_eqW1MPinEV4")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.widthBlockSize*30, height: 100)
                        
                        Image("unsplash_eqW1MPinEV4")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.widthBlockSize*30, height: 100)
                        
                        Image("Frame 40")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.widthBlockSize*30, height: 100)
                        
                    }.padding(.top)
                        .padding(.bottom)
                    
                    
                    HStack{
                        Spacer()
                Button(action: {}, label: {
                    Text("Create")
                        .font(AppFonts.semiBold_16)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                        .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                })
                .padding(.top)
                        
                        Spacer()
                    }
                
                
                    Spacer()
            }
            .padding(.leading)
            .padding(.trailing)
                    
            }
           
           
        }
        .navigationBarHidden(true)
    }
}

struct Create_Club_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Create_Club_Screen()
    }
}
