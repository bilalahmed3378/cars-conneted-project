//
//  My Support Requests screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 18/08/2022.
//

import SwiftUI

struct My_Support_Requests_screen: View {
    @Environment (\.presentationMode) var presentationMode
    @State var searchRequest = ""
    var body: some View {
        VStack{
        
        VStack{
            
            Group{
            HStack{
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image("back icon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 35, height: 35)
                })
              
                
               Spacer()
                
                Text("My Support Requests")
                    .foregroundColor(.white)
                    .font(AppFonts.SemiBold_20)
                
                Spacer()
                
                
               
                
            }.padding(.leading,20)
                .padding(.trailing,20)
                .padding(.top,20)
            
        }
        }.padding(.top,40)
            .padding(.bottom,30)
            .background(
                Image("home screen background")
                .resizable())
            .padding(.bottom,30)
            
            
            ScrollView(.vertical, showsIndicators: false){
            
            HStack{
                Text("My Requests")
                    .font(AppFonts.semiBold_16)
                Spacer()
            }.padding(.leading)
            
            HStack{
        HStack{
            
            TextField("What is it about",text: self.$searchRequest)
                .foregroundColor(.red)
                .font(AppFonts.regular_14)
           
        } .padding(15)
            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.2)))
            }.padding()
                .padding(.top,-10)
            
            VStack{
                HStack{
                    Text("ID")
                        .font(AppFonts.medium_14)
                    
                    Spacer()
                    
                    Text("Subject")
                        .font(AppFonts.medium_14)
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Text("Status")
                        .font(AppFonts.medium_14)
                    
                    
                }.padding()
                
                Divider()
                
                HStack{
                    Text("123")
                        .font(AppFonts.regular_12)
                    
                    Spacer()
                    
                    Text("Profile Image issue")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.blue)
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Text("Solved")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.green)
                    
                }.padding()
                
                NavigationLink(destination: Support_Issue_Details_Screen(), label: {
                    HStack{
                        Text("123")
                            .font(AppFonts.regular_12)
                        
                        Spacer()
                        
                        Text("Profile Image issue")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.blue)
                        
                        Spacer()
                        Spacer()
                        Spacer()
                        
                        Text("Open")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.red)
                        
                    }.padding()
                })
               
                
                HStack{
                    Text("123")
                        .font(AppFonts.regular_12)
                    
                    Spacer()
                    
                    Text("Profile Image issue")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.blue)
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Text("Solved")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.green)
                    
                }.padding()
                
                HStack{
                    Text("123")
                        .font(AppFonts.regular_12)
                    
                    Spacer()
                    
                    Text("Profile Image issue")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.blue)
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Text("Open")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.red)
                    
                }.padding()
                
                HStack{
                    Text("123")
                        .font(AppFonts.regular_12)
                    
                    Spacer()
                    
                    Text("Profile Image issue")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.blue)
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Text("Solved")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.green)
                    
                }.padding()
                
            }.padding(.top,10)
            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.1)))
            .padding()
            
            HStack{
                
                NavigationLink(destination: MainTabContainer(), label: {
                    Text("Back to Home")
                        .font(AppFonts.semiBold_16)
                        .foregroundColor(.white)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*60, height: 50))
                
                })
                   
              
            }.padding(.top)
                    .padding(.bottom)
                
            }
            
           
            
        }.edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
    }
}

struct My_Support_Requests_screen_Previews: PreviewProvider {
    static var previews: some View {
        My_Support_Requests_screen()
    }
}
