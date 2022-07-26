//
//  User Profile- Wall.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 26/07/2022.
//

import SwiftUI

struct User_Profile__Wall: View {
    
    @State var isPostView: Bool = true
    
    var body: some View {
        ZStack{
            ScrollView{
            VStack{
                Group{
        HStack{
            Image("Icons-2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
            
             Spacer()
            
            Image("Icons-1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
            
        }.padding(.bottom)
                
            Image("unsplash_spxgIcI7YGo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 360, height: 250)
                    .padding(.top)
                
                Image("unsplash_OhKElOkQ3RE-1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .offset(x: 0, y: -45)
                
                Text("Elon Musk")
                    .font(.title)
                    .padding(.top, -20)
                
                HStack{
                    
                HStack{
                    Text("Follow")
                        .foregroundColor(.white)
                    
                    Image("eva_person-add-fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                }
                .frame(width: 160, height: 50 )
                .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    
                    Spacer()
                    
                    HStack{
                        Text("Messages")
                            .foregroundColor(AppColors.redGradientColor1)
                        
                        Image("Message icon-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                        
                    }
                    .frame(width: 160, height: 50 )
                    .background(RoundedRectangle(cornerRadius: 50).strokeBorder(AppColors.redGradientColor2))
                
                }
                .padding()
                
                HStack{
                    VStack{
                        Text("Following")
                            .padding(.bottom,10)
                            .foregroundColor(AppColors.redGradientColor1)
                        Text("156")
                            .foregroundColor(AppColors.redGradientColor1)
                    }
                    Spacer()
                    VStack{
                        Text("Followers")
                            .padding(.bottom,10)
                            .foregroundColor(AppColors.redGradientColor1)
                        Text("289")
                            .foregroundColor(AppColors.redGradientColor1)
                    }
                    Spacer()

                    VStack{
                        Text("Posts")
                            .padding(.bottom,10)
                            .foregroundColor(AppColors.redGradientColor1)
                        Text("90")
                            .foregroundColor(AppColors.redGradientColor1)
                    }
                }
                .padding()
                }
                Text("Risus ullamcorper sed ultrices quam mauris ullamcorper vulputate elementum morbi. A aliquet aenean faucibus turpis erat. Sed neque lobortis et nullam et bibendum tristique faucibus elementum.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                    .padding()
                
                HStack{
                    Button(action: {
                        self.isPostView = true
                    }, label: {
                        Text("Posts")
                            .foregroundColor(.white)
                            .frame(width: 100, height: 50)
                        
                           .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        
                        
                        
                    })
                  
                    Button(action: {
                        self.isPostView = false
                    }, label: {
                        Text("Garage")
                            .foregroundColor(.gray)
                            .frame(width: 100, height: 50)
                            .background(RoundedRectangle(cornerRadius: 50).strokeBorder(Color.gray))
                    })
                  
                }
                .padding(.bottom)
                    
                
                // in garage screen
                if(!self.isPostView)  {  HStack{
                    Text("5 Cars in Garage")
                        .font(.title)
                        .foregroundColor(AppColors.redGradientColor1)
                    Spacer()
                }.padding(10)
                
                HStack{
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliqueto.")
                        .foregroundColor(.gray)
                    
                    Spacer()
                }
                .padding(.leading,10)
                .padding(.bottom)
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
                                            .font(.caption)
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
                                        .fontWeight(.bold)
                                    Spacer()
                                    
                                    Text("view details")
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
        
        VStack{
            
            HStack{
               
                Image("post picture")
                
                VStack(alignment: .leading){
                    Text("Elizebeth Smith")
                    Text("1h ago")
                        .foregroundColor(Color.gray)
                    
                    
                }
                Spacer()
                
                Image("doted Icons")
                
            }.padding(.bottom,10)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                .font(.subheadline)
                .foregroundColor(Color.gray)
            
            Image("unsplash_gmA751dxisA")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack{
                
                Image("Group 7370")
                
                Text("Arsalan and 20 other")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                
                Spacer()
                
                Text("12 comments")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                
            }
            
            Image("Line 2")
            
            HStack{
                HStack{
                    Image("heart icon")
                    Text("Like")
                        .fontWeight(.thin)
                        .foregroundColor(Color.gray)
                    
                    
                }
                
                Spacer()
                HStack{
                    Image("ant-design_comment-outlined")
                    Text("Comment")
                        .fontWeight(.thin)
                        .foregroundColor(Color.gray)
                    
                }
                Spacer()
                HStack{
                    Image("ion_share-social-sharp")
                    Text("Share")
                        .fontWeight(.thin)
                        .foregroundColor(Color.gray)
                }
                Spacer()
                
                HStack{
                    Image("Icons")
                    Text("Save")
                        .fontWeight(.thin)
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


