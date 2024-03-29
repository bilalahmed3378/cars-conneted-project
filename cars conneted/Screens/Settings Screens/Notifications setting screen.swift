//
//  Notifications.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 28/07/2022.
//

import SwiftUI

struct Notifications_setting: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var comments = true
    @State private var likes = true
    @State private var posts = true
    @State private var invite = true
    @State private var friendRequest = true
    @State private var following = true
    @State private var saved = true
    @State private var profileFollowing = true
    @State private var profileSaved = true
    
    
    var body: some View {
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
                
                Text("Notification Settings")
                    .foregroundColor(.white)
                    .font(AppFonts.SemiBold_20)
                
                Spacer()
                
                
               
                
            }.padding(.leading)
                .padding(.trailing)
                .padding(.top)
            
        }  .padding(.top,30)
            .padding(.bottom,30)
            .background(
                Image("home screen background")
                .resizable())
            
            ScrollView(.vertical, showsIndicators: false){
                
                Group{
                HStack{
                    Text("Social")
                        .foregroundColor(.gray)
                        .font(AppFonts.regular_14)
                    
                    Spacer()
                }
                .padding()
                .padding(.bottom,-20)
                
                
                HStack{
                    Text("Comments")
                    
                    Toggle("", isOn: $comments)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                }
                .padding()
                .padding(.bottom,-20)
                
                
                HStack{
                    Text("Likes")
                    
                    Toggle("", isOn: $likes)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                }
                .padding()
                .padding(.bottom,-20)
               
                
                HStack{
                    Text("Posts")
                    
                    Toggle("", isOn: $posts)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                }
                .padding()
                .padding(.bottom,-20)
               
                
                HStack{
                    Text("Invites to Join")
                    
                    Toggle("", isOn: $invite)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                }
                .padding()
                .padding(.bottom,-20)
                
                }
                Group{
                HStack{
                    Text("Friend request")
                    
                    Toggle("", isOn: $friendRequest)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                }
                .padding()
                
                
                HStack{
                    Text("Events")
                        .foregroundColor(.gray)
                        .font(AppFonts.regular_14)
                    
                    Spacer()
                }
                .padding()
                .padding(.bottom,-20)
               
                
                HStack{
                    Text("Folllowing")
                    
                    Toggle("", isOn: $following)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                }
                .padding()
                .padding(.bottom,-20)
               
                
                HStack{
                    Text("Saved")
                    
                    Toggle("", isOn: $saved)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                }
                .padding()
               
                }
                
                HStack{
                    Text("Profile")
                        .foregroundColor(.gray)
                        .font(AppFonts.regular_14)
                    
                    Spacer()
                }
                .padding()
                .padding(.bottom,-20)
                
                
                HStack{
                    Text("Following")
                    
                    Toggle("", isOn: $profileFollowing)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                }
                .padding()
                .padding(.bottom,-20)
               
                
                HStack{
                    Text("Saved")
                    
                    Toggle("", isOn: $profileSaved)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                }
                .padding()
              
                
            }
            
           
            
          
            
            
            
        }.edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
    }
}

struct Notifications_setting_Previews: PreviewProvider {
    static var previews: some View {
        Notifications_setting()
    }
}

