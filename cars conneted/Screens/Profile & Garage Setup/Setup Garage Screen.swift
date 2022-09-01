//
//  Setup Garage Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/08/2022.
//

import SwiftUI

struct Setup_Garage_Screen: View {
    @State var isSelected: Bool = true
    @Environment(\.presentationMode) var presentaionMode
    @State var garage = ""
    var body: some View {
        ZStack{
            
            VStack{
                HStack{
                    Spacer()
                Image("Group 2-3")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.widthBlockSize*50, height: UIScreen.heightBlockSize*50)
                }
                Spacer()
                HStack{
                    Spacer()
                Image("6-red-r8-audi-png-car-image 1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.widthBlockSize*80, height: UIScreen.heightBlockSize*30)
                }.padding(.bottom,40)
                
            }.edgesIgnoringSafeArea(.top)
               
        VStack{
           
                HStack{
                    Button(action: {}, label: {
                        
                        Image("Icons-2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                    })
                   
                    
                    Spacer()
                    Button(action: {}, label: {
                        Text("Skip")
                            .foregroundColor(AppColors.redGradientColor1)
                            .font(AppFonts.regular_16)
                    })
                
                }
                .padding()
            
           
            HStack{
                Text("Setup your Garage")
                    .font(AppFonts.semiBold_24)
                    .fontWeight(.semibold)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Setup your Garage")
                        .font(AppFonts.semiBold_24)
                        .fontWeight(.semibold))
                
                Spacer()
            }
            .padding()
            
            VStack(alignment: .leading){
                HStack{
            Text("Its time to setup your garage and add your beautiful cars collection. It will take a moment.")
                .font(AppFonts.regular_14)
                    
               Spacer()
                    
                }.padding(.leading)
                    .padding(.trailing)
            }
            
            HStack{
                Text("Visibility")
                    .font(AppFonts.regular_14)
                
                
                Spacer()
                
            }.padding()
              
            
            HStack{
                
                HStack{
                  
                        Button(action: {
                            self.isSelected = true
                        }, label: {
                            if (self.isSelected == true) {
                                Image("Group 7139")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                            }
                            
                            else{
                                Image("Rectangle 75")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                            }
                          
                        })
                       
                    
                   
                    
                    
                    Text("Private")
                        .font(AppFonts.regular_16)
                     
                }
                
                Spacer()
                
                HStack{
                    Button(action: {
                        self.isSelected = false
                    }, label: {
                        if(self.isSelected == false){
                            Image("Group 7139")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                        }
                        else{
                            Image("Rectangle 75")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                        
                        }
                      
                    })
                       
                    
                   
                    
                    Text("Public")
                        .font(AppFonts.regular_16)
                        
                     
                }
                
                Spacer()
                
            }
                .padding(.trailing)
                .padding(.leading)
                
            VStack{
            Text("Garage Name")
              .padding(.top,20)
              .frame(maxWidth: .infinity, alignment: .leading)
             
              
            TextField("Enter your garage name",text:$garage)
                .foregroundColor(AppColors.redGradientColor1)
              .padding(.vertical, 10)
              .autocapitalization(.none)
              .background(Rectangle().frame(height: 1).padding(.top, 30))
              .foregroundColor(.black)
            }
            .padding(.trailing)
            .padding(.leading)
       
            Button(action: {}, label: {
                Text("Next: Add your car")
                    .font(AppFonts.semiBold_16)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                    .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
            })
            .padding(.top,30)
                
            
            
                Spacer()
        }
        
        } .navigationBarHidden(true)
    }
}

struct Setup_Garage_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Setup_Garage_Screen()
    }
}
