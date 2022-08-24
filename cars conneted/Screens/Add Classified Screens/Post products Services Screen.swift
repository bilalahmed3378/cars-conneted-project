//
//  Post products Services Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 24/08/2022.
//

import SwiftUI

struct Post_products_Services_Screen: View {
    
    @State private var availability = true
    @State private var monday = true
    @State private var tuesday = true
    @State private var wednesday = true
    @State private var thursday = true
    @State private var friday = true
    @State private var saturday = true
    
    @State private var name = ""
    @State private var email = ""
    @State private var phone = ""
    
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
                    
                    Text("Preview")
                        .font(AppFonts.SemiBold_20)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Image("clarity_shopping-cart-solid")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                    
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
                    Image("unsplash_AHnhdjyTNGM")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.widthBlockSize*92, height: 240)
                }
                .padding(.top)
                
                HStack{
                    Text("Car Wash")
                        .font(AppFonts.medium_16)
                    
                    Image("Ellipse 3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 5, height: 5)
                        .padding(.leading,1)
                    
                    Text("Service")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Text("$50,000")
                        .font(AppFonts.medium_16)
                }
                .padding()
                
                HStack{
                    Image("location black icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                    
                    Text("Washington DC, USA")
                        .font(AppFonts.regular_14)
                    
                    Spacer()
                    
                    Text("28/07/2022")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.gray)
                }
                .padding()
                
                Divider()
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                
                HStack{
                    Text("Add availability hours")
                        .font(AppFonts.regular_16)
                    
                    Toggle("", isOn: $availability)
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                }
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
                }
                
                if !(self.availability == false){
                Group{
                VStack{
                    HStack{
                        Text("Monday")
                            .font(AppFonts.regular_14)
                        
                        Toggle("", isOn: $monday)
                            .toggleStyle(SwitchToggleStyle(tint: .green))
                    }
                    .padding(.leading)
                        .padding(.trailing)
                        .padding(.bottom)
                    
                    
                    if !(self.monday == false){
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
                        .padding(.leading)
                            .padding(.trailing)
                            .padding(.bottom)
                    }
                   
                    
                    
                }
                
                Divider()
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                
                
                HStack{
                    Text("Tuesday")
                        .font(AppFonts.regular_14)
                    
                    Toggle("", isOn: $tuesday)
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                }
                .padding(.leading)
                .padding(.trailing)
                    
                    if !(self.tuesday == false){
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
                        .padding(.leading)
                            .padding(.trailing)
                            .padding(.bottom)
                    }
                
                Divider()
                    .padding()
                
                
                HStack{
                    Text("Wednesday")
                        .font(AppFonts.regular_14)
                    
                    Toggle("", isOn: $wednesday)
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                }
                .padding(.leading)
                .padding(.trailing)
                    
                    if !(self.wednesday == false){
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
                        .padding(.leading)
                            .padding(.trailing)
                            .padding(.bottom)
                    }
                
                Divider()
                    .padding()
                }
                Group{
                HStack{
                    Text("Thursday")
                        .font(AppFonts.regular_14)
                    
                    Toggle("", isOn: $thursday)
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                }
                .padding(.leading)
                .padding(.trailing)
                    
                    
                    if !(self.thursday == false){
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
                        .padding(.leading)
                            .padding(.trailing)
                            .padding(.bottom)
                    }
                
                
                Divider().padding()
                
                HStack{
                    Text("Friday")
                        .font(AppFonts.regular_14)
                    
                    Toggle("", isOn: $friday)
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                }
                .padding(.leading)
                .padding(.trailing)
                    
                    if !(self.friday == false){
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
                        .padding(.leading)
                            .padding(.trailing)
                            .padding(.bottom)
                    }
                
                Divider().padding()
                
                HStack{
                    Text("Saturday")
                        .font(AppFonts.regular_14)
                    
                    Toggle("", isOn: $saturday)
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                }
                .padding(.leading)
                .padding(.trailing)
                    
                    if !(self.saturday == false){
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
                        .padding(.leading)
                            .padding(.trailing)
                            .padding(.bottom)
                    }
                    
                Divider().padding()
                    
                }
                    
                }
                
                HStack{
                    Text("Contact Details")
                        .font(AppFonts.medium_16)
                    Spacer()
                }
                .padding()
                .padding(.bottom,-10)
                
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
                
                VStack(alignment: .leading){
                    
                HStack{
                    Text("Description")
                        .font(AppFonts.medium_16)
                    Spacer()
                }
                .padding()
                .padding(.top)
                
                HStack{
                    
                    Text("Tincidunt vestibulum aenean eleifend arcu vel leo porta donec tellus. Malesuada tellus dui aliquam semper odio. Egestas proin viv...")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.gray)
                    
                    
                }.padding(.leading)
                    .padding(.trailing)
                }
                
                Button(action: {}, label: {
                    Text("Post Product")
                        .font(AppFonts.semiBold_16)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.widthBlockSize*90, height: 70)
                        .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                })
                .padding(.top,30)
                .padding(.bottom)
                
            }
           
            Spacer()
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Post_products_Services_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Post_products_Services_Screen()
    }
}
