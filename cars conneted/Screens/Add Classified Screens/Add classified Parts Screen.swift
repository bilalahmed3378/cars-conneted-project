//
//  Add classified Parts Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 24/08/2022.
//

import SwiftUI

struct Add_classified_Parts_Screen: View {
    
    @State private var availability = false
    @State private var monday = false
    @State private var tuesday = false
    @State private var wednesday = false
    @State private var thursday = false
    @State private var friday = false
    @State private var saturday = false
    @State private var differentdetails = false
    
    @State private var category = ""
    @State private var searchShop = ""
    
    @State private var mainCategory = ""
    @State private var subCategory = ""
    
    @State private var partName = ""
    @State private var model = ""
   
    @State private var condition = ""
    
    @State private var name = ""
    @State private var email = ""
    @State private var phone = ""
    @State private var title = ""
    @State private var price = ""
    @State private var description = ""
    @State private var location = ""
    
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
                    
                    Text("Add Classified")
                        .font(AppFonts.SemiBold_20)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    
                    Image("doted icons-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                  
                    
                    
                }.padding(.leading,24)
                    .padding(.trailing,24)
                    .padding(.top,20)
                
            }  .padding(.top,40)
                .padding(.bottom,30)
                .background(
                    Image("home screen background")
                    .resizable())
            
            
            ScrollView(.vertical, showsIndicators: false){
                Group{
                    
                HStack{
                    Text("Select a category")
                       
                        .font(AppFonts.regular_16)
                    
                    Spacer()
                }
                .padding(.leading)
                .padding(.trailing)
                .padding(.top)
                
                HStack{
                    TextField("Service",text:$category)
                        .foregroundColor(AppColors.redGradientColor1)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
                      .background(Rectangle().frame(height: 1).padding(.top, 40))
                      .foregroundColor(.black)
                      .overlay(HStack{
                        Spacer()
                          Menu(content: {
                              Text("Service")
                              
                              Text("Vehicles")
                              
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
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
                
                HStack{
                    Text("Link to shop")
                        .font(AppFonts.regular_16)
                    
                    Spacer()
                }
                .padding(.leading)
                .padding(.trailing)
                .padding(.top,10)
                
                HStack{
                    TextField("Search shop",text:$searchShop)
                        .foregroundColor(AppColors.redGradientColor1)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
                      .background(Rectangle().frame(height: 1).padding(.top, 40))
                      .foregroundColor(.black)
                      .overlay(HStack{
                        Spacer()
                          
                              Image("search icon black")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                    .padding()
                         
                      })
                }
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
                    
                }
                
                Group{
                HStack{
                    HStack{
                        Text("ABC")
                            .font(AppFonts.regular_14)
                           
                        
                        Image("cross icons")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                    }.padding()
                        .background(RoundedRectangle(cornerRadius: 50).fill(.gray.opacity(0.3)))
                    
                    HStack{
                        Text("desc")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.gray)
                        
                        Image("cross icons")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                    }.padding()
                        .background(RoundedRectangle(cornerRadius: 50).fill(.gray.opacity(0.3)))
                    
                    Spacer()
                }.padding(.leading)
                    .padding(.trailing)
                
                HStack{
                    Text("Main category")
                    
                    Spacer()
                }
                .padding(.leading)
                .padding(.trailing)
                .padding(.top)
                
                HStack{
                    TextField("Spare parts",text:$mainCategory)
                        .foregroundColor(AppColors.redGradientColor1)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
                      .background(Rectangle().frame(height: 1).padding(.top, 40))
                      .foregroundColor(.black)
                      .overlay(HStack{
                        Spacer()
                          Menu(content: {
                             
                          }, label: {
                              Image("dropdown menu 2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                    .padding()
                          })
                          
                      })
                }
                .padding(.leading)
                .padding(.trailing)
                
                HStack{
                    Text("Sub category")
                    
                    Spacer()
                }
                .padding(.leading)
                .padding(.trailing)
                .padding(.top)
                
                HStack{
                    TextField("Engine Spare Parts etc",text:$subCategory)
                        .foregroundColor(AppColors.redGradientColor1)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
                      .background(Rectangle().frame(height: 1).padding(.top, 40))
                      .foregroundColor(.black)
                      .overlay(HStack{
                        Spacer()
                          Menu(content: {
                             
                          }, label: {
                              Image("dropdown menu 2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                    .padding()
                          })
                          
                      })
                }
                .padding(.leading)
                .padding(.trailing)
                
                }
                
                Group{
                HStack{
                    Text("Part Details")
                    
                    Spacer()
                }
                .padding()
                .padding(.top)
                
                HStack{
                    Text("Part Name")
                    
                    Spacer()
                }
                .padding(.leading)
                .padding(.trailing)
                .padding(.top)
                
                HStack{
                    TextField("PK",text:$partName)
                        .foregroundColor(AppColors.redGradientColor1)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
                      .background(Rectangle().frame(height: 1).padding(.top, 40))
                      .foregroundColor(.black)
                    
                }
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
                
                HStack{
                    Text("Model")
                    
                    Spacer()
                }
                .padding(.leading)
                .padding(.trailing)
               
                
                HStack{
                    TextField("2019",text:$model)
                        .foregroundColor(AppColors.redGradientColor1)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
                      .background(Rectangle().frame(height: 1).padding(.top, 40))
                      .foregroundColor(.black)
                    
                }
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
                
                HStack{
                    Text("Price")
                    
                    Spacer()
                }
                .padding(.leading)
                .padding(.trailing)
               
                
                HStack{
                    TextField("56,000 USD",text:$price)
                        .foregroundColor(AppColors.redGradientColor1)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
                      .background(Rectangle().frame(height: 1).padding(.top, 40))
                      .foregroundColor(.black)
                    
                }
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
                    
                    
                    HStack{
                        Text("Condition")
                        
                        Spacer()
                    }
                    .padding(.leading)
                    .padding(.trailing)
                   
                    
                    HStack{
                        TextField("Used",text:$condition)
                            .foregroundColor(AppColors.redGradientColor1)
                          .padding(.vertical, 10)
                          .autocapitalization(.none)
                          .background(Rectangle().frame(height: 1).padding(.top, 40))
                          .foregroundColor(.black)
                          .overlay(HStack{
                            Spacer()
                              Menu(content: {
                                 Text("Used")
                                  
                                  Text("New")
                              }, label: {
                                  Image("dropdown menu 2")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 20, height: 20)
                                        .padding()
                              })
                              
                          })
                    }
                    .padding(.leading)
                    .padding(.trailing)
                
                    
                    
                }
                
                Group{
                    
                VStack{
                    
            Text("Description")
              .padding(.top,20)
              .frame(maxWidth: .infinity, alignment: .leading)
              .padding(.bottom,-5)
            
              
            TextField("Tell us about this car",text:$description)
                .foregroundColor(AppColors.redGradientColor1)
              .padding(.vertical, 10)
              .autocapitalization(.none)
              .background(Rectangle().frame(height: 1).padding(.top, 40))
              .foregroundColor(.black)
              
                    
                }
                .padding(.leading)
                .padding(.trailing)
                
                VStack{
                    
            Text("Location")
              .padding(.top,20)
              .frame(maxWidth: .infinity, alignment: .leading)
              .padding(.bottom,-5)
            
              
            TextField("Washington, DC",text:$location)
                .foregroundColor(AppColors.redGradientColor1)
              .padding(.vertical, 10)
              .autocapitalization(.none)
              .background(Rectangle().frame(height: 1).padding(.top, 40))
              .foregroundColor(.black)
              
                    
                }
                .padding(.leading)
                .padding(.trailing)
                
                    
                    HStack{
                        Text("Upload Images")
                           .font(AppFonts.regular_16)
                        
                        Spacer()
                    }
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.top)
                        
                        HStack{
                            Image("Rectangle 4485")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 120, height: 90)
                            
                            
                            Image("Rectangle 4485")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 120, height: 90)
                            
                            Image("Frame 40-2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 120, height: 90)
                            
                        }
                        .padding()
                    
                    HStack{
                        Text("Different Contact Details")
                           .font(AppFonts.regular_16)
                        
                        Toggle("", isOn: $differentdetails)
                            .toggleStyle(SwitchToggleStyle(tint: .green))
                        
                        Spacer()
                    }
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.top)
                    
                    
                }
                
                
                Group{
                    
                    if(self.differentdetails){
                    Group{
                        
                VStack{
                    
            Text("Name")
              .padding(.top,20)
              .frame(maxWidth: .infinity, alignment: .leading)
              .padding(.bottom,-5)
            
              
            TextField("John Wick",text:$name)
                .foregroundColor(AppColors.redGradientColor1)
              .padding(.vertical, 10)
              .autocapitalization(.none)
              .background(Rectangle().frame(height: 1).padding(.top, 40))
              .foregroundColor(.black)
             
                    
                }
                .padding(.leading)
                .padding(.trailing)
                
                
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
                .padding(.leading)
                .padding(.trailing)
                
                VStack{
                    
            Text("Phone Number")
              .padding(.top,20)
              .frame(maxWidth: .infinity, alignment: .leading)
             .padding(.bottom,-5)
            
              
            TextField("+96-43564356456",text:$phone)
                .foregroundColor(AppColors.redGradientColor1)
              .padding(.vertical, 10)
              .autocapitalization(.none)
              .background(Rectangle().frame(height: 1).padding(.top, 40))
              .foregroundColor(.black)
             
                    
                }
                .padding(.leading)
                .padding(.trailing)
                        
                    }
                    }
                
                Button(action: {}, label: {
                    Text("Preview")
                        .font(AppFonts.semiBold_16)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.widthBlockSize*90, height: 70)
                        .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                })
                .padding(.top,30)
                .padding(.bottom)
                }
            }
           
            Spacer()
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Add_classified_Parts_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Add_classified_Parts_Screen()
    }
}
