//
//  Getting Started Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 18/08/2022.
//

import SwiftUI


struct Getting_Started_Screen: View {
    @State var toSignUp = false
    @State var toLogIn = false
    
    @State var isLoggedIn : Bool = false

    
    @State var isLoginView : Bool = false

    
    @State var isUserLoggedIn : Bool = false
    
    @State var isProfileSetUp : Bool = false
    
    @State var firstTimeLoad : Bool = true
   
    
    var body: some View {
        ZStack{
            
            NavigationLink(destination: SignUp_Screen(), isActive: $toSignUp){
                EmptyView()
            }
            
            NavigationLink(destination: Login_Screen(), isActive: $toLogIn){
                EmptyView()
            }
            
            VStack{
                Image("unsplash_tHI0IUmtbWQ")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.widthBlockSize*100, height: UIScreen.heightBlockSize*100)
                Spacer()
            }
            
            VStack{
                Spacer()
                
                VStack{
                    
                HStack{
                    Image("Ellipse 35-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                }.padding()
               
                HStack{
                    Text("Cars Connected")
                        .font(AppFonts.semiBold_22)
                        .fontWeight(.semibold)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Cars Connected")
                            .font(AppFonts.semiBold_22)
                            .fontWeight(.semibold))
                    
                }.padding()
                
                HStack{
                    Text("Cars connected a social platform that connects people to post, buy and sell, create clubs and post events. ")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.gray)
                }.padding(.leading)
                        .padding(.trailing)
                        .padding(.bottom)
                
                Button(action: {
                    self.toSignUp = true
                }, label: {
                    Text("SignUp")
                        .font(AppFonts.semiBold_16)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                        .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                })
                .padding(.top,10)
                
                Button(action: {
                    self.toLogIn = true
                }, label: {
                    Text("Login")
                        .font(AppFonts.semiBold_16)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                        .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                })
                .padding(.top,10)
                .padding(.bottom,30)
                    
                }.background(RoundedCorners(tl: 40, tr: 40, bl: 0, br: 0) .fill(AppColors.whiteColor).frame(width: UIScreen.widthBlockSize*100, height: UIScreen.heightBlockSize*60).overlay(VStack{
                    Spacer()
                    HStack{
                        Spacer()
                    Image("Group 8727")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.widthBlockSize*80, height: UIScreen.heightBlockSize*40)
                    }
                }.edgesIgnoringSafeArea(.bottom)))
                
            }
            
            if(self.isLoggedIn){
                NavigationLink(destination: MainTabContainer(), isActive: self.$isLoggedIn){
                    EmptyView()
                }
            }
            
            
        }.edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
            .onAppear{
                if(self.firstTimeLoad){
                    print("first time loaded")
                    self.firstTimeLoad = false
                    
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                        DispatchQueue.global(qos: .background).async {
                            withAnimation{
                                self.isLoggedIn = AppData().isUserLoggedIn()
                            }
                        }
                    })
                    
                    
                }
            }
        
    }
}


