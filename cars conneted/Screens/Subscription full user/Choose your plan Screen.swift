//
//  Choose your plan Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 22/08/2022.
//

import SwiftUI

struct Choose_your_plan_Screen: View {
    @Environment(\.presentationMode) var presentaionMode
    
    @State var toPaymentMethod = false
    
    @State private var selection = 0
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
        VStack{
            
            NavigationLink(destination: Payment_method_step_1_screen(), isActive: self.$toPaymentMethod){
                EmptyView()
            }
            
            HStack{
                Button(action: {
                    self.presentaionMode.wrappedValue.dismiss()
                }, label: {
                    Image("Icons-2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                })
               
                
                Spacer()
               
               
            }
            .padding()
            .padding(.trailing,20)
            
            HStack{
                Text("Choose your plan")
                    .font(AppFonts.semiBold_24)
                    .foregroundColor(AppColors.redGradientColor1)
            }
            
          
           
                
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            LazyHStack{
                                ForEach(0...4, id: \.self){index in
                                    planCards()
                                    
                                    
                                }
                        }
                    }
          
          
           
        }
        
        .navigationBarHidden(true)
        }
    }
}


struct planCards: View{
    var body: some View{
        VStack{
            
            ZStack{
                
                Image("Frame 8647")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.widthBlockSize*90, height: 205)
                
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
                    
                    
                }.frame(width: 150, height: 100)
                
                
                
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
            
           
            
           
            
                

            Button(action: {
                
            }, label: {
                Text("Choose Plan")
                    .font(AppFonts.semiBold_16)
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*80, height: 56))
            })
           
            

            
        }.frame(width: UIScreen.widthBlockSize*90, height: 600)
            .padding(.bottom,10)
            .padding(.top,-25)
            .background(RoundedRectangle(cornerRadius: 20).fill(.gray.opacity(0.2)))
            .padding(.leading)
    }
}

