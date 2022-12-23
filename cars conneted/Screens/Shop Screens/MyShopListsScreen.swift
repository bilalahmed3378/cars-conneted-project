//
//  MyShopListsScreen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 31/10/2022.
//

import SwiftUI

struct MyShopListsScreen: View {
    @Environment(\.presentationMode) var presentaionMode
    @State private var searchText = ""
    
    var body: some View {
        VStack{
            VStack(spacing:0){
                
                HStack{
                   
                    Button(action: {
                        self.presentaionMode.wrappedValue.dismiss()
                    }, label: {
                        Image("BackIconWhite")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                           
                            
                    })
                   
                    Spacer()
                      
                      Text("My Shops")
                          .font(AppFonts.SemiBold_20)
                          .foregroundColor(.white)
                    
                    
                   Spacer()
                }
                .padding(.top,10)
                
            }
            .padding()
                .padding(.top,40)
                .background(
                    Image("home screen background")
                        .resizable()
                )
               
           
            
            HStack{
                
                TextField("Search",text: self.$searchText)
                    .foregroundColor(.red)
                    .font(AppFonts.regular_14)
                
                
                
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:20,height: 20)
                        .foregroundColor(.red)
                
                
                Button(action: {
                    
                }, label: {
                    Image("Filter 2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                   
                       
                })

            } .padding(15)
                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                .padding(.leading,20)
                .padding(.trailing,20)
                
            HStack{
                Text("14 available shops")
                    .font(AppFonts.semiBold_14)
                Spacer()
                
                
                    Text("View all")
                        .font(AppFonts.regular_12)
                        .foregroundColor(AppColors.redGradientColor1)
                
                  
            
            }
            .padding()
            .padding(.bottom,-10)
            
            ScrollView(.vertical, showsIndicators: false){
                LazyVStack{
                    ForEach(0...3 , id : \.self){index in
                        MyShopsCards()
                    }
                }
                
            }
            
            Spacer()
            
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
}


struct MyShopsCards: View{
    var body: some View{
        HStack{
          
                Image("unsplash_OhKElOkQ3RE-1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.widthBlockSize*25, height: 80)
                    .padding(.leading)
            
            
            
            VStack(alignment: .leading){
               
                    Text("Jason Statham")
                        .font(AppFonts.medium_16)
                        .padding(.bottom,3)
                
               
                    Text("jasonstatham98@gmailcom")
                        .font(AppFonts.regular_12)
                        .padding(.bottom,3)
                
                    Text("+69-636434645367676")
                        .font(AppFonts.regular_12)
                
            }
            .padding(.leading,5)
            Spacer()
           
            NavigationLink(destination: My_Shop_My_View(),  label: {
                Image("Arrow - Right Square")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .padding(.trailing)
            })
               
         
           
            
        }
        .frame(width: UIScreen.widthBlockSize*90, height: 100)
        .background(RoundedRectangle(cornerRadius: 10).fill(.blue).opacity(0.04).shadow(color: .black, radius: 5))
        .padding(.top,10)
        .padding(.trailing)
    }
}
