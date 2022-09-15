//
//  Classified Vehicle Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 25/08/2022.
//

import SwiftUI

struct Classified_Vehicle_Screen: View {
    @Environment(\.presentationMode) var presentaionMode
    
    @State var pictureDp: Int = 0
    var body: some View {
        VStack{
           
            VStack{
                
                // top bar
                HStack{
                    Button(action: {
                        self.presentaionMode.wrappedValue.dismiss()
                    }, label: {
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
                        .offset(x: -10)
                    
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
                Group{
                    
                    
                ZStack{
                    
                    
                    if(self.pictureDp == 0){
                    Image("unsplash_AHnhdjyTNGM")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.widthBlockSize*90, height: 230)
                    }
                    
                    if(self.pictureDp == 1){
                    Image("unsplash_gmA751dxisA")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.widthBlockSize*90, height: 230)
                    }
                    
                    if(self.pictureDp == 2){
                    Image("unsplash_AHnhdjyTNGM")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.widthBlockSize*90, height: 230)
                    }
                  
                    
                    VStack{
                        
                        HStack{
                            Spacer()
                        Image("save icon")
                              .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            
                            Image("share white")
                                  .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                            
                            
                            
                        }
                        .padding()
                        .padding(.top)
                        
                        Spacer()
                        
                        HStack(alignment: .bottom){
                            
                            Text("SOLD")
                                .font(AppFonts.semiBold_16)
                                .foregroundColor(AppColors.redGradientColor1)
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10).fill(.yellow))
                               
                               
                            
                            Spacer()
                          
                            HStack{
                                
                                Button(action: {
                                    self.pictureDp = 0
                                }, label: {
                                    if(self.pictureDp == 0){
                                    Image("Ellipse 20")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 10, height: 10)
                                        .padding(.trailing)
                                    }
                                    else{
                                        Image("Ellipse 3")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 10, height: 10)
                                            .padding(.trailing)
                                    }
                                })
                               
                                
                                Button(action: {
                                    self.pictureDp = 1
                                }, label: {
                                    if(self.pictureDp == 1){
                                    Image("Ellipse 20")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 10, height: 10)
                                        .padding(.trailing)
                                    }
                                    else{
                                        Image("Ellipse 3")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 10, height: 10)
                                            .padding(.trailing)
                                    }
                                })
                        
                       
                                Button(action: {
                                    self.pictureDp = 2
                                }, label: {
                                    if(self.pictureDp == 2){
                                    Image("Ellipse 20")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 10, height: 10)
                                        .padding(.trailing)
                                    }
                                    else{
                                        Image("Ellipse 3")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 10, height: 10)
                                            .padding(.trailing)
                                    }
                                })
                                
                            }.offset(x: -15)
                            
                            Spacer()
                            
                            Image("white heart")
                                .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            
                        }
                            .padding(.bottom,2)
                            .padding()
                           
                        
                        
                    }
                    
                    
                }
                .padding(.top)
                .frame(width: UIScreen.widthBlockSize*90, height: 230)
                
                HStack{
                    Text("Honda")
                        .font(AppFonts.medium_16)
                    
                    Image("Ellipse 3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 5, height: 5)
                        .padding(.leading,1)
                    
                    Text("Vehicle")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.gray)
                    
                  
                    Spacer()
                    
                    Text("$50,000")
                        .font(AppFonts.medium_16)
                    
                }
                .padding()
                .padding(.bottom,-15)
                
                    HStack{
                        Text("2019")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.gray)
                        
                        Image("Ellipse 3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 5, height: 5)
                            .padding(.leading,1)
                        
                        
                        Text("Used")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                    }.padding(.leading)
                        .padding(.trailing)
                        .padding(.bottom)
                    
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
                .padding(.leading)
                .padding(.trailing)
                
                Divider()
                    .padding()
                    .padding(.top,-10)
                
              
                    HStack{
                        Image("bxs_star")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 16, height: 16)
                        
                        Image("bxs_star")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 16, height: 16)
                        
                        Image("bxs_star")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 16, height: 16)
                        
                        Image("bxs_star")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 16, height: 16)
                        
                        Image("bxs_star")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 16, height: 16)
                        
                        Text("5.0")
                            .font(AppFonts.medium_14)
                        
                        Text("(View Reviews)")
                            .foregroundColor(AppColors.redGradientColor1)
                            .font(AppFonts.medium_14)
                        
                     Spacer()
                        
                    }
                    .padding(.leading)
                        .padding(.trailing)
                        .padding(.bottom,5)
                    
                    
                    VStack{
                    HStack{
                        
                        Text("Tincidunt vestibulum aenean eleifend arcu vel leo porta donec tellus. Malesuada tellus dui aliquam semper odio. Egestas proin viv...")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                    }
                    }.padding(.leading)
                        .padding(.trailing)
                        .padding(.bottom)
                    
                    
                
                HStack{
                    VStack(alignment: .leading){
                        Text("Fuel type")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.gray)
                            .padding(.bottom,5)
                        
                        
                        Text("Petrol")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.gray)
                        
                        Divider().padding(.trailing)
                        
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .leading){
                        Text("Fuel type")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.gray)
                            .padding(.bottom,5)
                        
                        
                        Text("Petrol")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.gray)
                        
                        Divider()
                        
                    }.padding(.leading)
                    
                    
                }
                .padding()
                .padding(.top,-20)
                }
                
                Group{
                
                VStack(alignment: .leading){
                    
                HStack{
                    Text("Description")
                        .font(AppFonts.medium_16)
                    Spacer()
                }
                .padding()
                .padding(.top,-10)
               
                
                HStack{
                    
                    Text("Tincidunt vestibulum aenean eleifend arcu vel leo porta donec tellus. Malesuada tellus dui aliquam semper odio. Egestas proin viv...")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.gray)
                    
                    
                }.padding(.leading)
                    .padding(.trailing)
                }
                
                Divider()
                    .padding()
                
                HStack{
                    Text("Contact Details")
                        .font(AppFonts.medium_16)
                    Spacer()
                }
                .padding()
                
                
                
                HStack{
                    Text("Name")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.gray)
                    
                    Spacer()

                    Text("John Wick")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.gray)
                }
                .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom,10)
                
                HStack{
                    Text("Email")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.gray)
                    
                    Spacer()

                    Text("123@gmail.com")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.gray)
                }
                .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom,10)
                
                HStack{
                    Text("Phone Number")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.gray)
                    
                    Spacer()

                    Text("123456789")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.gray)
                }
                .padding(.leading)
                    .padding(.trailing)
                    
                    Divider()
                        .padding()
                    
                    VStack{
                        Text("5.0")
                            .font(AppFonts.medium_14)
                        
                        HStack{
                            Image("bxs_star")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 16, height: 16)
                            
                            Image("bxs_star")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 16, height: 16)
                            
                            Image("bxs_star")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 16, height: 16)
                            
                            Image("bxs_star")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 16, height: 16)
                            
                            Image("bxs_star")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 16, height: 16)
                            
                        }
                        
                        HStack{
                            Text("55 reviews")
                                .font(AppFonts.regular_12)
                            
                            Text("(View Reviews)")
                                .foregroundColor(AppColors.redGradientColor1)
                                .font(AppFonts.medium_14)
                            
                        }
                        
                    }
                    
                    
                
                Divider()
                    .padding()
                
                HStack{
                    Text("Classified By")
                        .font(AppFonts.medium_16)
                    
                    Spacer()
                    
                }.padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                }
                
                HStack{
                    
                    Image("Ellipse 796")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                    
                    VStack(alignment: .leading){
                        Text("Giga Mall")
                            .font(AppFonts.medium_16)
                            .padding(.bottom,0.5)
                        
                        Text("Washington, DC")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.gray)
                            .padding(.bottom,0.5)
                        
                        Text("View Shop Details")
                            .font(AppFonts.regular_14)
                            .foregroundColor(AppColors.redGradientColor1)
                            .padding(.bottom,0.5)
                        
                        
                    }
                    
                    Spacer()
                    
                }.padding(.top,10)
                        .padding(.bottom,10)
                        .padding(.leading,10)
                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.2)))
                    .padding(.leading)
                        .padding(.trailing)
                
                
           
                
                Button(action: {}, label: {
                    Text("Contact")
                        .font(AppFonts.semiBold_16)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                        .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                })
                .padding(.top,30)
                .padding(.bottom)
                
                
                /// if  my view
                ///
                ///
                HStack{
                Button(action: {}, label: {
                    Text("Mark as sold")
                        .font(AppFonts.semiBold_16)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.widthBlockSize*43, height: UIScreen.heightBlockSize*7)
                        .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                })
              
                    
                    Button(action: {}, label: {
                        Text("Edit product")
                            .font(AppFonts.semiBold_16)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .frame(width: UIScreen.widthBlockSize*43, height: UIScreen.heightBlockSize*7)
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    })
                  
                }  .padding(.top)
                    .padding(.bottom)
                ////
                
            }
           
            Spacer()
        }.edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}

struct Classified_Vehicle_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Classified_Vehicle_Screen()
    }
}
