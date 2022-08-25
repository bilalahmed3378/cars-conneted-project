//
//  Edit Club Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 25/08/2022.
//

import SwiftUI

struct Edit_Club_Screen: View {
    
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
                        
                    }.padding()
                  
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
                        
                        Text("Edit Club")
                            .font(AppFonts.SemiBold_20)
                        
                        Spacer()
                       
                        Image("doted Icons")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                       
                    }
                    .padding()
                
              
                    
                    Group{
                    VStack{
                        
                Text("Name")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                  .padding(.bottom,-5)
                
                  
                TextField("Ace Classic Club",text:$name)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                        
                    }
                    
                    VStack{
                        
                Text("Location")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                  .padding(.bottom,-5)
                
                  
                TextField("Street 1, D Arcade, Ace Club",text:$location)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                        
                    }
                    
                    VStack{
                        
                Text("Description")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                  .padding(.bottom,-5)
                
                  
                TextField("Club Description",text:$description)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                        
                    }
                    
                    VStack{
                        
                Text("Club Privacy")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                  .padding(.bottom,-5)
                
                  
                TextField("Select Private or Public",text:$clubPrivacy)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                  .padding(.leading,10)
                  .padding(.trailing,10)
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
                  .padding(.leading,10)
                  .padding(.trailing,10)
                  .padding(.bottom,-5)
                
                  
                TextField("Invited only",text:$whoCanJoin)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                  .padding(.leading,10)
                  .padding(.trailing,10)
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
                    
                  
                    Button(action: {}, label: {
                        Text("Cancel")
                            .font(AppFonts.semiBold_16)
                            .foregroundColor(AppColors.redGradientColor1)
                            .frame(width: UIScreen.widthBlockSize*90, height: 70)
                            .background(RoundedRectangle(cornerRadius: 50).strokeBorder(AppColors.redGradientColor1))
                    })
                    .padding(.top)
                    
                Button(action: {}, label: {
                    Text("Update")
                        .font(AppFonts.semiBold_16)
                        
                        .foregroundColor(.white)
                        .frame(width: UIScreen.widthBlockSize*90, height: 70)
                        .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                })
                .padding(.top)
                    
                
                
                    Spacer()
            }
            .padding(.leading)
            .padding(.trailing)
                    
            }
           
           
        }
    }
}

struct Edit_Club_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Edit_Club_Screen()
    }
}
