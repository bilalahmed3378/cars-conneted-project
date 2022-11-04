//
//  FeedBack Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 17/08/2022.
//

import SwiftUI

struct FeedBack_Screen: View {
    @State var name = ""
    @State var email = ""
    @State var feedback = ""
   
    @Environment (\.presentationMode) var presentationMode
    
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
                
                Text("Feedback")
                    .foregroundColor(.white)
                    .font(AppFonts.SemiBold_20)
                    .offset(x: -15)
                
                Spacer()
                
                
               
                
            }.padding(.leading,20)
                .padding(.trailing,20)
                .padding(.top,20)
            
        }  .padding(.top,40)
            .padding(.bottom,30)
            .background(
                Image("home screen background")
                .resizable())
        }
            
            ScrollView(.vertical, showsIndicators: false){
            
            Text("Name")
                .font(AppFonts.regular_12)
                      .padding(.top,28)
                      .frame(maxWidth: .infinity, alignment: .leading)
                      .foregroundColor(.gray)
                      .padding(.leading)
                      .padding(.trailing)
                    
          
            
            TextField("Umer khan",text:$name)
                .font(AppFonts.regular_14)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
          
                                   
                      .background(Rectangle().frame(height: 1).padding(.top, 42))
                      .foregroundColor(.gray)
                      .padding(.leading)
                      .padding(.trailing)
            
            Text("Email")
                .font(AppFonts.regular_12)
                      .padding(.top,28)
                      .frame(maxWidth: .infinity, alignment: .leading)
                      .foregroundColor(.gray)
                      .padding(.leading)
                      .padding(.trailing)
                    
          
            
            TextField("Umer12345@gmail.com",text:$email)
                .font(AppFonts.regular_14)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
                      .background(Rectangle().frame(height: 1).padding(.top, 42))
                      .foregroundColor(.gray)
                      .padding(.leading)
                      .padding(.trailing)
            
            HStack{
                Text("Feedback")
                    .font(AppFonts.medium_20)
                Spacer()
            }
            .padding()
            .padding(.top)
            
           
            
            TextField("",text:$feedback)
                .font(AppFonts.regular_14)
                .autocapitalization(.none)
                .padding(.bottom,200)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(.gray).opacity(0.1))
                .padding(.leading)
                .padding(.trailing)
                      
            HStack{
                Spacer()
                Text("Submit Feedback")
                    .font(AppFonts.semiBold_16)
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint:.leading , endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*50, height: 40))
                
            }.padding()
                .padding(.trailing,35)
            
            }
           
            
        }.edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
    }
}

struct FeedBack_Screen_Previews: PreviewProvider {
    static var previews: some View {
        FeedBack_Screen()
    }
}
