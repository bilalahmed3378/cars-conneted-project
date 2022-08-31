//
//  Add your Car Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/08/2022.
//

import SwiftUI

struct Add_your_Car_Screen: View {
    @State var brand = ""
    @State var model = ""
    @State var color = ""
    @State var engine = ""
    @State var type = ""
    @State var year = ""
    @State var description = ""
    @Environment(\.presentationMode) var presentaionMode
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
                        
                       
                       
                    }
                    .padding()
                
                HStack{
                    Text("Add your Car")
                        .font(AppFonts.semiBold_24)
                        .fontWeight(.semibold)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Add your Car")
                            .font(AppFonts.semiBold_24)
                            .fontWeight(.semibold))
                    
                    Spacer()
                }
                .padding()
                
                
                Text("Add your car and provide us required deatils to setup in your garage")
                    .font(AppFonts.regular_14)
                    .padding(.leading,10)
                    .padding(.trailing,10)
                    
                    Group{
                    VStack{
                        
                Text("Brand")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                  .padding(.bottom,-5)
                
                  
                TextField("Honda",text:$brand)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                        
                    }
                    
                    VStack{
                        
                Text("Model")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                  .padding(.bottom,-5)
                
                  
                TextField("Civic",text:$model)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                        
                    }
                    
                    VStack{
                        
                Text("Color")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                  .padding(.bottom,-5)
                
                  
                TextField("Black",text:$color)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                        
                    }
                    
                    VStack{
                        
                Text("Engine")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                  .padding(.bottom,-5)
                
                  
                TextField("2000 CC",text:$engine)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                        
                    }
                    
                    VStack{
                        
                Text("Type")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                  .padding(.bottom,-5)
                
                  
                TextField("Sedan, Sports, Etc",text:$type)
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
                        
                Text("Year")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                  .padding(.bottom,-5)
                
                  
                TextField("2020",text:$year)
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
                      Image("bxs_calendar-event")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                    }.padding()
                  })
                        
                    }
                        
                    }
                    
                    VStack{
                        
                Text("Description")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                  .padding(.bottom,-5)
                
                  
                TextField("Car Description",text:$description)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.black)
                  .padding(.leading,10)
                  .padding(.trailing,10)
                        
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
                        
                        Image("unsplash_eqW1MPinEV4")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.widthBlockSize*30, height: 100)
                        
                    }.padding(.top)
                        .padding(.bottom)
                    
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
                    Text("Save to Garage")
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
           
           
        } .navigationBarHidden(true)
    }
}

struct Add_your_Car_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Add_your_Car_Screen()
    }
}
