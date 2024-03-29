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
    
    @State var showSheet = false
    
    @State var photos : Array<Image> = []
    
    @Environment(\.presentationMode) var presentaionMode
    
    var body: some View {
        
            VStack{
                
            VStack{
                
                // top bar
                HStack{
                    Button(action: {
                        self.presentaionMode.wrappedValue.dismiss()
                    }, label: {
                        Image("BackIconWhite")
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
                    
                }.padding(.leading)
                    .padding(.trailing)
                    .padding(.top)
                
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
                        }
                        .padding(.top)
                        
                        
                Text("Brand")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                 
                  .padding(.bottom,-5)
                
                  
                TextField("Giga Mall",text:$shopName)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                 
                        
                    }
                    
                    VStack{
                        
                Text("Shop Category")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  
                  .padding(.bottom,-5)
                
                  
                TextField("Spare parts",text:$shopCategory)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                  
                  .overlay(HStack{
                    Spacer()
                      Menu(content: {
                          Button(action: {}, label: {
                              Text("Spare Parts")
                          })
                       
                          Button(action: {}, label: {
                              Text("Parts")
                          })
                          
                          
                          
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
                 
                  .padding(.bottom,-5)
                
                  
                TextField("123@gmail.com",text:$email)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                 
                        
                    }
                    
                    VStack{
                        
                Text("Phone")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  
                  .padding(.bottom,-5)
                
                  
                TextField("123456789",text:$phone)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                 
                    }
                    
                    VStack{
                        
                Text("Address")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  
                  .padding(.bottom,-5)
                
                  
                TextField("Washington, DC",text:$address)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                  
                 
                        
                    }
                    
                    VStack{
                        
                Text("Website")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                 
                  .padding(.bottom,-5)
                
                  
                TextField("www.shop.com",text:$website)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                 
                 
                        
                    }
                        
                    }
                    
                    VStack{
                        
                Text("Description")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  
                  .padding(.bottom,-5)
                
                  
                TextField("Tell us more about your shop",text:$description)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                 
                      
                    }
                    
                    HStack{
                        Text("Cover Image")
                            .font(AppFonts.regular_16)
                    }
                    .padding(.top,30)
                   
                }
                .padding(.leading)
                .padding(.trailing)
                    
                    
                    if(!self.photos.isEmpty){
                      
                        ForEach(0...(self.photos.count-1) ,id: \.self){ index in
                            
                            
                            self.photos[index]
                                .resizable()
                                .aspectRatio( contentMode: .fill)
                                .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*25)
                                .cornerRadius(8)
                                .overlay(
                                    VStack{
                                       
                                        
                                        HStack{
                                            Spacer()
                                            Image(systemName: "minus")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .foregroundColor(.white)
                                                .padding(5)
                                                .frame(width: 15, height: 15)
                                                .background(Circle()
                                                    .fill(.red))
                                                .offset(x: 5, y: -5)
                                                .onTapGesture{
                                                    self.photos.remove(at: index)
                                                }
                                            
                                            
                                           
                                        }
                                        Spacer()
                                    }
                                    
                                )
                                .padding(.leading)
                                .padding(.trailing)
                            
                            
                        }
                            .padding(.top)
                    }
                
                    
                    HStack{
                        Spacer()
                    Image("add photo image")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*10)
                       .onTapGesture{
                            self.showSheet = true
                        }
                        Spacer()
                    }
                    
                    
                    NavigationLink(destination: {
                        Shop_Created_successfully()
                    }, label: {
                        Text("Create Shop")
                            .font(AppFonts.semiBold_16)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                 .padding(.top,30)
                    })
                   
                    
                
                
                    Spacer()
           
                    
            }
           
            }
            .sheet(isPresented: self.$showSheet) {
                
                ImagePicker(sourceType: .photoLibrary) { image in
                   
                        self.photos.append(Image(uiImage: image))
                    
                }
                
                
                }
            .edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
        
    }
}

struct Create_Shop_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Create_Shop_Screen()
    }
}
