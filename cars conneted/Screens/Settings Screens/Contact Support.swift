//
//  Contact Support.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 18/08/2022.
//

import SwiftUI

struct Contact_Support: View {
    @Environment (\.presentationMode) var presentationMode
    @State var supportSubject = ""
    @State var description = ""
    var body: some View {
        
        VStack{
        
        VStack{
            
            Group{
            HStack{
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image("BackIconWhite")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 35, height: 35)
                })
              
                
               Spacer()
                
                Text("Contact Support")
                    .foregroundColor(.white)
                    .font(AppFonts.SemiBold_20)
                    .offset(x: -15)
                
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
            
            ScrollView(.vertical, showsIndicators: false){
            
            Group{
            HStack{
                Text("Subject")
                    .font(AppFonts.semiBold_16)
                Spacer()
            }.padding(.leading)
                    .padding(.top)
            
            HStack{
        HStack{
            
            TextField("What is it about",text: self.$supportSubject)
                .foregroundColor(.red)
                .font(AppFonts.regular_14)
            
            
            
        } .padding(15)
            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.2)))
            }.padding()
                .padding(.top,-10)
            
            HStack{
                Text("Description")
                    .font(AppFonts.semiBold_16)
                Spacer()
            }.padding(.leading)
            }
            HStack{
                
        HStack{
            
            TextEditor(text: $description)
                .foregroundColor(.red)
                .font(AppFonts.regular_14)
                .frame(width: UIScreen.widthBlockSize*90, height: 200)
            
        }
        .padding(3)
        .background(RoundedRectangle(cornerRadius: 10).strokeBorder(.gray.opacity(0.8)))
                
            }.padding()
                .padding(.top,-10)
            
            HStack{
                HStack{
                Image("pin")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 18, height: 18)
                
                Text("Attach files")
                    .font(AppFonts.semiBold_12)
                }.padding().background(RoundedRectangle(cornerRadius: 5).fill(.gray.opacity(0.3)).frame(width: 110, height: 30))
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(.gray.opacity(0.8)).frame(width: 110, height: 30))
                Spacer()
                
                
            }.padding(.leading)
            
            
            HStack{
                
                NavigationLink(destination: My_Support_Requests_screen(), label: {
                    Text("Sumbit request")
                        .font(AppFonts.semiBold_16)
                        .foregroundColor(.white)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*70, height: 50))
                
                })
                    
              
            }.padding(.top)
                    .padding(.bottom)
                
            }
           
        }.edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
        
    }
}

struct Contact_Support_Previews: PreviewProvider {
    static var previews: some View {
        Contact_Support()
    }
}
