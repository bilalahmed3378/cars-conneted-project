//
//  Club Admin View.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 25/08/2022.
//

import SwiftUI

import MapKit

struct Club_Admin_View: View {
    @Environment(\.presentationMode) var presentaionMode
    
    @State var requestAccept: Bool = false
    
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5, longitude: -0.12), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    @State private var searchText = ""
    
    var body: some View {
        VStack{
            
            VStack{
                
                // top bar
                HStack{
                    Button(action: {
                        self.presentaionMode.wrappedValue.dismiss()
                    }, label: {
                        Image("back icon")
                               .resizable()
                               .aspectRatio(contentMode: .fit)
                               .frame(width: 35, height: 35)
                    })
                    
                    Spacer()
                    
                    
                    Text("Clubs")
                        .font(AppFonts.SemiBold_20)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                   
                    
                    Image("doted icons-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .padding(.trailing,10)
                    
                 
                       
                }
               
                .padding(.leading)
                    .padding(.trailing)
                    .padding(.top)
                
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
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.7)))
                .padding(.top,10)
                .padding(.leading)
                .padding(.trailing)
                
            }
           
            .padding(.top,30)
            .padding(.bottom,15)
            .background(
                Image("home screen background")
                .resizable())
            
           
            ScrollView(.vertical, showsIndicators: false){
                Group{
            HStack{
                Image("unsplash_AHnhdjyTNGM")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.widthBlockSize*90, height: 230)
            }
           
            
            HStack(alignment: .top){
                Text("Ace Classic Club")
                    .font(AppFonts.SemiBold_20)
                
                Spacer()
                
            }.padding(.leading)
                        .padding(.trailing)
            
            HStack{
               
                Image("bxs_star")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 16, height: 16)
                
                Image("bxs_star")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 16, height: 16)
                
                Image("bxs_star")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 16, height: 16)
                
                Image("bxs_star")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 16, height: 16)
                
                Image("bxs_star")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 16, height: 16)
                
                Text("5.0")
                    .font(AppFonts.regular_14)
                
                Spacer()
                
            }
            .padding(.leading)
                        .padding(.trailing)
            
                    
            HStack{
                Image("Profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                    .padding(.trailing)
                
                Text("Major Auto Mobiles")
                    .font(AppFonts.regular_12)
                
                Spacer()
                
            }.padding(.leading)
                        .padding(.trailing)
            
            .padding(.top,10)
               
            HStack{
                Image("dashicons_lock")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 24)
                    .padding(.trailing,10)
                   
                
                Text("Private Club")
                    .font(AppFonts.regular_12)
                
                Image("Ellipse 3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 6, height: 6)
                
                Text("2,5 k Total Members")
                    .font(AppFonts.regular_12)
                
                
                Spacer()
                
            }
             .padding(.top,10)
             .padding(.leading)
             .padding(.trailing)
               
            HStack{
                Image("unsplash_-IPFb6J03Mw")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                   
                
                Image("unsplash_-IPFb6J03Mw")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .offset(x:-16)
                
                Image("unsplash_-IPFb6J03Mw")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .offset(x:-30)
                
                Image("unsplash_-IPFb6J03Mw")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .offset(x:-44)
                
                Image("unsplash_-IPFb6J03Mw")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .offset(x:-58)
                
                Image("unsplash_-IPFb6J03Mw")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .offset(x:-72)
               
                Spacer()
            }
            .padding(.leading)
            .padding(.trailing)
           
                    
                }
            
                HStack{
                    Spacer()
                    HStack{
                        Text("Joined")
                            .foregroundColor(AppColors.redGradientColor1)
                            .font(AppFonts.medium_12)
                        
                        Image("dropdown red icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 14, height: 10)
                        
                    }.background(RoundedRectangle(cornerRadius: 50).strokeBorder(AppColors.redGradientColor1).frame(width: UIScreen.widthBlockSize*40, height: 40))
                    
                    Spacer()
                    Spacer()
                    
                    HStack{
                        Image("eva_person-add-fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                        
                        Text("Invite")
                            .foregroundColor(.white)
                            .font(AppFonts.medium_12)
                        
                    }.background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*40, height: 40))
                    
                    Spacer()
                    
                }
                   
                    .padding(.top)
                
                Divider().padding()
                
                HStack{
                    Image("unsplash_X6Uj51n5CE8")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .padding(.trailing,5)
                    
                  
                    
                    Text("Write something...")
                        .font(AppFonts.regular_12)
                        .padding(.trailing,150)
                        .padding(.top,15)
                        .padding(.bottom,15)
                        .padding(.leading)
                        .background(RoundedRectangle(cornerRadius: 80).strokeBorder(.black))
                    
                    Spacer()
                }
                .padding(.leading)
                    .padding(.trailing)
               
                VStack(alignment: .leading){
                    Text("New Member This Week")
                        .font(AppFonts.semiBold_16)
                 
                    HStack{
                        Image("Ellipse 35-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)

                        Image("Ellipse 35-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            .offset(x: -16)

                        Image("Ellipse 35-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            .offset(x: -32)

                        Image("Ellipse 35-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            .offset(x: -48)

                        Image("Ellipse 35-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            .offset(x: -64)

                        Image("Ellipse 35-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            .offset(x: -80)

                    }
                    
                    Text("Over 300 new members this week")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.gray)
                    
                }.padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.1)).frame(width: UIScreen.widthBlockSize*90))
                    .padding()
                
                
                LazyVStack{
                    ForEach(0...1, id: \.self){index in
                        SharedPostClubsScreen()
                    }
                }
                
                
                LazyVStack{
                    ForEach(0...1, id: \.self){index in
                        PostsClubsAdmin()
                    }
                }
                
                LazyVStack{
                    ForEach(0...1, id: \.self){index in
                        EventsClubs()
                    }
                }
                
                LazyVStack{
                    ForEach(0...1, id: \.self){index in
                        ClubsCardClubs()
                    }
                }
                
                LazyVStack{
                    ForEach(0...1, id: \.self){index in
                       ClassifiedCardsClubs()
                    }
                }
                
                
            
            }
        
        Spacer()
            
        }.edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}

struct Club_Admin_View_Previews: PreviewProvider {
    static var previews: some View {
        Club_Admin_View()
    }
}


struct PostsClubsAdmin : View {
  
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
              
              Spacer()
              
              Text("12 comments")
                  .font(AppFonts.regular_12)
                  .foregroundColor(Color.gray)
              
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
              HStack{
                  Image("ant-design_comment-outlined")
                  Text("Comment")
                      .font(AppFonts.regular_12)
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
          
         Divider()
          
      }.padding()
      
  }
}


struct EventsClubs : View {
  
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
                          .background(RoundedRectangle(cornerRadius: 50).fill(.white).frame(width: UIScreen.widthBlockSize*20, height: UIScreen.heightBlockSize*6))
                      
                  
                      Spacer()
                      
                      Button(action: {
                         
                      }){
                          VStack{
                              Text("Register")
                                  .font(AppFonts.regular_14)
                                  .foregroundColor(.white)
                                  .background(RoundedRectangle(cornerRadius: 50).fill((LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing))).frame(width: UIScreen.widthBlockSize*40, height: UIScreen.heightBlockSize*6))
                          }
                      }
                     
                    
                  }.padding(.trailing,55)
                      .padding(.leading,30)
                      .padding(.top,20)
                      .padding(.bottom,10)
                  
              }
              .padding()
              
              
           
              
            
              
          }.frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*30)
              .padding(.top,10)
              
          
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
                  .font(AppFonts.regular_12)
                  .foregroundColor(Color.gray)
              
              Spacer()
              
              Text("12 comments")
                  .font(AppFonts.regular_12)
                  .foregroundColor(Color.gray)
              
          }.padding(.top,5)
          
        Divider()
          
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
          
         Divider()
          
      }.padding()

      
      
  }
}

struct ClubsCardClubs: View {
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
                            .font(AppFonts.regular_14)
                        
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
                            .font(AppFonts.regular_12)
                        
                        
                    }.padding()
                        .background(RoundedCorners(tl: 0, tr: 0, bl: 10, br: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*92, height: UIScreen.heightBlockSize*8))
                      
                    
                    
                    
                }.padding(.top,20)
                
                
                
            }
            .frame(height: 240)
            .cornerRadius(10)
           
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
                    .font(AppFonts.regular_12)
                    .foregroundColor(Color.gray)
                
                Spacer()
                
                Text("12 comments")
                    .font(AppFonts.regular_12)
                    .foregroundColor(Color.gray)
                
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
                HStack{
                    Image("ant-design_comment-outlined")
                    Text("Comment")
                        .font(AppFonts.regular_12)
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
            
        }.padding()

     
        
        
    }
    
}

struct ClassifiedCardsClubs : View {
    
   
    
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
                            .background(RoundedRectangle(cornerRadius: 50).fill(.gray).frame(width: UIScreen.widthBlockSize*15, height: UIScreen.heightBlockSize*7))
                            
                           
                        
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
                
                Spacer()
                
                Text("12 comments")
                    .font(AppFonts.regular_12)
                    .foregroundColor(Color.gray)
                
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
                HStack{
                    Image("ant-design_comment-outlined")
                    Text("Comment")
                        .font(AppFonts.regular_12)
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
            
            Divider()
            
        }.padding()

    }
}


struct SharedPostClubsScreen : View {
    
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
                
                HStack{
                Text("Shared a Post")
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
                
               
                
            }.padding(.bottom,10)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                .font(AppFonts.regular_12)
                .foregroundColor(Color.gray)
            
            Image("unsplash_gmA751dxisA")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
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
            
        }.padding()
            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.1)))
          
        }.padding()
    }
}
