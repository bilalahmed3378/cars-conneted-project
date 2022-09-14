//
//  Edit Club Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 25/08/2022.
//

import SwiftUI

struct Edit_Club_Screen: View {
    @Environment(\.presentationMode) var presentaionMode
    
    @State var name = ""
    @State var location = ""
    @State var description = ""
    @State var clubPrivacy = ""
    @State var whoCanJoin = ""
    
    @State var showSheet = false
    
    @State var photos : Array<Image> = []
    
    
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
                VStack{
               
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
                    .padding(.top)
                    .padding(.bottom)
                
              
                    
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
                         
                            
                        }
                            .padding(.top)
                      
                    }
                  
                    
                    Button(action: {
                        self.showSheet = true
                    }, label: {
                        HStack{
                            Spacer()
                        Image("add photo image")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*10)
                            Spacer()

                        }
                    })
                 
                    
                    HStack{
                        Spacer()
                    Button(action: {}, label: {
                        Text("Cancel")
                            .font(AppFonts.semiBold_16)
                            .foregroundColor(AppColors.redGradientColor1)
                            .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                            .background(RoundedRectangle(cornerRadius: 50).strokeBorder(AppColors.redGradientColor1))
                    })
                    .padding(.top)
                        Spacer()
                    }
                    
                    HStack{
                        Spacer()
                Button(action: {}, label: {
                    Text("Update")
                        .font(AppFonts.semiBold_16)
                        
                        .foregroundColor(.white)
                        .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                        .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                })
                .padding(.top)
                        Spacer()
                    }
                
                
                   
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom)
                    
            }
           
           
        }
        .sheet(isPresented: self.$showSheet) {
            
            ImagePicker(sourceType: .photoLibrary) { image in
               
                    self.photos.append(Image(uiImage: image))
                
            }
            
            
            }
        .navigationBarHidden(true)
    }
}

struct Edit_Club_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Edit_Club_Screen()
    }
}
