//
//  post screen 2.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 20/07/2022.
//

import SwiftUI
import HalfASheet
import Foundation

struct post_screen_2: View {
    @State private var post: String = ""
    
    @State var  isPhoto: Bool = false
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var toPostNext = false
    
    @State var addItems = true
    @State var addItem2 = false
    
    @State var showSheet = false
    
    @State var photos : Array<Image> = []
    
   

    var body: some View {
        
        
        ZStack{
            
        VStack{
            
            NavigationLink(destination: post_screen_5_preview_(), isActive: self.$toPostNext){
                EmptyView()
            }
            
           
            
            HStack{
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image("cross icons")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                    
                })
              
                
                Spacer()
                Text("Add Post")
                    .font(AppFonts.SemiBold_20)
                
               Spacer()
                
                Button(action: {
                    self.toPostNext = true
                }, label: {
                    Text("Post")
                        .font(AppFonts.semiBold_16)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: 60, height: 40))
                        .padding(.top)
                })
              
                
            }
            .padding()
            .padding(.trailing,10)
            
            
            ScrollView(.vertical,showsIndicators: false){
            
                
            
            TextEditor(text: self.$post)
                    .onTapGesture{
                        self.addItems = false
                        self.addItem2 = true
                        
                    }
                    .opacity(post.isEmpty ? 0.25 : 1)
                .font(AppFonts.regular_16)
                .foregroundColor(.black)
                .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*25)
                
                .background(RoundedRectangle(cornerRadius: 0).fill(.white))
                
                
                
                
               
                .overlay(
                    VStack{
                    HStack{
                        if(self.post.isEmpty){
                        Text("What is in your mind?")
                            .font(AppFonts.regular_16)
                        }
                        Spacer()
                    }
                        Spacer()
                    }
                    )
              
               
                
                
//                .padding(.leading)
//                .padding(.trailing)
//                .padding(.bottom)
            
         
            
            
           
            
            
            if(!self.photos.isEmpty){
              
                ForEach(0...(self.photos.count-1) ,id: \.self){ index in
                    
                    
                    self.photos[index]
                        .resizable()
                        .aspectRatio( contentMode: .fill)
                        .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*25)
                        .cornerRadius(8)
                        .overlay(
                            VStack{
                               
                                
                                HStack{
                                    Spacer()
                                    Image(systemName: "minus")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(.white)
                                        .padding(5)
                                        .frame(width: 15, height: 15)
                                        .background(Circle()
                                            .fill(.red))
                                        .offset(x: 5, y: -5)
                                        .onTapGesture{
                                            self.photos.remove(at: index)
                                        }
                                    
                                    
                                   
                                }
                                Spacer()
                            }
                            
                        )
                    
                    
                }.padding(.leading)
                    .padding(.trailing)
                    .padding(.top)
            }
            }
           
          
          
            
        }
            .sheet(isPresented: self.$showSheet) {
        
        ImagePicker(sourceType: .photoLibrary) { image in
            
                self.photos.append(Image(uiImage: image))
            
        }
        
        
        }
            
            VStack{
                Spacer()
           if (self.addItem2){
            HStack{
                
                Button(action: {
                    self.showSheet = true
                }){
                    VStack{
                        Image("ant-design_camera-filled")
                            .resizable()
                            .frame(width: 24, height: 24)
                       
                    }
                   
                    
                }
                
                
                Spacer()
                
                Button(action: {
                    
                }){
                    VStack{
                        Image("Buffer location")
                            .resizable()
                            .frame(width: 24, height: 24)
                      
                    }
                   
                    
                }
                
                
                Spacer()
                
                Button(action: {
                   
                }){
                    VStack{
                        Image("bxs_video")
                            .resizable()
                            .frame(width: 24, height: 24)
                       
                    
                    }
                   
                }
                
                
                Spacer()
                
                Button(action: {
                   
                }){
                    
                        VStack{
                            Image("dashicons_format-gallery")
                                .resizable()
                                .frame(width: 24, height: 24)
                           
                        
                        }
                      
                   
                    
                }
                
                
                Spacer()
                
                Button(action: {
                    self.addItems = true
                }){
                    
                        VStack{
                            Image("3 dots gray")
                                .resizable()
                                .frame(width: 24, height: 8)
                           
                        }
                       
                  
                    
                }
                
                
            }.padding(.top,20)
                .padding(.bottom,20)
                .padding(.leading,20)
                .padding(.trailing,20)
                .background(
                    RoundedCorners(tl: 20, tr: 20, bl: 0, br: 0).fill(.white).shadow(radius: 5))
              
                
            }
            }
            
            HalfASheetPost(isPresented: $addItems){
               ScrollView(.vertical, showsIndicators: false){
                VStack{
                    
                    HStack{
                       Image("Rectangle 24")
                    }.padding()



                    Button(action: {
                        self.addItems = false
                        self.showSheet = true
                        self.addItem2 = true

                    }){

                        
                             HStack{
                                 Image("Add post icon red")
                                     .padding(.trailing)

                                 Text("Add a photo")
                                     .foregroundColor(AppColors.redGradientColor1)
                                     .font(AppFonts.medium_16)
                                 Spacer()
                             }.padding()
                                 .padding(.leading)
                    }

                    Divider()
                    Group{

                        Button(action: {
                            self.addItems = false

                        }, label: {
                            HStack{
                                Image("add event icon red")
                                    .padding(.trailing)

                                Text("Take a video")
                                    .foregroundColor(AppColors.redGradientColor1)
                                    .font(AppFonts.medium_16)
                                Spacer()
                            }.padding()
                                    .padding(.leading)
                        })


                    Divider()

                    HStack{
                        Image("add car icon red")
                            .padding(.trailing)

                        Text("Add an event")
                            .foregroundColor(AppColors.redGradientColor1)
                            .font(AppFonts.medium_16)
                        Spacer()
                    }.padding()
                            .padding(.leading)

                    Divider()

                    HStack{
                        Image("add classified icon red")
                            .padding(.trailing)

                        Text("Add file")
                            .foregroundColor(AppColors.redGradientColor1)
                            .font(AppFonts.medium_16)
                        Spacer()
                    }.padding()
                            .padding(.leading)

                    Divider()

                    HStack{
                        Image("add club icon red")
                            .padding(.trailing)

                        Text("Add a document")
                            .foregroundColor(AppColors.redGradientColor1)
                            .font(AppFonts.medium_16)
                        Spacer()
                    }.padding()
                            .padding(.leading)
                    }
                    Divider()

                    HStack{
                        Image("add status icon red")
                            .padding(.trailing)

                        Text("Add status")
                            .foregroundColor(AppColors.redGradientColor1)
                            .font(AppFonts.medium_16)
                        Spacer()
                    }.padding()
                        .padding(.leading)
                       


                }
                
                }

            }
            .height(.proportional(0.6))
            .closeButtonColor(UIColor.white)
            .backgroundColor(UIColor.white)
          
        }
        .edgesIgnoringSafeArea(.bottom)
            .navigationBarHidden(true)
        
        
      
        
    }
}

struct post_screen_2_Previews: PreviewProvider {
    static var previews: some View {
        post_screen_2()
    }
}



