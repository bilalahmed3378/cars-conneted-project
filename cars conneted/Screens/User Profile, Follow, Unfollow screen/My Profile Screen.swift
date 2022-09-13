//
//  My Profile Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 07/09/2022.
//

import SwiftUI

struct My_Profile_Screen: View {
    @Environment(\.presentationMode) var presentaionMode
    
    @State var isPostView: Int = 0
    @State var isfollowing: Bool = true
    
    @State var viewProfile = false

    @State var viewStory = false
   
    
    var body: some View {
        ZStack{
            
            ScrollView{
                VStack{
                    
                    NavigationLink(destination: View_Status_Screen(), isActive: $viewStory){
                        EmptyView()
                    }
                    
                    
                    Group{
                        HStack{
                            Button(action: {
                                self.presentaionMode.wrappedValue.dismiss()
                            }, label: {
                                Image("Icons-2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 35, height: 35)
                            })
                          
                            
                            Spacer()
                            
                            Image("doted Icons")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 28, height: 28)
                            
                        }.padding(.leading)
                            .padding(.trailing)
                        
                        Group{
                            Image("unsplash_spxgIcI7YGo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*30)
                                .padding(.top)
                            
                            
                            Menu(content: {
                                
                                Button(action: {
                                    self.viewStory = true
                                }, label: {
                                    HStack{
                                        
                                        Text("View Story")
                                        
                                        Image("gg_profile")
                                        
                                       
                                        
                                    }
                                })
                             
                                Button(action: {
                                    self.viewProfile = true
                                }, label: {
                                    HStack{
                                        
                                        Text("View Profile Picture")
                                        
                                        Image("gg_profile-1")
                                        
                                      
                                        
                                    }
                                })
                               
                                
                            }, label: {
                                Image("unsplash_OhKElOkQ3RE-1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                   .frame(width: UIScreen.widthBlockSize*26, height: 100)
                                    .offset(x: 0, y: -45)
                                    .padding(.leading,1)
                                    .padding(.trailing,1)
                                    .padding(.bottom,5)
                                    .padding(.top,5)
                                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(.red) .offset(x: 0, y: -45))
                                   
                            })
                            
                            
                            
                            
                           
                            
                            Text("Elon Musk")
                                .font(AppFonts.medium_18)
                                .padding(.top, -30)
                        }
                       
                        HStack{
                            Image("carbon_application-mobile-1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                            
                            Text("+96-96987458962")
                                .font(AppFonts.regular_16)
                        }
                        
                        HStack{
                            Image("location black icon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                            
                            Text("Washington DC, USA")
                                .font(AppFonts.regular_16)
                        }
                        
                     
                            
                            Group{
                                HStack{
                                    
                                    NavigationLink(destination: {
                                        Following_Screen()
                                    }, label: {
                                        VStack{
                                            Text("Following")
                                                .font(AppFonts.regular_16)
                                                .padding(.bottom,10)
                                                .foregroundColor(AppColors.redGradientColor1)
                                            Text("156")
                                                .font(AppFonts.regular_16)
                                                .foregroundColor(AppColors.redGradientColor1)
                                        }
                                    })
                                  
                                    
                                    Spacer()
                                    
                                    NavigationLink(destination: {
                                        Friends_Requests_Screens()
                                    }, label: {
                                        VStack{
                                            Text("Followers")
                                                .font(AppFonts.regular_16)
                                                .padding(.bottom,10)
                                                .foregroundColor(AppColors.redGradientColor1)
                                            Text("289")
                                                .font(AppFonts.regular_16)
                                                .foregroundColor(AppColors.redGradientColor1)
                                        }
                                    })
                                   
                                    
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
                        HStack{
                            Spacer()
                       Text("Risus ullamcorper sed ultrices quam mauris ullamcorper vulputate elementum morbi. A aliquet aenean faucibus turpis erat. Sed neque lobortis et nullam et bibendum tristique faucibus elementum.")
                            .font(AppFonts.regular_14)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.gray)
                            Spacer()
                        }
                        .padding(.leading)
                        .padding(.bottom)
                        
                        
                    
                        
                        Group{
                            HStack{
                                
                                Button(action: {
                                    self.isPostView = 0
                                }, label: {
                                    
                                    if(self.isPostView == 0){
                                        Text("Posts")
                                            .font(AppFonts.regular_14)
                                            .foregroundColor(.white)
                                            .frame(width: UIScreen.widthBlockSize*22, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                    }
                                    else{
                                        Text("Posts")
                                            .font(AppFonts.regular_14)
                                            .foregroundColor(.gray)
                                            .frame(width: UIScreen.widthBlockSize*22, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                    }
                                      
                                })
                                
                                
                                Button(action: {
                                    self.isPostView = 1
                                }, label: {
                                    
                                    if ((self.isPostView == 1) ){
                                        Text("Garage")
                                            .font(AppFonts.regular_14)
                                            .foregroundColor(.white)
                                            .frame(width: UIScreen.widthBlockSize*22, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                    }
                                    else{
                                        Text("Garage")
                                            .font(AppFonts.regular_14)
                                            .foregroundColor(.gray)
                                            .frame(width: UIScreen.widthBlockSize*22, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                    }
                                    
                                })
                                
                                
                                Button(action: {
                                    self.isPostView = 2
                                }, label: {
                                    
                                    if ((self.isPostView == 2) ){
                                        Text("Classified")
                                            .font(AppFonts.regular_14)
                                            .foregroundColor(.white)
                                            .frame(width: UIScreen.widthBlockSize*22, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                    }
                                    else{
                                        Text("Classified")
                                            .font(AppFonts.regular_14)
                                            .foregroundColor(.gray)
                                            .frame(width: UIScreen.widthBlockSize*22, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                    }
                                    
                                })
                                
                                
                                Button(action: {
                                    self.isPostView = 3
                                }, label: {
                                    
                                    if ((self.isPostView == 3) ){
                                        Text("Clubs")
                                            .font(AppFonts.regular_14)
                                            .foregroundColor(.white)
                                            .frame(width: UIScreen.widthBlockSize*22, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                    }
                                    else{
                                        Text("Clubs")
                                            .font(AppFonts.regular_14)
                                            .foregroundColor(.gray)
                                            .frame(width: UIScreen.widthBlockSize*22, height: 50)
                                            .background(   RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                    }
                                    
                                })
                                
                            }
                            .padding()
                            
                        
                            
                            
                          
                            }
                        }
                    
                    ///////////////
                  
                    
                    
                      ////////////////
                       
                        LazyVStack{
                            if(self.isPostView == 0){
                                NavigationLink(destination: {
                                    post_screen_2()
                                }, label: {
                                    HStack{
                                        Image("unsplash_X6Uj51n5CE8")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 50, height: 50)
                                            .padding(.trailing,5)
                                        
                                      
                                        
                                        Text("Write something...")
                                            .font(AppFonts.regular_12)
                                            .foregroundColor(.black)
                                            .padding(.trailing,150)
                                            .padding(.top,15)
                                            .padding(.bottom,15)
                                            .padding(.leading)
                                            .background(RoundedRectangle(cornerRadius: 80).strokeBorder(.black))
                                        
                                        Spacer()
                                    }
                                    .padding()
                                    .padding(.top,-20)
                                })
                          
                            
                            (ForEach(0...5 , id:\.self){ index in
                           
                                PostCardMyProfile()
                            
                            }
                             )}
                                else if(self.isPostView == 1) {
                                    
                                    
                                    NavigationLink(destination: {
                                        Add_your_Car_Screen()
                                    }, label: {
                                        Text("Add New Car")
                                        .font(AppFonts.regular_16)
                                        .foregroundColor(AppColors.redGradientColor1)
                                        .background(RoundedRectangle(cornerRadius: 10).strokeBorder(AppColors.redGradientColor1).frame(width: UIScreen.widthBlockSize*90, height: 50))
                                    })
                                  
                                       
                                        .padding()
                                    
                              GarageCardMyProfile()
                            }
                                
                                else if(self.isPostView == 2) {
                                    
                                    NavigationLink(destination: {
                                        Add_classified_Screen()
                                    }, label: {
                                        Text("Add Classified")
                                            .font(AppFonts.regular_16)
                                            .foregroundColor(AppColors.redGradientColor1)
                                            .background(RoundedRectangle(cornerRadius: 10).strokeBorder(AppColors.redGradientColor1).frame(width: UIScreen.widthBlockSize*90, height: 50))
                                    })
                                    
                                        .padding()
                                    VStack(alignment: .leading){
                                        HStack{
                                            Text("23 items in Classified")
                                                .foregroundColor(AppColors.redGradientColor1)
                                                .font(AppFonts.regular_18)
                                            Spacer()
                                        }
                                        
                                        HStack{
                                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliqueto.")
                                                .foregroundColor(.gray)
                                                .font(AppFonts.regular_12)
                                            Spacer()
                                        }
                                    }
                                    .padding()
                            
                                    ClassifiedCardMyProfile()
                            }
                               
                            else if(self.isPostView == 3){
                                
                                NavigationLink(destination: {
                                    Create_Club_Screen()
                                }, label: {
                                    Text("Create New Club")
                                        .font(AppFonts.regular_16)
                                        .foregroundColor(AppColors.redGradientColor1)
                                        .background(RoundedRectangle(cornerRadius: 10).strokeBorder(AppColors.redGradientColor1).frame(width: UIScreen.widthBlockSize*90, height: 50))
                                })
                                
                              
                                    .padding()
                                ClubsCardMyProfile()
                            }
                                
                                
                        
                        }
                        
                        
                        
                    }
                    .padding()
                    .padding(.top,-20)
                }
            } .navigationBarHidden(true)
    }
}

struct My_Profile_Screen_Previews: PreviewProvider {
    static var previews: some View {
        My_Profile_Screen()
    }
}


struct PostCardMyProfile : View {
    
    @State var showingSheet = false
    
    @State var showingSheetComments = false
    
    var body: some View {
        
        VStack{
            
           
            
            HStack{
               
                Image("post picture")
                
                VStack(alignment: .leading){
                    Text("Elizebeth Smith")
                        .font(AppFonts.medium_14)
                    
                    Text("1h ago")
                        .foregroundColor(Color.gray)
                        .font(AppFonts.regular_12)
                    
                    
                }
                Spacer()
                
                Image("doted Icons")
                
            }.padding(.bottom,10)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                .font(AppFonts.regular_12)
                .foregroundColor(Color.gray)
            
            Image("unsplash_gmA751dxisA")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack{
                
                
                Button(action: {
                    self.showingSheet = true
                }, label: {
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
                        .font(AppFonts.regular_12)
                        .foregroundColor(Color.gray)
                })
                .sheet(isPresented: $showingSheet){
                    whoLikedScreen()
                    
                }

               
                
                Spacer()
                
                Button(action: {
                    self.showingSheetComments = true
                }, label: {
                    Text("12 comments")
                        .font(AppFonts.regular_12)
                        .foregroundColor(Color.gray)
                    
                })
                .sheet(isPresented: $showingSheetComments){
                    commentsScreen()
                    
                }
              
            }
            
            Divider()
            
            HStack{
                HStack{
                    Image("heart icon")
                    Text("Like")
                        .font(AppFonts.regular_12)
                        .foregroundColor(Color.gray)
                    
                    
                }
                
                Spacer()
                
                Button(action: {
                    self.showingSheetComments = true
                }, label: {
                    HStack{
                        Image("ant-design_comment-outlined")
                        Text("Comment")
                            .font(AppFonts.regular_12)
                            .foregroundColor(Color.gray)
                        
                    }
                }) .sheet(isPresented: $showingSheetComments){
                    commentsScreen()
                    
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
            
           Divider()
            
        
            
            
        }
        .padding()
        
    }
}


struct GarageCardMyProfile : View {
    @State var showingSheet = false
    
    @State var showingSheetComments = false
    
    var body: some View {
        
        VStack{
           
            ZStack{
                Image("unsplash_1ZhZpP91olQ")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*28)
                VStack{
                    HStack{
                       
                        Spacer()
                        
                        Image("doted icons-1")
                    }
                    .padding(.leading)
                    .padding(.top)
                    .padding(.trailing)
                    
                    Spacer()
                    
                    HStack{
                     
                        Image("Ellipse 3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 8, height: 8)
                        
                        Image("Ellipse 20")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 8, height: 8)
                        
                        Image("Ellipse 3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 8, height: 8)
                        
                    }
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                }
            }
            
            VStack{
                
               
            HStack{
                
                Button(action: {
                    self.showingSheet = true
                }, label: {
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
                        .font(AppFonts.regular_12)
                        .foregroundColor(Color.gray)
                })
                .sheet(isPresented: $showingSheet){
                    whoLikedScreen()
                    
                }
                
               
                
                Spacer()
                
                Button(action: {
                    self.showingSheetComments = true
                }, label: {
                    Text("12 comments")
                        .font(AppFonts.regular_12)
                        .foregroundColor(Color.gray)
                })
                .sheet(isPresented: $showingSheetComments){
                    commentsScreen()
                    
                }
               
                
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
                
                Button(action: {
                    self.showingSheetComments = true
                }, label: {
                    HStack{
                        Image("ant-design_comment-outlined")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 26, height: 26)
                        
                        Text("Comment")
                            .font(AppFonts.regular_12)
                            .foregroundColor(Color.gray)
                        
                    }
                })
                .sheet(isPresented: $showingSheetComments){
                    commentsScreen()
                    
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
                
            } .padding(.leading)
                .padding(.trailing)
               
            
            VStack{
            
            HStack{
                Text("Engine v 1.6")
                    .font(AppFonts.semiBold_14)
                Spacer()
                Text("$ 5,000")
                    .foregroundColor(AppColors.redGradientColor1)
                    .font(AppFonts.bold_16)
                
            }.padding(.top)
            .padding(.leading)
                    .padding(.trailing)
           
            
            
            HStack{
                Text("Spare Parts")
                    .font(AppFonts.regular_12)
                    .foregroundColor(.gray)
                
                Image("Ellipse 3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 5, height: 5)
                   
                
                Text("Used")
                    .font(AppFonts.regular_12)
                    .foregroundColor(.gray)
                
                Image("Ellipse 3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 5, height: 5)
                   
                
                Text("2019")
                    .font(AppFonts.regular_12)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding(.leading)
                .padding(.trailing)
            
            
            HStack{
                
                Text("(5.0)")
                    .font(AppFonts.regular_12)
                
                
                Image("bxs_star")
                Image("bxs_star")
                Image("bxs_star")
                Image("bxs_star")
                Image("bxs_star")
                
               Spacer()
                
                NavigationLink(destination: {
                    Car_Specification()
                }, label: {
                    Text("View Details")
                        .font(AppFonts.medium_14)
                        .foregroundColor(AppColors.redGradientColor1)
                    
                    Image("Icons-5")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                })
               
                
            }.padding(.bottom)
            .padding(.leading)
                    .padding(.trailing)
            
                
            }
            .background(RoundedCorners(tl: 0, tr: 0, bl: 10, br: 10).fill(.gray.opacity(0.3)))
            .padding()
            .padding(.top,-15)
            
            
            
        }
        
        Divider().padding()
        
    }
    
    
}

struct ClubsCardMyProfile: View {
    var body: some View {
        
        VStack{
            
           
            ZStack(alignment: .top){
                
                
                
                Image("unsplash_gmA751dxisA-1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.widthBlockSize*92, height: 240)
                    .overlay(Color.black.opacity(0.03))
                    .clipped()
                   
                
                
                VStack{
                    
                    HStack{
                        
                        Spacer()
                        
                        
                        Text("Invite")
                            .foregroundColor(.white)
                            .font(AppFonts.medium_12)
                            .padding(15)
                            .padding(.leading,10)
                            .padding(.trailing,10)
                            .background(AppColors.redGradientColor1)
                            .cornerRadius(8)
                            .padding(.trailing,20)
                          

                        
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: My_club_Details__admin_view__Screen(), label: {
                        HStack{
                            
                            
                            
                            
                            Text("Ace Classic Club")
                                .foregroundColor(.white)
                                .font(AppFonts.regular_12)
                            
                            Spacer()
                            
                            Image("unsplash_-IPFb6J03Mw")
                                .offset(x:36)
                            
                            Image("unsplash_-IPFb6J03Mw")
                                .offset(x:24)
                            
                            Image("unsplash_-IPFb6J03Mw")
                                .offset(x:12)
                            
                            Image("unsplash_-IPFb6J03Mw")
                            //                            .offset(x:15)
                            
                            Text("+120")
                                .foregroundColor(.white)
                                .fontWeight(.medium)
                            
                            
                        }.padding()
                            .padding(.top,-20)
                            .background(RoundedCorners(tl: 0, tr: 0, bl: 10, br: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*92, height: UIScreen.heightBlockSize*10))
                          
                    })
                   
                    
                    
                    
                }.padding(.top,20)
                
                
                
            }
            .frame(height: 240)
            .cornerRadius(10)
            .padding(.top,20)
            
           
            
        }.padding(.bottom,20)
            .padding(.leading,20)
            .padding(.trailing,20)
          

     
        
        
    }
    
}


struct ClassifiedCardMyProfile: View {
    var body: some View{
        
        VStack{
            ZStack{
                Image("classified")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*30)
                
                VStack{
                    Spacer()
                    HStack{
                        Image("Ellipse 3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 10, height: 10)
                        
                        Image("Ellipse 20")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 10, height: 10)
                        
                        Image("Ellipse 3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 10, height: 10)
                    }
                }.padding(.bottom,30)
                
                
                
            }.frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*24)
            
            VStack{
            
            HStack{
                Text("Engine v 1.6")
                    .font(AppFonts.semiBold_14)
                Spacer()
                Text("$ 5,000")
                    .foregroundColor(AppColors.redGradientColor1)
                    .font(AppFonts.bold_16)
                
            }
            .padding(.leading,30)
                .padding(.trailing,30)
                .padding(.bottom,2)
            
            
            HStack{
                Text("Spare Parts")
                    .font(AppFonts.regular_12)
                    .foregroundColor(.gray)
                
                Image("Ellipse 3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 5, height: 5)
                   
                
                Text("Used")
                    .font(AppFonts.regular_12)
                    .foregroundColor(.gray)
                
                Image("Ellipse 3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 5, height: 5)
                   
                
                Text("2019")
                    .font(AppFonts.regular_12)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding(.leading,30)
                .padding(.trailing,30)
                .padding(.bottom,2)
            
            
            HStack{
                
                Text("(5.0)")
                    .font(AppFonts.regular_12)
                
                
                Image("bxs_star")
                Image("bxs_star")
                Image("bxs_star")
                Image("bxs_star")
                Image("bxs_star")
                
               Spacer()
                
                NavigationLink(destination: {
                    Classified_Spare_Parts_Screen()
                }, label: {
                    Text("View Details")
                        .font(AppFonts.medium_14)
                        .foregroundColor(AppColors.redGradientColor1)
                    
                    Image("Icons-5")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                })
               
                
            }
            .padding(.leading,30)
                .padding(.trailing,20)
                
            }.frame(width: UIScreen.widthBlockSize*90, height: 94)
            .background(RoundedCorners(tl: 0, tr: 0, bl: 10, br: 10).stroke(.gray).frame(width: UIScreen.widthBlockSize*90, height: 94))
            
        }.frame(width: UIScreen.widthBlockSize*90)
        
        
        
        
    }
    
}



struct whoLikedScreen: View {
    @State var ifAll = true
    
    @State var ifLike = false
    
    @State var ifHeart = false
    
    
    
    
    
    var body: some View {
        VStack{
            
            HStack{
                Text("People who reacted")
                    .foregroundColor(.black)
                    .font(AppFonts.SemiBold_20)
                
                Spacer()
            }.padding()
            
            HStack{
            
                Button(action: {
                    self.ifAll = true
                    self.ifLike = false
                    self.ifHeart = false
                }, label: {
                    HStack{
                        Text("All")
                            .font(AppFonts.regular_16)
                            .foregroundColor(self.ifAll == true ? .blue : .gray)
                        
                        Text("845")
                            .font(AppFonts.regular_16)
                            .foregroundColor(self.ifAll == true ? .blue : .gray)
                    }
                    .padding(.trailing,30)
                })
         
                
                Button(action: {
                    self.ifAll = false
                    self.ifLike = true
                    self.ifHeart = false
                }, label: {
                    HStack{
                       Image("Group 7367")
                        
                        Text("625")
                            .font(AppFonts.regular_16)
                            .foregroundColor(self.ifLike == true ? .blue : .gray)
                    }
                    .padding(.trailing,30)
                })
             
                Button(action: {
                    self.ifAll = false
                    self.ifLike = false
                    self.ifHeart = true
                }, label: {
                    HStack{
                       Image("Group 7369")
                        
                        Text("220")
                            .font(AppFonts.regular_16)
                            .foregroundColor(self.ifHeart == true ? .blue : .gray)
                    }
                })
               
                
            Spacer()
                
                
            
            }.padding(.leading)
                .padding(.trailing)
            
            Divider()
            
            ScrollView(){
                
                LazyVStack{
                    if(self.ifAll){
                    ForEach(0...10 , id: \.self){index in
                        all()
                    }
                }
                }
                
                if(self.ifLike){
                LazyVStack{
                    ForEach(0...10 , id: \.self){index in
                        liked()
                    }
                }
                }
                
                if(self.ifHeart){
                LazyVStack{
                    ForEach(0...10 , id: \.self){index in
                    heart()
                    }
                }
                }
                
                
            }
           
            
            
            
        }
    }
}

struct all: View {
    var body: some View{
        
        HStack{
            Image("unsplash_X6Uj51n5CE8")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            
            VStack(alignment: .leading){
                Text("Emma Watson")
                    .foregroundColor(.black)
                    .font(AppFonts.semiBold_16)
                    .padding(.bottom,1)
                
                Text("(Haripur, Pakistan)")
                    .foregroundColor(.black)
                    .font(AppFonts.regular_16)
                    .foregroundColor(.gray)
                
                
            }.padding(.leading,5)
            
            Spacer()
            
            NavigationLink(destination: {
                User_Profile__Wall()
            }, label: {
                Text("View Profile")
                    .font(AppFonts.regular_16)
                    .foregroundColor(AppColors.redGradientColor1)
                
            })
           
            
            
        }.padding()
            
        
    }
}


struct liked: View {
    var body: some View{
        
        HStack{
            Image("unsplash_X6Uj51n5CE8")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            
            VStack(alignment: .leading){
                Text("Hashim Ustad")
                    .foregroundColor(.black)
                    .font(AppFonts.semiBold_16)
                    .padding(.bottom,1)
                
                Text("(Haripur, Pakistan)")
                    .font(AppFonts.regular_16)
                    .foregroundColor(.gray)
                
                
            }.padding(.leading,5)
            
            Spacer()
            
            NavigationLink(destination: {
                User_Profile__Wall()
            }, label: {
                Text("View Profile")
                    .font(AppFonts.regular_16)
                    .foregroundColor(AppColors.redGradientColor1)
                
            })
            
            
        }.padding()
            
        
    }
}

struct heart: View {
    var body: some View{
        
        HStack{
            Image("unsplash_X6Uj51n5CE8")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            
            VStack(alignment: .leading){
                Text("Boi Nadeem")
                    .foregroundColor(.black)
                    .font(AppFonts.semiBold_16)
                    .padding(.bottom,1)
                
                Text("(Haripur, Pakistan)")
                    .font(AppFonts.regular_16)
                    .foregroundColor(.gray)
                
                
            }.padding(.leading,5)
            
            Spacer()
            
            NavigationLink(destination: {
                User_Profile__Wall()
            }, label: {
                
                Text("View Profile")
                    .font(AppFonts.regular_16)
                    .foregroundColor(AppColors.redGradientColor1)
                
            })
            
            
        }.padding()
        
    }
}

