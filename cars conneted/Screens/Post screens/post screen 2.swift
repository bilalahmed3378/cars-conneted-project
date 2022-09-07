//
//  post screen 2.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 20/07/2022.
//

import SwiftUI

struct post_screen_2: View {
    @State private var post: String = ""
    
    @State var  isPhoto: Bool = false
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var toPostNext = false
    
   

    var body: some View {
        VStack{
            
            NavigationLink(destination: Post_screen_3(), isActive: self.$toPostNext){
                EmptyView()
            }
            
            Spacer()
            
            HStack{
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image("post back icons")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                    
                })
              
                
                Spacer()
                Text("Add Post")
                    .font(AppFonts.SemiBold_20)
                
               Spacer()
            }
            .padding()
            .padding(.trailing,20)
            
            ScrollView(.vertical,showsIndicators: false){
            
            HStack{
                Text("What is in your mind?")
                    .font(AppFonts.regular_12)
                Spacer()
            }
            .padding()
            
            TextEditor(text: self.$post)
                .font(AppFonts.regular_14)
                .foregroundColor(AppColors.redGradientColor2)
                .frame(minHeight: 80, idealHeight: 80 , maxHeight: 150)
                .colorMultiply(.white)
                .overlay(RoundedRectangle(cornerRadius: 10).strokeBorder(AppColors.redGradientColor2,lineWidth:1))
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom,40)
            
                if(self.isPhoto == false){
                    Spacer(minLength: 100)
                }
                Button(action: {
                    self.toPostNext = true
                }, label: {
                    Text("Post")
                        .font(AppFonts.semiBold_16)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                        .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                })
           
            
            VStack{
            HStack{
               
                Button(action: {
                    self.isPhoto.toggle()
                }, label: {
                    VStack{
                       Image("clarity_picture-solid-1")
                        Text("Add photo")
                            .font(AppFonts.regular_14)
                            .foregroundColor(AppColors.redGradientColor1)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(AppColors.redGradientColor2).opacity(0.5))
                })
                .padding()
              
                Spacer()
                
                Button(action: {}, label: {
                    VStack{
                        Image("bxs_video")
                        Text("Add Video")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.black)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(.gray).opacity(0.5))
                })
                
                Spacer()
              
                Button(action: {}, label: {
                    VStack{
                        Image("bxs_calendar-event")
                        Text("Add Event")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.black)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(.gray).opacity(0.5))
                })
               
            }
            .frame(width: UIScreen.widthBlockSize*90, height: 80)
            .padding(.top)
            .padding(.bottom)
            
               
                
                if(self.isPhoto){
            Divider()
                .padding()
            
            HStack{
                Text("Gallery")
                    .font(AppFonts.medium_18)
                
                Spacer()
                
                Button(action: {}, label: {
                    Text("Done")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: 85, height: 40))
                        .padding(.trailing,30)
                })
            }
            .padding()
            
            HStack{
                Text("2 Images selected")
                    .font(AppFonts.regular_12)
                    .foregroundColor(AppColors.redGradientColor2)
                Spacer()
                
            }
            .padding()
            Group{
            HStack{
                Image("unsplash_eqW1MPinEV4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("unsplash_eqW1MPinEV4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("unsplash_eqW1MPinEV4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            
            }
            .frame(width: UIScreen.widthBlockSize*90, height: 106)
          
            
            HStack{
                Image("unsplash_eqW1MPinEV4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("unsplash_eqW1MPinEV4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("unsplash_eqW1MPinEV4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            
            }
            .frame(width: UIScreen.widthBlockSize*90, height: 106)
          
            }
            HStack{
                Image("unsplash_eqW1MPinEV4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("unsplash_eqW1MPinEV4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("unsplash_eqW1MPinEV4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            
            }
            .frame(width: UIScreen.widthBlockSize*90, height: 106)
          
                }
                   
               
                
                
            }
         
           
            
            
            }
        } .edgesIgnoringSafeArea(.bottom)
            .navigationBarHidden(true)
    }
}

struct post_screen_2_Previews: PreviewProvider {
    static var previews: some View {
        post_screen_2()
    }
}
