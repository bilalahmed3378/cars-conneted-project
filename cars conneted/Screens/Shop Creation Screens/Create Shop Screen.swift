//
//  Create Shop Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 24/08/2022.
//

import SwiftUI

struct Create_Shop_Screen: View {
    
    @State  var shopName = ""
    @State  var shopCategory = ""
    @State var email = ""
    @State  var phone = ""
    @State  var address = ""
    @State  var website = ""
    @State var description = ""
    
    @Environment(\.presentationMode) var presentaionMode
    
    var body: some View {
        
            VStack{
                
            VStack{
                
                // top bar
                HStack{
                    Button(action: {}, label: {
                        Image("back icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            .padding(.leading,-10)
                    })
                   
                    
                  Spacer()
                    
                    Text("Create Shop")
                        .font(AppFonts.SemiBold_20)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                }.padding(.leading,24)
                    .padding(.trailing,24)
                    .padding(.top,20)
                
            }  .padding(.top,40)
                .padding(.bottom,30)
                .background(
                    Image("home screen background")
                    .resizable())
           
             
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading){
               
                    Group{
                    VStack{
                        
                        HStack{
                            Text("Shop Details")
                                .font(AppFonts.semiBold_24)
                                .fontWeight(.semibold)
                                .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                .mask( Text("Shop Details")
                                    .font(AppFonts.semiBold_24)
                                    .fontWeight(.semibold))
                            
                            Spacer()
                        }.padding(.leading,10)
                            .padding(.top)
                        
                        
                Text("Brand")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                  .padding(.bottom,-5)
                
                  
                TextField("Giga Mall",text:$shopName)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                        
                    }
                    
                    VStack{
                        
                Text("Shop Category")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                  .padding(.bottom,-5)
                
                  
                TextField("Spare parts",text:$shopCategory)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                  .overlay(HStack{
                    Spacer()
                      Menu(content: {
                          Text("Spare Parts")
                          
                          Text("Parts")
                          
                          
                      }, label: {
                          Image("dropdown menu 2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding()
                      })
                      
                  })
                        
                    }
                    
                    VStack{
                        
                Text("Email")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                  .padding(.bottom,-5)
                
                  
                TextField("123@gmail.com",text:$email)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                        
                    }
                    
                    VStack{
                        
                Text("Phone")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                  .padding(.bottom,-5)
                
                  
                TextField("123456789",text:$phone)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                        
                    }
                    
                    VStack{
                        
                Text("Address")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                  .padding(.bottom,-5)
                
                  
                TextField("Washington, DC",text:$address)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                 
                        
                    }
                    
                    VStack{
                        
                Text("Website")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                  .padding(.bottom,-5)
                
                  
                TextField("www.shop.com",text:$website)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                 
                        
                    }
                        
                    }
                    
                    VStack{
                        
                Text("Description")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                  .padding(.bottom,-5)
                
                  
                TextField("Tell us more about your shop",text:$description)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                      
                    }
                    
                    HStack{
                        Text("Cover Image")
                            .font(AppFonts.regular_16)
                    }
                    .padding(.top,30)
                    .padding(.leading,10)
                    
                    HStack{
                        Image("unsplash_AHnhdjyTNGM")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.widthBlockSize*90, height: 220)
                    }
                    
                    
                Button(action: {}, label: {
                    Text("Create Shop")
                        .font(AppFonts.semiBold_16)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.widthBlockSize*90, height: 70)
                        .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                })
                .padding(.top,30)
                    
                
                
                    Spacer()
            }
            .padding(.leading)
            .padding(.trailing)
                    
            }
           
            }.edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
        
    }
}

struct Create_Shop_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Create_Shop_Screen()
    }
}
