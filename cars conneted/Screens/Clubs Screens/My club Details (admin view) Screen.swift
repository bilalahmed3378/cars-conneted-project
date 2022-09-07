//
//  My club Details (admin view) Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 25/08/2022.
//

import SwiftUI

import MapKit

struct My_club_Details__admin_view__Screen: View {
    @Environment(\.presentationMode) var presentaionMode
   
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
                    
                    
                    Text("Details")
                        .font(AppFonts.SemiBold_20)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                   
                    
                    Image("doted icons-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 35)
                        .padding(.trailing,10)
                    
                 
                       
                }
               
                .padding(.leading)
                    .padding(.trailing)
                    .padding(.top,10)
                    
                
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
                .padding(.leading,20)
                .padding(.trailing,20)
                
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
            .padding(.top,10)
            
            HStack(alignment: .top){
                Text("Ace Classic Club")
                    .font(AppFonts.SemiBold_20)
                
                Spacer()
                
                HStack{
                    Image("eva_person-add-fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                    
                    Text("Invite")
                        .foregroundColor(.white)
                        .font(AppFonts.medium_12)
                    
                }.padding(.leading)
                    .padding(.trailing)
                    .padding(.top,5)
                    .padding(.bottom,5)
                .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom,10)
            
            
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
                
            }.padding(.leading)
            
            HStack{
                Image("Profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                    .padding(.trailing)
                
                Text("Major Auto Mobiles")
                    .font(AppFonts.regular_12)
                
                Spacer()
                
            }.padding()
                .padding(.bottom,-15)
            
            HStack{
                Image("2-User")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                    .padding(.trailing)
                   
                
                Text("2,5 k Total Members")
                    .font(AppFonts.regular_12)
                
                Spacer()
                
            }.padding()
                .padding(.bottom,-15)
                
            HStack{
                Image("dashicons_lock")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 24)
                    .padding(.trailing,10)
                   
                
                Text("Private Club")
                    .font(AppFonts.regular_12)
                
                Spacer()
                
            }.padding()
                .padding(.bottom,-15)
            
            
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
                
                Text("Jhon, Marry, Steven & 17 of your friends has joined this group")
                    .font(AppFonts.regular_12)
                    .foregroundColor(.gray)
                    .offset(x:-30)
                
                
                Spacer()
            }
            .padding()
                }
            
            Map(coordinateRegion: $mapRegion)
                .frame(width: UIScreen.widthBlockSize*90, height: 150)
                
                
                VStack(alignment: .leading){
                HStack{
                    Text("Description")
                        .font(AppFonts.medium_16)
                    Spacer()
                }
                .padding()
                .padding(.top,-10)
               
                
                HStack{
                    
                    Text("Tincidunt vestibulum aenean eleifend arcu vel leo porta donec tellus. Malesuada tellus dui aliquam semper odio. Egestas proin viv...")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.gray)
                    
                    
                }.padding(.leading)
                    .padding(.trailing)
                }
                .padding(.top)
               
                
                Divider().padding()
                

                LazyVStack{
                    ForEach(0...3, id: \.self){index in
                        PostsClubs()
                    }
                }
            
            
            }
        
        Spacer()
            
        }.edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}

struct My_club_Details__admin_view__Screen_Previews: PreviewProvider {
    static var previews: some View {
        My_club_Details__admin_view__Screen()
    }
}


struct PostsClubs : View {
  
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
          
          VStack(alignment: .leading){
              HStack{
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                      .font(AppFonts.regular_12)
              .foregroundColor(Color.gray)
                  Spacer()
              }
          }
          
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
