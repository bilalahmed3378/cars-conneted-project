//
//  Home screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/07/2022.
//

import SwiftUI

struct HomeTab: View {
    @State private var searchText = ""

    var body: some View {
        
        
            ZStack{
                
                VStack{
                    
                    VStack{
                        
                        // top bar
                        HStack{
                            Image("side menu icon white")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 35, height: 35)
                            
                            Spacer()
                            Spacer()
                            Spacer()
                            
                            Text("Home")
                                .font(AppFonts.SemiBold_20)
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Image("Location white")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding(.trailing,10)
                            
                            Image("bell white")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding(.trailing,10)
                            
                            NavigationLink(destination: Setting_Screen()){
                                Image("profile icon home")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 40, height: 40)
                            }
                            
                            
                            
                            
                        }
                       
                        .padding(.leading,24)
                            .padding(.trailing,24)
                            .padding(.top,20)
                        
                        // search bar
                        HStack{
                            
                            TextField("Search",text: self.$searchText)
                                .foregroundColor(.red)
                            
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:20,height: 20)
                                .foregroundColor(.red)
                            
                            
                        }
                        .padding(15)
                        .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.7)))
                        .padding(.top,20)
                        .padding(.leading,20)
                        .padding(.trailing,20)
                        
                        
                        // status heading
                        HStack{
                            Text("Status")
                                .foregroundColor(.white)
                            Spacer()
                        }
                        .padding(.leading,20)
                        .padding(.top,10)
                        
                        // list of ststuses
                        
                        ScrollView(.horizontal,showsIndicators: false){
                            
                            HStack{
                                
                                VStack{
                                    Image("Group 7364")
                                    Text("Add")
                                        .foregroundColor(.white)
                                  
                                }
                                .padding(.leading,20)
                                
                                ForEach(0...10 , id:\.self){ index in
                                    VStack{
                                        Image("Group 7365")
                                        Text("Arsalan")
                                            .foregroundColor(.white)
                                        
                                    }
                                    .padding(.leading,20)
                                }
                                
                            }
                        }
                          
                        
                    }
                   
                    .padding(.top,30)
                    .padding(.bottom,15)
                    .background(
                        Image("home screen background")
                        .resizable()
                    )
                 
                    ScrollView(.vertical, showsIndicators: false){
                        
                        ///////////////
                    
                      
                      
                       ////////////////////////
                        HStack{
                            Image("unsplash_X6Uj51n5CE8")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .padding(.trailing,5)
                            
                          
                            
                            Text("Write something...")
                                .font(AppFonts.regular_12)
                                .padding(.trailing,190)
                                .padding(.top,15)
                                .padding(.bottom,15)
                                .padding(.leading)
                                .background(RoundedRectangle(cornerRadius: 80).strokeBorder(.black))
                            
                            Spacer()
                        }
                        .padding()
                        .padding(.bottom,-20)
                        
                        
                        
                        ForEach(0...1 ,  id: \.self){index in
                            PostsHome()
                            Divider()
                            
                            EventsHome()
                            Divider()
                            
                            ClubsCardHome()
                            Divider()
                        }
                        
                        
                  
                       
                    }
               
                }
               
            }
            .edgesIgnoringSafeArea(.top)
            .edgesIgnoringSafeArea(.bottom)
        
        
    }
}

struct HomeTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeTab()
    }
}


struct PostsHome : View {
  
  var body: some View {
      
      VStack{
          
          HStack{
             
              Image("post picture")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .frame(width: 50, height: 50)
              
              VStack(alignment: .leading){
                  
                  HStack{
                      Text("Elizebeth Smith.")
                          .font(AppFonts.medium_14)
                      
                      Text("Follow")
                          .font(AppFonts.medium_14)
                          .foregroundColor(.blue)
                  }
                  .padding(.bottom,2)
                  
                
                  Text("1h ago")
                      .font(AppFonts.regular_12)
                      .foregroundColor(.gray)
                     
                  
                  
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
          
      }.padding(.bottom,20)
          .padding(.leading,20)
          .padding(.trailing,20)
          .padding(.top,20)
      
  }
}

struct EventsHome : View {
  
  var body: some View {

      VStack{
          
          HStack{
             
              Image("post picture")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .frame(width: 50, height: 50)
              
              VStack(alignment: .leading){
                  
                  HStack{
                      Text("Bhai Nadeem.")
                          .font(AppFonts.medium_14)
                      
                      Text("Follow")
                          .font(AppFonts.medium_14)
                          .foregroundColor(.blue)
                  }
                  .padding(.bottom,2)
                  
                  HStack{
                  Text("Shared an Event")
                          .font(AppFonts.regular_12)
                          .foregroundColor(.gray)
                         
                
                  Text("1h ago")
                          .font(AppFonts.regular_12)
                          .foregroundColor(.gray)
                  }
                  
              }
              Spacer()
              
              Image("doted Icons")
              
          }.padding(.bottom,10)
          
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
              .font(.subheadline)
              .foregroundColor(Color.gray)
          
          ZStack{
            
              Image("Event cards pic")
                  .resizable()
              
                 
              
            
              
              VStack(alignment: .leading){
                  HStack{
                      Spacer()
                      Image("bookmark small")
                  }
                  Spacer()
                  Text("Cars Expo 2022")
                      .font(AppFonts.bold_20)
                      .foregroundColor(Color.white)
                  HStack{
                      Image("bxs_star")
                      Image("bxs_star")
                      Image("bxs_star")
                      Image("bxs_star")
                      Image("bxs_star")
                      
                      Text("5.0")
                          .foregroundColor(.white)
                          .font(AppFonts.regular_12)
                  }
                  
                  HStack{
                      Image("time Icons")
                      Text("June 8,2022")
                          .foregroundColor(.white)
                          .font(AppFonts.regular_12)
                  }
                  HStack{
                      Image("location Icons")
                      Text("KPK, Pakistan")
                          .foregroundColor(.white)
                          .font(AppFonts.regular_12)
                  }
                  
                  HStack{
                    
                      Text("$25")
                          .font(AppFonts.regular_14)
                          .foregroundColor(.gray)
                          .background(RoundedRectangle(cornerRadius: 50).fill(.white).frame(width: 86, height: 45))
                      
                  
                      Spacer()
                      
                      Button(action: {
                         
                      }){
                          VStack{
                              Text("Register")
                                  .font(AppFonts.regular_14)
                                  .foregroundColor(.white)
                                  .background(RoundedRectangle(cornerRadius: 50).fill((LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing))).frame(width: 200, height: 45))
                          }
                      }
                     
                    
                  }.padding(.trailing,75)
                      .padding(.leading,30)
                      .padding(.top,20)
                      .padding(.bottom,10)
                  
              }
              .padding(20)
              
              
           
              
            
              
          }.frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*30)
              
          
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
          
      }.padding(.bottom,20)
          .padding(.leading,20)
          .padding(.trailing,20)
          .padding(.top,20)

      
      
  }
}

struct ClubsCardHome: View {
    var body: some View {
        
        VStack{
            
            HStack{
               
                Image("post picture")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading){
                    
                    HStack{
                        Text("Rana Sahahbaz.")
                            .font(AppFonts.medium_14)
                        
                        Text("Follow")
                            .font(AppFonts.medium_14)
                            .foregroundColor(.blue)
                    }
                    .padding(.bottom,2)
                    
                    HStack{
                    Text("Shared a Club")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.gray)
                           
                  
                    Text("1h ago")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.gray)
                    }
                    
                }
                Spacer()
                
                Image("doted Icons")
                
            }.padding(.bottom,10)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                .font(.subheadline)
                .foregroundColor(Color.gray)
            
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
                        
                        
                        Text("Join")
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
                    
                    
                    HStack{
                        
                        
                        
                        
                        Text("Ace Classic Club")
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                        
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
                        .background(RoundedCorners(tl: 0, tr: 0, bl: 10, br: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*92, height: UIScreen.heightBlockSize*6))
                      
                    
                    
                    
                }.padding(.top,20)
                
                
                
            }
            .frame(height: 240)
            .cornerRadius(10)
            .padding(.top,20)
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
            
        }.padding(.bottom,20)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.top,20)

     
        
        
    }
    
}

struct marketPlaceSreachCardsHome : View {
    
   
    
    var body: some View {
       
        VStack{
            
            HStack{
               
                Image("post picture")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading){
                    
                    HStack{
                        Text("Ustad Hashim Khan.")
                            .font(AppFonts.medium_14)
                        
                        Text("Follow")
                            .font(AppFonts.medium_14)
                            .foregroundColor(.blue)
                    }
                    .padding(.bottom,2)
                    
                    HStack{
                    Text("Shared a Classified")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.gray)
                           
                  
                    Text("1h ago")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.gray)
                    }
                    
                }
                Spacer()
                
                Image("doted Icons")
                
            }.padding(.bottom,10)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                .font(.subheadline)
                .foregroundColor(Color.gray)
            
            ZStack(alignment: .top){
                Image("Rectangle 1265")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.widthBlockSize*90, height: 250)
                    .cornerRadius(10)
                
                VStack(alignment: .leading){
                    HStack{
                        Image("Rectangle 1266")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 70, height: 70)
                           
                        
                        VStack(alignment: .leading){
                            Text("Jhon Deo Smith")
                                .foregroundColor(.white)
                                .font(AppFonts.semiBold_12)
                                .padding(.bottom,3)
                            Text("Tot. Sales 13")
                                .foregroundColor(.white)
                                .font(AppFonts.regular_12)
                          
                        }
                        
                        Spacer()
                        Text("$50")
                            .foregroundColor(.white)
                            .font(AppFonts.SemiBold_20)
                            .padding(.trailing,10)
                        
                    }.padding()
                        .padding(.bottom,-5)
                       
                    
                    HStack{
                    Text("BMW Lazer Head Lights")
                            .font(AppFonts.SemiBold_20)
                        .foregroundColor(.white)
                    }.padding(.leading)
                    
                    HStack{
                        Text("Spare Parts")
                            .foregroundColor(.white)
                            .font(AppFonts.semiBold_12)
                    }.padding(.leading)
                    .padding(.top,-3)
                    
                    HStack{
                        Image("yellow Star icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 18, height: 18)
                        
                        Image("yellow Star icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 18, height: 18)
                        
                        Image("yellow Star icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 18, height: 18)
                        
                        Image("yellow Star icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 18, height: 18)
                        
                        Image("yellow Star icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 18, height: 18)
                    }
                    .padding(.leading)
                    .padding(.top,1)
                    .padding(.bottom,5)
                    
                    HStack{
                        Text("$500")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.white)
                            .padding(10)
                            .padding(.leading,10)
                            .padding(.trailing,10)
                            .background(RoundedRectangle(cornerRadius: 50).fill(.gray).frame(width: UIScreen.widthBlockSize*15, height: UIScreen.heightBlockSize*4))
                            
                           
                        
                        Spacer()
                        Button(action: {
                            
                          
                            
                        }, label: {
                            Text("Purchase")
                                .font(AppFonts.regular_14)
                                .foregroundColor(.white)
                                .padding(10)
                                .padding(.leading,30)
                                .padding(.trailing,30)
                                .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*30, height: UIScreen.heightBlockSize*4))
                                
                        })
                      
                           
                    }
                    .padding(.leading)
                    .padding(.trailing)
                    
                    Spacer()
                    
                  
                   
                }
                
            }
            .frame(width: UIScreen.widthBlockSize*90, height: 250)
            
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
            
        }.padding(.bottom,20)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.top,20)

    }
}
