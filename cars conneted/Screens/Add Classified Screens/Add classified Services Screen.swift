//
//  Add classified Services Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 24/08/2022.
//

import SwiftUI

struct Add_classified_Services_Screen: View {
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
    
    @State private var name = ""
    @State private var email = ""
    @State private var phone = ""
    @State private var title = ""
    @State private var price = ""
    @State private var description = ""
    @State private var location = ""
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
                    
                    Text("Add Classified")
                        .font(AppFonts.SemiBold_20)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    
                    Image("doted icons-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                  
                    
                    
                }.padding(.leading)
                    .padding(.trailing)
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
              
                .padding(.bottom)
                
                HStack{
                    Text("Link to shop")
                        .font(AppFonts.regular_16)
                    
                    Spacer()
                }
                
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
              
                .padding(.bottom)
                    
                }
                
                
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
                }
                
                
                HStack{
                    Text("Service details")
                        .font(AppFonts.regular_16)
                    
                    Spacer()
                }
                
                .padding(.top,30)
                
                VStack{
                    
            Text("Title")
              .padding(.top,20)
              .frame(maxWidth: .infinity, alignment: .leading)
              .padding(.bottom,-5)
            
              
            TextField("Car Wash",text:$title)
                .foregroundColor(AppColors.redGradientColor1)
              .padding(.vertical, 10)
              .autocapitalization(.none)
              .background(Rectangle().frame(height: 1).padding(.top, 40))
              .foregroundColor(.black)
              
                    
                }
               
                
                VStack{
                    
            Text("Price")
              .padding(.top,20)
              .frame(maxWidth: .infinity, alignment: .leading)
              .padding(.bottom,-5)
            
              
            TextField("$ 400",text:$price)
                .foregroundColor(AppColors.redGradientColor1)
              .padding(.vertical, 10)
              .autocapitalization(.none)
              .background(Rectangle().frame(height: 1).padding(.top, 40))
              .foregroundColor(.black)
              
                    
                }
              
                .padding(.bottom)
                
                
                
                HStack{
                    Text("Add availability hours")
                        .font(AppFonts.regular_16)
                    
                    Toggle("", isOn: $availability)
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                }
                .padding(.bottom)
               
                
                
                if (self.availability){
                Group{
                VStack{
                    HStack{
                        Text("Monday")
                            .font(AppFonts.regular_14)
                        
                        Toggle("", isOn: $monday)
                            .toggleStyle(SwitchToggleStyle(tint: .green))
                    }
                   
                        .padding(.bottom)
                    
                    
                    if (self.monday){
                        HStack{
                            VStack(alignment: .leading){
                                Text("Start time")
                                    .font(AppFonts.regular_14)
                                
                                Text("9:00 AM")
                                    .font(AppFonts.regular_12)
                                    .foregroundColor(.gray)
                                    .padding()
                                    .padding(.trailing,30)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                
                            }
                            
                            Spacer()
                            
                            VStack(alignment: .leading){
                                Text("End time")
                                    .font(AppFonts.regular_14)
                                
                                Text("9:00 AM")
                                    .font(AppFonts.regular_12)
                                    .foregroundColor(.gray)
                                    .padding()
                                    .padding(.trailing,30)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                
                            }
                            
                            
                        }
                       
                           
                    }
                   
                    
                    
                }
                
                Divider()
                   
                   
                
                
                HStack{
                    Text("Tuesday")
                        .font(AppFonts.regular_14)
                    
                    Toggle("", isOn: $tuesday)
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                }
               
                    
                    if (self.tuesday){
                        HStack{
                            VStack(alignment: .leading){
                                Text("Start time")
                                    .font(AppFonts.regular_14)
                                
                                Text("9:00 AM")
                                    .font(AppFonts.regular_12)
                                    .foregroundColor(.gray)
                                    .padding()
                                    .padding(.trailing,30)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                
                            }
                            
                            Spacer()
                            
                            VStack(alignment: .leading){
                                Text("End time")
                                    .font(AppFonts.regular_14)
                                
                                Text("9:00 AM")
                                    .font(AppFonts.regular_12)
                                    .foregroundColor(.gray)
                                    .padding()
                                    .padding(.trailing,30)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                
                            }
                            
                            
                        }
                       
                            .padding(.bottom)
                    }
                
                Divider()
                   
                
                
                HStack{
                    Text("Wednesday")
                        .font(AppFonts.regular_14)
                    
                    Toggle("", isOn: $wednesday)
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                }
                
                    
                    if (self.wednesday){
                        HStack{
                            VStack(alignment: .leading){
                                Text("Start time")
                                    .font(AppFonts.regular_14)
                                
                                Text("9:00 AM")
                                    .font(AppFonts.regular_12)
                                    .foregroundColor(.gray)
                                    .padding()
                                    .padding(.trailing,30)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                
                            }
                            
                            Spacer()
                            
                            VStack(alignment: .leading){
                                Text("End time")
                                    .font(AppFonts.regular_14)
                                
                                Text("9:00 AM")
                                    .font(AppFonts.regular_12)
                                    .foregroundColor(.gray)
                                    .padding()
                                    .padding(.trailing,30)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                
                            }
                            
                            
                        }
                        .padding(.bottom)
                        
                    }
                
                Divider()
                   
                }
                    
                Group{
                HStack{
                    Text("Thursday")
                        .font(AppFonts.regular_14)
                    
                    Toggle("", isOn: $thursday)
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                }
               
                    
                    
                    if (self.thursday){
                        HStack{
                            VStack(alignment: .leading){
                                Text("Start time")
                                    .font(AppFonts.regular_14)
                                
                                Text("9:00 AM")
                                    .font(AppFonts.regular_12)
                                    .foregroundColor(.gray)
                                    .padding()
                                    .padding(.trailing,30)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                
                            }
                            
                            Spacer()
                            
                            VStack(alignment: .leading){
                                Text("End time")
                                    .font(AppFonts.regular_14)
                                
                                Text("9:00 AM")
                                    .font(AppFonts.regular_12)
                                    .foregroundColor(.gray)
                                    .padding()
                                    .padding(.trailing,30)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                
                            }
                            
                            
                        }
                         .padding(.bottom)
                        
                    }
                
                
                Divider()
                
                HStack{
                    Text("Friday")
                        .font(AppFonts.regular_14)
                    
                    Toggle("", isOn: $friday)
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                }
                
              
                    
                    if (self.friday){
                        HStack{
                            VStack(alignment: .leading){
                                Text("Start time")
                                    .font(AppFonts.regular_14)
                                
                                Text("9:00 AM")
                                    .font(AppFonts.regular_12)
                                    .foregroundColor(.gray)
                                    .padding()
                                    .padding(.trailing,30)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                
                            }
                            
                            Spacer()
                            
                            VStack(alignment: .leading){
                                Text("End time")
                                    .font(AppFonts.regular_14)
                                
                                Text("9:00 AM")
                                    .font(AppFonts.regular_12)
                                    .foregroundColor(.gray)
                                    .padding()
                                    .padding(.trailing,30)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                
                            }
                            
                            
                        }
                       
                            .padding(.bottom)
                    }
                
                Divider()
                
                HStack{
                    Text("Saturday")
                        .font(AppFonts.regular_14)
                    
                    Toggle("", isOn: $saturday)
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                }
               
                    
                    if (self.saturday){
                        HStack{
                            VStack(alignment: .leading){
                                Text("Start time")
                                    .font(AppFonts.regular_14)
                                
                                Text("9:00 AM")
                                    .font(AppFonts.regular_12)
                                    .foregroundColor(.gray)
                                    .padding()
                                    .padding(.trailing,30)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                
                            }
                            
                            Spacer()
                            
                            VStack(alignment: .leading){
                                Text("End time")
                                    .font(AppFonts.regular_14)
                                
                                Text("9:00 AM")
                                    .font(AppFonts.regular_12)
                                    .foregroundColor(.gray)
                                    .padding()
                                    .padding(.trailing,30)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                
                            }
                            
                            
                        }
                       
                            .padding(.bottom)
                    }
                    
                Divider()
                    
                }
                    
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
               
                
                HStack{
                    Text("Upload Images")
                       .font(AppFonts.regular_16)
                    
                    Spacer()
                }
               
                .padding(.top)
                    
                    HStack{
                        Image("Rectangle 4485")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.widthBlockSize*30, height: 90)
                        
                        
                        Image("Rectangle 4485")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.widthBlockSize*30, height: 90)
                        
                        Image("Frame 40-2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.widthBlockSize*30, height: 90)
                        
                    }
                   
                    
                    
                    HStack{
                        Text("Different Contact Details")
                           .font(AppFonts.regular_16)
                        
                        Toggle("", isOn: $differentdetails)
                            .toggleStyle(SwitchToggleStyle(tint: .green))
                        
                        Spacer()
                    }
                    
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
               
                        
                    }
                    }
                
                Button(action: {}, label: {
                    Text("Preview")
                        .font(AppFonts.semiBold_16)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                        .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                })
                .padding(.top,30)
                .padding(.bottom)
                }
            }
            .padding(.leading)
                .padding(.trailing)
           
            Spacer()
        }.edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}

struct Add_classified_Services_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Add_classified_Services_Screen()
    }
}
