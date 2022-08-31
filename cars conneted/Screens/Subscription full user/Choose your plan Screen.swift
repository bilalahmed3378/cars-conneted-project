//
//  Choose your plan Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 22/08/2022.
//

import SwiftUI

struct Choose_your_plan_Screen: View {
    @Environment(\.presentationMode) var presentaionMode
    var body: some View {
        VStack{
            
            HStack{
                Image("Icons-2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 35)
                
                Spacer()
               
                Text("Skip")
                    .font(AppFonts.medium_16)
                    .foregroundColor(AppColors.redGradientColor1)
               
                
            }
            .padding()
            .padding(.trailing,20)
            
            HStack{
                Text("Choose your plan")
                    .font(AppFonts.semiBold_24)
                    .foregroundColor(AppColors.redGradientColor1)
            }
            
            ScrollView(.horizontal, showsIndicators: false){
            
                HStack{
                    
            VStack{
                
                ZStack{
                    
                    Image("Frame 8647")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.widthBlockSize*90, height: 200)
                    
                    VStack{
                        
                    HStack{
                        Spacer()
                        Image("doted icons-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 30)
                        
                    }
                        
                        Text("$20.99/month")
                            .font(AppFonts.SemiBold_20)
                            .foregroundColor(.white)
                            .padding(.bottom)
                        
                        Text("Basic")
                            .font(AppFonts.regular_16)
                            .foregroundColor(.white)
                        
                        
                    }.frame(width: UIScreen.widthBlockSize*50, height: 100)
                    
                    
                    
                }
                
                VStack(alignment: .leading){
                    HStack{
                Text("Premium Access")
                    .font(AppFonts.regular_14)
                    .padding(.bottom)
                        
                        Spacer()
                    }
                    HStack{
                Text("Unlimited Lorem Ipsum")
                    .font(AppFonts.regular_14)
                    .padding(.bottom)
                        
                    }
                    
                    HStack{
                Text("Classified Marketplace Access")
                    .font(AppFonts.regular_14)
                    .padding(.bottom)
                    }
                    
                    HStack{
                Text("Can Publish 10 Products in Classified")
                    .font(AppFonts.regular_14)
                    .padding(.bottom)
                    }
                    
                    HStack{
                Text("Unlimited Lorem Ipsum")
                    .font(AppFonts.regular_14)
                    .padding(.bottom)
                    }
                    
                    HStack{
                Text("Classified Marketplace Access")
                    .font(AppFonts.regular_14)
                    .padding(.bottom)
                    }
                    
                    HStack{
                Text("Can Publish 10 Products in Classified")
                    .font(AppFonts.regular_14)
                    .padding(.bottom)
                    }
                    
                }.padding()
                
               
                
               
                HStack{
                    Image("Rectangle 7")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 10)
                    
                    Image("Ellipse 3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 10, height: 10)
                    
                    Image("Ellipse 3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 10, height: 10)
                    
                  
                }.frame(width: 80, height: 10)
                    .padding(.top)
                    .padding(.bottom,30)
                    
            
                Button(action: {}, label: {
                    Text("Choose Plan")
                        .font(AppFonts.semiBold_16)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*80, height: 56))
                })
               
                
            
                
            }.frame(width: UIScreen.widthBlockSize*90, height: 650)
                .padding(.bottom,10)
                .padding(.top,-25)
                .background(RoundedRectangle(cornerRadius: 30).fill(.gray.opacity(0.2)).frame(width: UIScreen.widthBlockSize*90, height: 650))
                .padding(.leading)
            
                    
                VStack{
                    
                    ZStack{
                        
                        Image("Frame 8897")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.widthBlockSize*90, height: 200)
                        
                        VStack{
                            
                        HStack{
                            Spacer()
                            Image("doted icons-1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 30)
                            
                        }
                            
                            Text("$20.99/month")
                                .font(AppFonts.SemiBold_20)
                                .foregroundColor(.white)
                                .padding(.bottom)
                            
                            Text("Basic")
                                .font(AppFonts.regular_16)
                                .foregroundColor(.white)
                            
                            
                        }.frame(width: UIScreen.widthBlockSize*50, height: 100)
                        
                        
                        
                    }
                    
                    VStack(alignment: .leading){
                        HStack{
                    Text("Premium Access")
                        .font(AppFonts.regular_14)
                        .padding(.bottom)
                            
                            Spacer()
                        }
                        HStack{
                    Text("Unlimited Lorem Ipsum")
                        .font(AppFonts.regular_14)
                        .padding(.bottom)
                            
                        }
                        
                        HStack{
                    Text("Classified Marketplace Access")
                        .font(AppFonts.regular_14)
                        .padding(.bottom)
                        }
                        
                        HStack{
                    Text("Can Publish 10 Products in Classified")
                        .font(AppFonts.regular_14)
                        .padding(.bottom)
                        }
                        
                        HStack{
                    Text("Unlimited Lorem Ipsum")
                        .font(AppFonts.regular_14)
                        .padding(.bottom)
                        }
                        
                        HStack{
                    Text("Classified Marketplace Access")
                        .font(AppFonts.regular_14)
                        .padding(.bottom)
                        }
                        
                        HStack{
                    Text("Can Publish 10 Products in Classified")
                        .font(AppFonts.regular_14)
                        .padding(.bottom)
                        }
                        
                    }.padding()
                    
                   
                    
                   
                    HStack{
                        Image("Ellipse 3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 10, height: 10)
                        
                        Image("Rectangle 7")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 10)
                        
                        Image("Ellipse 3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 10, height: 10)
                        
                      
                    }.frame(width: 80, height: 10)
                        .padding(.top)
                        .padding(.bottom,30)
                        
                
                    Button(action: {}, label: {
                        Text("Choose Plan")
                            .font(AppFonts.semiBold_16)
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*80, height: 56))
                    })
                   
                    
                
                    
                }.frame(width: UIScreen.widthBlockSize*90, height: 650)
                    .padding(.bottom,10)
                    .padding(.top,-25)
                    .background(RoundedRectangle(cornerRadius: 30).fill(.gray.opacity(0.2)).frame(width: UIScreen.widthBlockSize*90, height: 650))
                    .padding(.leading,10)
                    
                    VStack{
                        
                        ZStack{
                            
                            Image("Frame 8898")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: UIScreen.widthBlockSize*90, height: 200)
                            
                            VStack{
                                
                            HStack{
                                Spacer()
                                Image("doted icons-1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 30)
                                
                            }
                                
                                Text("$20.99/month")
                                    .font(AppFonts.SemiBold_20)
                                    .foregroundColor(.white)
                                    .padding(.bottom)
                                
                                Text("Basic")
                                    .font(AppFonts.regular_16)
                                    .foregroundColor(.white)
                                
                                
                            }.frame(width: UIScreen.widthBlockSize*50, height: 100)
                            
                            
                            
                        }
                        
                        VStack(alignment: .leading){
                            HStack{
                        Text("Premium Access")
                            .font(AppFonts.regular_14)
                            .padding(.bottom)
                                
                                Spacer()
                            }
                            HStack{
                        Text("Unlimited Lorem Ipsum")
                            .font(AppFonts.regular_14)
                            .padding(.bottom)
                                
                            }
                            
                            HStack{
                        Text("Classified Marketplace Access")
                            .font(AppFonts.regular_14)
                            .padding(.bottom)
                            }
                            
                            HStack{
                        Text("Can Publish 10 Products in Classified")
                            .font(AppFonts.regular_14)
                            .padding(.bottom)
                            }
                            
                            HStack{
                        Text("Unlimited Lorem Ipsum")
                            .font(AppFonts.regular_14)
                            .padding(.bottom)
                            }
                            
                            HStack{
                        Text("Classified Marketplace Access")
                            .font(AppFonts.regular_14)
                            .padding(.bottom)
                            }
                            
                            HStack{
                        Text("Can Publish 10 Products in Classified")
                            .font(AppFonts.regular_14)
                            .padding(.bottom)
                            }
                            
                        }.padding()
                        
                       
                        
                       
                        HStack{
                            Image("Ellipse 3")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 10, height: 10)
                            
                            Image("Ellipse 3")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 10, height: 10)
                            
                            Image("Rectangle 7")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 10)
                            
                          
                        }.frame(width: 80, height: 10)
                            .padding(.top)
                            .padding(.bottom,30)
                            
                    
                        Button(action: {}, label: {
                            Text("Choose Plan")
                                .font(AppFonts.semiBold_16)
                                .foregroundColor(.white)
                                .background(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*80, height: 56))
                        })
                       
                        
                    
                        
                    }.frame(width: UIScreen.widthBlockSize*90, height: 650)
                        .padding(.bottom,10)
                        .padding(.top,-25)
                        .background(RoundedRectangle(cornerRadius: 30).fill(.gray.opacity(0.2)).frame(width: UIScreen.widthBlockSize*90, height: 650))
                        .padding(.leading,10)
                        .padding(.trailing)
                    
                }
            }
            Spacer()
           
        } .navigationBarHidden(true)
    }
}

struct Choose_your_plan_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Choose_your_plan_Screen()
    }
}
