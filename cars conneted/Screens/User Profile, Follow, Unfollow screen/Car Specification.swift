//
//  Car Specification.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 27/07/2022.
//

import SwiftUI

struct Car_Specification: View {
    @State private var comment = ""
    @Environment(\.presentationMode) var presentaionMode
    
    var body: some View {
       
        VStack{
            ScrollView(.vertical, showsIndicators: false){
            HStack{
                Button(action: {}, label: {
                    
                    Image("Icons-2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                })
               
                
                Spacer()
                
                Text("Car Specification")
                    .font(AppFonts.SemiBold_20)
                   
                
                Spacer()
                Button(action: {}, label: {
                    Image("doted Icons")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                })
               
               }
            .padding()
            .padding(.leading,-10)
            
           
              HStack{
                Spacer()
                Image("image 11")
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                  .frame(width: UIScreen.screenWidth, height: UIScreen.heightBlockSize*40)
                  .clipped()
                  .overlay(Color.black.opacity(0.02))
                  .padding(.bottom)
              }
            
                  HStack{
                    VStack{
                      Text("Model")
                            .font(AppFonts.regular_16)
                      Text("Civic")
                            .font(AppFonts.semiBold_18)
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.redGradientColor1)
                        .padding(.top,5)
                    }
                    Spacer()
                    VStack{
                      Text("Brand")
                            .font(AppFonts.regular_16)
                      Text("Honda")
                            .font(AppFonts.semiBold_18)
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.redGradientColor1)
                        .padding(.top,5)
                    }
                    Spacer()
                    VStack{
                      Text("Year")
                            .font(AppFonts.regular_16)
                      Text("2017")
                            .font(AppFonts.semiBold_18)
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.redGradientColor1)
                        .padding(.top,5)
                    }
                  }.padding()
                
                  HStack{
                      
                    VStack{
                      Text("Engine")
                            .font(AppFonts.regular_16)
                      Text("124")
                            .font(AppFonts.semiBold_18)
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.redGradientColor1)
                        .padding(.top,5)
                    }
                      
                    Spacer()
                      
                    VStack{
                      Text("Type")
                            .font(AppFonts.regular_16)
                      Text("Sports")
                            .font(AppFonts.semiBold_18)
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.redGradientColor1)
                        .padding(.top,5)
                    }
                      
                    Spacer()
                      
                    VStack{
                      Text("Color")
                            .font(AppFonts.regular_16)
                      Text("White")
                            .font(AppFonts.semiBold_18)
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.redGradientColor1)
                        .padding(.top,5)
                    }
                      
                  }.padding()
                    
                
                  VStack(alignment: .leading){
                      
                      HStack{
                    Text("Description")
                          .font(AppFonts.regular_16)
                          Spacer()
                      }
                      
                      HStack{
                    Text("Risus ullamcorper sed ultrices quam mauris ullamcorper vulputate elementum morbi. A aliquet aenean faucibus turpis erat. Sed neque lobortis et nullam et bibendum tristique faucibus elementum.")
                          .font(AppFonts.regular_12)
                      .padding(.top,5)
                          Spacer()
                      }
                          
                  }.padding(.leading)
                    .padding(.trailing)
                
                VStack{
                    
                HStack{
                    
                    Image("Group 7367")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                    
                    Image("Group 7369")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                        .offset(x: -10, y: 0)
                    
                    
                    
                    Text("Arsalan and 20 other")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                    
                    Spacer()
                    
                    Text("12 comments")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                    
                }
                
                Divider()
                    .padding(.leading)
                    .padding(.trailing)
                
                HStack{
                    HStack{
                        Image("ei_like")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 26, height: 26)
                        
                        Text("Like")
                            .font(AppFonts.regular_12)
                            .foregroundColor(Color.gray)
                        
                        
                    }
                    
                    Spacer()
                    HStack{
                        Image("ant-design_comment-outlined")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 26, height: 26)
                        
                        Text("Comment")
                            .font(AppFonts.regular_12)
                            .foregroundColor(Color.gray)
                        
                    }
                    Spacer()
                    HStack{
                        Image("ion_share-social-sharp")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 26, height: 26)
                        
                        Text("Share")
                            .font(AppFonts.regular_12)
                            .foregroundColor(Color.gray)
                    }
                   
                   
                    
                    
                }
                    
                }.padding()
                
                VStack{
                HStack{
                TextEditor(text: self.$comment)
                       .font(AppFonts.regular_14)
                    .foregroundColor(.gray)
                    .frame(minHeight: 40, idealHeight: 40 , maxHeight: 40)
                    .colorMultiply(.white)
                    .overlay(HStack{
                        Text("Add comment")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.gray)
                            .padding(.leading)
                        Spacer()
                    })
                    
                    Image("Vector-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                      
                    
                }.padding()
                    
                    HStack{
                        Image("unsplash_OhKElOkQ3RE")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        
                        VStack(alignment: .leading){
                            Text("Jhon smith")
                                .font(AppFonts.semiBold_12)
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                                .font(AppFonts.regular_12)
                            
                                
                        }
                    } .padding(.leading)
                        .padding(.trailing)
                        .padding(.bottom)
                    
                    HStack{
                        Spacer()
                        
                        Image("heart icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                        
                        Text("Like")
                            .font(AppFonts.regular_12)
                        
                        Image("bi_reply-fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                        
                        Text("Reply")
                            .font(AppFonts.regular_12)
                    }
                    .padding(.trailing,30)
                    
                    Divider().padding()
                    
                    HStack{
                        Text("See more comments...")
                            .foregroundColor(.gray)
                            .font(AppFonts.regular_14)
                    }
                    .padding(.leading)
                        .padding(.trailing)
                        .padding(.bottom)
                    
                }.background(RoundedRectangle(cornerRadius: 0).fill(.gray.opacity(0.2)))
                
            }
            
            }.edgesIgnoringSafeArea(.bottom)
            .navigationBarHidden(true)
           

    }
}

struct Car_Specification_Previews: PreviewProvider {
    static var previews: some View {
        Car_Specification()
    }
}
