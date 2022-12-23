//
//  My Plan screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 22/08/2022.
//

import SwiftUI

struct My_Plan_screen: View {
    @Environment(\.presentationMode) var presentaionMode
    @State var toChoosePlan = false
    @State var toCancelPlan = false
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false){
        VStack{
            
            NavigationLink(destination: Choose_your_plan_Screen(), isActive: self.$toChoosePlan){
                EmptyView()
            }
            
            NavigationLink(destination: My_Subscription_details_Screen(), isActive: self.$toCancelPlan){
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
               
                Text("Choose your plan")
                    .font(AppFonts.semiBold_24)
                    .foregroundColor(AppColors.redGradientColor1)
                
                Spacer()
                
            }
            .padding()
            .padding(.trailing,20)
            
          
            
            HStack{
                
                Text("CURRENT PLAN")
                    .font(AppFonts.medium_14)
                
                Spacer()
                
                NavigationLink(destination: {
                    My_Subscription_details_Screen()
                }){
                Text("View Details")
                    .font(AppFonts.medium_14)
                    .foregroundColor(AppColors.redGradientColor1)
                }
                
                Image("forward")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                
                
            }.padding()
                .padding(.leading,10)
                .padding(.trailing,10)
                .padding(.bottom)
                    
            VStack{
                
                ZStack{
                    
                    Image("Frame 8647")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.screenWidth - 40)
                    
                    VStack{
                        
                    HStack{
                        Spacer()
                        Image("doted icons-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 30)
                            .padding(.trailing,20)

                        
                    }
                        
                        Text("$20.99/month")
                            .font(AppFonts.SemiBold_20)
                            .foregroundColor(.white)
                            .padding(.bottom)
                        
                        Text("Basic")
                            .font(AppFonts.regular_16)
                            .foregroundColor(.white)
                        
                        
                    }.frame(width: UIScreen.screenWidth - 40)
                    
                    
                    
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
                    self.toChoosePlan = true
                }, label: {
                    Text("Upgrade")
                        .font(AppFonts.semiBold_16)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*80, height: 56))
                })
                .padding(.bottom,40)
               
                
            
                
            }.frame(width: UIScreen.screenWidth - 40)
               
                .background(RoundedRectangle(cornerRadius: 30).fill(.gray.opacity(0.2)).frame(width: UIScreen.screenWidth - 40))
         
            
                Button(action: {
                    self.toCancelPlan = true
                }, label: {
                    Text("Cancel plan")
                        .font(AppFonts.semiBold_16)
                        .foregroundColor(AppColors.redGradientColor1)
                        .background(RoundedRectangle(cornerRadius: 20).strokeBorder(AppColors.redGradientColor1).frame(width: UIScreen.widthBlockSize*80, height: 56))
                        .padding(.top,20)
                        .padding(.bottom)
                })
               
                
            
                    
              
                
            
            Spacer()
           
        }.edgesIgnoringSafeArea(.bottom)
            .navigationBarHidden(true)
        }
    }
}

struct My_Plan_screen_Previews: PreviewProvider {
    static var previews: some View {
        My_Plan_screen()
    }
}
