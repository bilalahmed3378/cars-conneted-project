//
//  Edit Garage Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 23/08/2022.
//

import SwiftUI

struct Edit_Garage_Screen: View {
    @Environment(\.presentationMode) var presentaionMode
    @State var isSelected: Bool = true
    @State var garage = ""
    var body: some View {
        ZStack{
            
           
        VStack{
           
                HStack{
                    Button(action: {}, label: {
                        
                        Image("Icons-2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                    })
                   
                    
                    Spacer()
                   
                }
                .padding()
            
            HStack{
                Text("Edit your Garage")
                    .font(AppFonts.semiBold_24)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Edit your Garage")
                        .font(AppFonts.semiBold_24)
                        .fontWeight(.semibold))
                
                Spacer()
            }
            .padding()
            
            
            Text("Its time to setup your garage and add your beautiful cars collection. It will take a moment.")
                .font(AppFonts.regular_14)
                .padding(.leading,10)
                .padding(.trailing,10)
            
            HStack{
                Text("Visibility")
                    .font(AppFonts.regular_14)
                
                
                Spacer()
                
            }.padding()
                .padding(.top)
            
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
                
            Text("Garage Name")
              .padding(.top,20)
              .frame(maxWidth: .infinity, alignment: .leading)
              .padding(.leading,10)
              .padding(.trailing,10)
            
              
            TextField("Enter your garage name",text:$garage)
                .foregroundColor(AppColors.redGradientColor1)
              .padding(.vertical, 10)
              .autocapitalization(.none)
              .background(Rectangle().frame(height: 1).padding(.top, 40))
              .foregroundColor(.black)
              .padding(.leading,10)
              .padding(.trailing,10)
       
            Button(action: {}, label: {
                Text("Update")
                    .font(AppFonts.semiBold_16)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.widthBlockSize*90, height: 70)
                    .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
            })
            .padding(.top,30)
                
            
            
                Spacer()
        }
        .padding(.leading)
        .padding(.trailing)
                
           
        } .navigationBarHidden(true)
    }
}

struct Edit_Garage_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Edit_Garage_Screen()
    }
}
