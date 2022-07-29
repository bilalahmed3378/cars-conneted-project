//
//  User Profile- Wall.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 26/07/2022.
//

import SwiftUI

struct User_Profile__Wall: View {
    
    @State var isPostView: Bool = true
    @State var isfollowing: Bool = true
    
    var body: some View {
        ZStack{
            
            ScrollView{
                VStack{
                    Group{
                        HStack{
                            Image("Icons-2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 35, height: 35)
                            
                            Spacer()
                            
                            Image("Icons-1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 35, height: 35)
                            
                        }.padding(.bottom)
                        Group{
                            Image("unsplash_spxgIcI7YGo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 360, height: 250)
                                .padding(.top)
                            
                            Image("unsplash_OhKElOkQ3RE-1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)
                                .offset(x: 0, y: -57)
                            
                            Text("Elon Musk")
                                .font(AppFonts.medium_18)
                                .padding(.top, -40)
                        }
                       
                        
                        HStack{
                            
                            Button(action: {
                                self.isfollowing.toggle()
                            }, label: {
                                if (self.isfollowing) {
                                    HStack{
                                        Text("Follow")
                                            .font(AppFonts.semiBold_14)
                                            .foregroundColor(.white)
                                        
                                        Image("eva_person-add-fill")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 20, height: 20)
                                    }
                                    .frame(width: 160, height: 50 )
                                    .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                    
                                }
                                else{
                                    
                                    Text("Following")
                                        .font(AppFonts.semiBold_14)
                                        .foregroundColor(.red)
                                        .frame(width: 160, height: 50 )
                                        .background(RoundedRectangle(cornerRadius: 50).strokeBorder(.red, lineWidth: 1))
                                }
                                
                                
                                
                                
                                
                               
                                HStack{
                                    
                                    Text("Messages")
                                        .font(AppFonts.semiBold_14)
                                        .foregroundColor(AppColors.redGradientColor1)
                                    
                                    Image("Message icon-1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 20, height: 20)
                                    
                                }
                                .frame(width: 160, height: 50 )
                                .background(RoundedRectangle(cornerRadius: 50).strokeBorder(AppColors.redGradientColor2))
                                
                            })
                        }
                        
                            
                            Group{
                                HStack{
                                    VStack{
                                        Text("Following")
                                            .font(AppFonts.regular_16)
                                            .padding(.bottom,10)
                                            .foregroundColor(AppColors.redGradientColor1)
                                        Text("156")
                                            .font(AppFonts.regular_16)
                                            .foregroundColor(AppColors.redGradientColor1)
                                    }
                                    Spacer()
                                    VStack{
                                        Text("Followers")
                                            .font(AppFonts.regular_16)
                                            .padding(.bottom,10)
                                            .foregroundColor(AppColors.redGradientColor1)
                                        Text("289")
                                            .font(AppFonts.regular_16)
                                            .foregroundColor(AppColors.redGradientColor1)
                                    }
                                    Spacer()
                                    
                                    VStack{
                                        Text("Posts")
                                            .font(AppFonts.regular_16)
                                            .padding(.bottom,10)
                                            .foregroundColor(AppColors.redGradientColor1)
                                        Text("90")
                                            .font(AppFonts.regular_16)
                                            .foregroundColor(AppColors.redGradientColor1)
                                    }
                                }
                                .padding()
                                
                            }
                        
                       Text("Risus ullamcorper sed ultrices quam mauris ullamcorper vulputate elementum morbi. A aliquet aenean faucibus turpis erat. Sed neque lobortis et nullam et bibendum tristique faucibus elementum.")
                            .font(AppFonts.regular_14)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.gray)
                            .padding()
                        
                        
                        Group{
                            HStack{
                                
                                Button(action: {
                                    self.isPostView = true
                                }, label: {
                                    
                                    if(self.isPostView){
                                        Text("Posts")
                                            .foregroundColor(.white)
                                            .frame(width: 100, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                    }
                                    else{
                                        Text("Posts")
                                            .font(AppFonts.regular_16)
                                            .foregroundColor(.gray)
                                            .frame(width: 100, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 50).strokeBorder(.black , lineWidth: 1))
                                    }
                                      
                                })
                                
                                
                                Button(action: {
                                    self.isPostView = false
                                }, label: {
                                    
                                    if !(self.isPostView){
                                        Text("Garage")
                                            .font(AppFonts.regular_16)
                                            .foregroundColor(.white)
                                            .frame(width: 100, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                    }
                                    else{
                                        Text("Garage")
                                            .font(AppFonts.regular_16)
                                            .foregroundColor(.gray)
                                            .frame(width: 100, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 50).strokeBorder(.black , lineWidth: 1))
                                    }
                                    
                                })
                                
                            }
                            .padding(.bottom)
                            
                            
                            // in garage screen
                            if(!self.isPostView)  {  HStack{
                                Text("5 Cars in Garage")
                                    .font(AppFonts.regular_18)
                                    .foregroundColor(AppColors.redGradientColor1)
                                Spacer()
                            }.padding(10)
                                
                                HStack{
                                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliqueto.")
                                        .font(AppFonts.regular_12)
                                        .foregroundColor(.gray)
                                    
                                    Spacer()
                                }
                                .padding(.leading,10)
                                .padding(.bottom)
                            }
                        }
                        
                        // in post screen
                        LazyVStack{(
                            ForEach(0...5 , id:\.self){ index in
                                if(self.isPostView){
                                    PostCard2()
                                }
                                else{
                                    VStack{
                                        ZStack(alignment: .leading){
                                            Image("unsplash_1ZhZpP91olQ")
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: 377, height: 190)
                                            VStack{
                                                HStack{
                                                    Text("Slot 1")
                                                        .font(AppFonts.regular_12)
                                                        .foregroundColor(.white)
                                                        .frame(width: 80, height: 30)
                                                        .background(RoundedRectangle(cornerRadius: 8).fill(.gray))
                                                    Spacer()
                                                }
                                                .padding(.leading)
                                                
                                                Spacer()
                                                
                                                HStack{
                                                    Image("Icons-3")
                                                    Spacer()
                                                    Image("Icons-4")
                                                }
                                                .padding(.leading)
                                                .padding(.trailing)
                                            }
                                        }
                                        
                                        HStack{
                                            Text("Honda Civic 1.6 Turbo")
                                                .font(AppFonts.semiBold_14)
                                                
                                            Spacer()
                                            
                                            Text("view details")
                                                .font(AppFonts.regular_12)
                                                .foregroundColor(AppColors.redGradientColor1)
                                        }
                                        .padding(.top,30)
                                        .padding(.bottom,20)
                                        
                                    }
                                    .padding()
                                }
                            })
                        }
                        
                        
                        
                    }
                    .padding()
                    .padding(.top,-20)
                }
            }
        }
    }
    
    struct User_Profile__Wall_Previews: PreviewProvider {
        static var previews: some View {
            User_Profile__Wall()
        }
    }
    struct PostCard2 : View {
        
        
        var body: some View {
            
            VStack(alignment: .leading){
                
                HStack{
                    
                    Image("post picture")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                    
                    VStack(alignment: .leading){
                        Text("Elizebeth Smith")
                            .font(AppFonts.medium_14)
                            .padding(.bottom,5)
                        
                        Text("1h ago")
                            .font(AppFonts.regular_12)
                            .foregroundColor(Color.gray)
                        
                        
                    }
                    Spacer()
                    
                    Image("doted Icons")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    
                }.padding(.bottom,10)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                    .font(AppFonts.regular_12)
                    .foregroundColor(Color.gray)
                
                Image("unsplash_gmA751dxisA")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                HStack{
                    
                    Image("Group 7370")
                    
                    Text("Arsalan and 20 other")
                        .font(AppFonts.regular_12)
                        .foregroundColor(Color.gray)
                    
                    Spacer()
                    
                    Text("12 comments")
                        .font(AppFonts.regular_12)
                        .foregroundColor(Color.gray)
                    
                }
                
                Image("Line 2")
                
                HStack{
                    HStack{
                        Image("heart icon")
                        Text("Like")
                            .font(AppFonts.regular_12)
                            .foregroundColor(Color.gray)
                        
                        
                    }
                    
                    Spacer()
                    HStack{
                        Image("ant-design_comment-outlined")
                        Text("Comment")
                            .font(AppFonts.regular_12)
                            .fontWeight(.thin)
                            .foregroundColor(Color.gray)
                        
                    }
                    Spacer()
                    HStack{
                        Image("ion_share-social-sharp")
                        Text("Share")
                            .font(AppFonts.regular_12)
                            .foregroundColor(Color.gray)
                    }
                    Spacer()
                    
                    HStack{
                        Image("Icons")
                        Text("Save")
                            .font(AppFonts.regular_12)
                            .foregroundColor(Color.gray)
                    }
                    
                    
                }
                
                Image("Line 2")
                
                
                
                
            }
            .padding(.bottom,20)
            .padding(.leading,10)
            .padding(.trailing,10)
            .padding(.top,20)
        }
    }
}
    
