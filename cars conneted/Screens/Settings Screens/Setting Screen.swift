//
//  Setting Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 27/07/2022.
//

import SwiftUI

struct Setting_Screen: View {
    @Environment(\.presentationMode) var presentaionMode
    @ObservedObject var logoutApi : LogoutApi = LogoutApi()
    
    @State private var searchText = ""
    
    @State var pushToLogin : Bool = false
    @State var isUserLoggedIn : Bool = false

    @State var isProfileScreen : Bool = false

    
   
    
    
    var body: some View {
        VStack{
            
            VStack{
                
                // top bar
                Group{
                HStack{
                    Button(action: {}, label: {
                        Image("back icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                    })
                   
                    Spacer()
                    
                    Text("Setting")
                        .font(AppFonts.SemiBold_20)
                        .foregroundColor(.white)
                    
                    Spacer()
                    Button(action: {}, label: {
                        Image("doted icons-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                    })
                   
                    
                    
                }.padding(.leading,24)
                    .padding(.trailing,24)
                    .padding(.top,20)
                
                
                
                HStack{
                    
                    TextField("Search",text: self.$searchText)
                        .foregroundColor(.red)
                        .font(AppFonts.regular_14)
                    
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
                }
                
                
            }
            .padding(.top,30)
                .padding(.bottom,15)
                .background(
                    Image("home screen background")
                        .resizable())
            ScrollView(.vertical, showsIndicators: false){
            
            Group{
            HStack{
                Image("unsplash_OhKElOkQ3RE-1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80)
                    .padding(.leading)
                
                VStack(alignment: .leading){
                    Text("Jason Statham")
                        .font(AppFonts.medium_16)
                        .padding(.bottom,3)
                    
                    Text("jasonstatham98@gmailcom")
                        .font(AppFonts.regular_12)
                        .padding(.bottom,3)
                    
                    Text("+69-636434645367676")
                        .font(AppFonts.regular_12)
                }
                .padding(.leading,5)
                Spacer()
               
                NavigationLink(destination: My_Profile(),  label: {
                    Image("Arrow - Right Square")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .padding(.trailing)
                })
                   
             
               
                
            }
            .frame(width: 350, height: 100)
            .background(RoundedRectangle(cornerRadius: 10).fill(.blue).opacity(0.04).shadow(color: .black, radius: 5))
            .padding(.top)
            .padding(.trailing)
            
            HStack{
                Text("General")
                    .font(AppFonts.semiBold_12)
                    
                
                Spacer()
            }
            .padding()
            .padding(.leading,10)
            
              
                HStack{
                    
                    Image("Vector")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
                        .padding(.trailing)
                    
                   
                    Text("Edit Username")
                        .font(AppFonts.regular_14)
                    
                    Spacer()
                    
                    NavigationLink(destination: Change_Password(), label: {
                        Image("forward")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30 )
                    })
                    
                }
                .frame(width: 350, height: 30)
                .padding(.bottom)
                    
                
                Image("Line 26")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 350, height: 1 )
                
            HStack{
                
                Image("dashicons_lock")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30 )
                    .padding(.trailing)
                
               
                Text("Change Paasword")
                    .font(AppFonts.regular_14)
                
                Spacer()
                
                NavigationLink(destination: Change_Password(), label: {
                    Image("forward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
                })
                
            }
            .frame(width: 350, height: 30)
            .padding(.bottom)
                
            }
            Image("Line 26")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 350, height: 1 )
            Group{
            HStack{
                
                Image("update email")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30 )
                    .padding(.trailing)
                
               
                Text("Update Email")
                    .font(AppFonts.regular_14)
                
                Spacer()
                
                Text("Verified")
                    .font(AppFonts.regular_14)
                    .foregroundColor(.green)
                
                NavigationLink(destination: Change_Password(), label: {
                    Image("forward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
                })
                
            }
            .frame(width: 350, height: 30)
            .padding(.bottom)
                
            
            Image("Line 26")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 350, height: 1 )
            }
            Group{
            HStack{
                
                Image("Billing details")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30 )
                    .padding(.trailing)
                
               
                Text("Billing details")
                    .font(AppFonts.regular_14)
                
                Spacer()
                
                NavigationLink(destination: Change_Password(), label: {
                    Image("forward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
                })
                
            }
            .frame(width: 350, height: 30)
            .padding(.bottom)
                
            
            Image("Line 26")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 350, height: 1 )
                
                HStack{
                    
                    Image("Payment")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
                        .padding(.trailing)
                    
                   
                    Text("Payment")
                        .font(AppFonts.regular_14)
                    
                    Spacer()
                    
                    NavigationLink(destination: Change_Password(), label: {
                        Image("forward")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30 )
                    })
                    
                }
                .frame(width: 350, height: 30)
                .padding(.bottom)
                    
                
                Image("Line 26")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 350, height: 1 )
            
            }
            Group{
            HStack{
                Image("bxs_bell")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30 )
                    .padding(.trailing)
                
               
                Text("Notification")
                    .font(AppFonts.regular_14)
                
                Spacer()
                
              
                NavigationLink(destination: Notifications_setting(), label: {
                    Image("forward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
                })
                   
              
               
                
                
            }
            .frame(width: 350, height: 30)
            .padding(.bottom)
            
            Image("Line 26")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 350, height: 1 )
            
                
                HStack{
                    Image("eos-icons_network-policy")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
                        .padding(.trailing)
                    
                   
                    Text("Proximity Setting")
                        .font(AppFonts.regular_14)
                    
                    Spacer()
                    
                    NavigationLink(destination: Proximity_Setting_screen(),
                                   label: {
                        Image("forward")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30 )
                    })
                       

                    
                    
                }
                .frame(width: 350, height: 30)
                .padding(.bottom)
                
                Image("Line 26")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 350, height: 1 )
            
            HStack{
                Image("Buffer location")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30 )
                    .padding(.trailing)
                
               
                Text("Buffer location")
                    .font(AppFonts.regular_14)
                
                Spacer()
                
                NavigationLink(destination: Proximity_Setting_screen(),
                               label: {
                    Image("forward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
                })
                   

                
                
            }
            .frame(width: 350, height: 30)
            .padding(.bottom)
            
            Image("Line 26")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 350, height: 1 )
                
                
                HStack{
                    Image("Support")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
                        .padding(.trailing)
                    
                   
                    Text("Support")
                        .font(AppFonts.regular_14)
                    
                    Spacer()
                    
                    NavigationLink(destination: Proximity_Setting_screen(),
                                   label: {
                        Image("forward")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30 )
                    })
                       

                    
                    
                }
                .frame(width: 350, height: 30)
                .padding(.bottom)
                
                Image("Line 26")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 350, height: 1 )
            }
            Group{
        HStack{
            Image("Feedback")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30 )
                .padding(.trailing)
            
            
            Text("Feedback")
                .font(AppFonts.regular_14)
            
            Spacer()
            NavigationLink(destination: Transacation_detail(),  label: {
                Image("forward")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30 )
        
            })
                
            
            
            
        }
        .frame(width: 350, height: 30)
        .padding(.bottom)
                
                Image("Line 26")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 350, height: 1 )
                
                HStack{
                    Image("help")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
                        .padding(.trailing)
                    
                    
                    Text("Help")
                        .font(AppFonts.regular_14)
                    
                    Spacer()
                    NavigationLink(destination: Transacation_detail(),  label: {
                        Image("forward")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30 )
                
                    })
                        
                    
                    
                    
                }
                .frame(width: 350, height: 30)
                .padding(.bottom)
                
                Image("Line 26")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 350, height: 1 )
                
            }
            Group{
            Image("Line 26")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 350, height: 1 )
            
            HStack{
                Image("TOS")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30 )
                    .padding(.trailing)
                
               
                Text("TOS")
                    .font(AppFonts.regular_14)
                
                Spacer()
                
                NavigationLink(destination: Terms_of_sevices_screen(),  label: {
                    Image("forward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
                })
                 
            }
            .frame(width: 350, height: 30)
            .padding(.bottom)
            
            Image("Line 26")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 350, height: 1 )
            
            HStack{
                Image("material-symbols_privacy-tip")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30 )
                    .padding(.trailing)
                
               
                Text("Privacy Policy")
                    .font(AppFonts.regular_14)
                
                Spacer()
                
              
                    Image("forward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
               
               
                
                
            }
            .frame(width: 350, height: 30)
            .padding(.bottom)
            
            Image("Line 26")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 350, height: 1 )
            }
            Group{
            HStack{
                Image("majesticons_logout")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30 )
                    .padding(.trailing)
                
               
                Text("Logout")
                    .font(AppFonts.regular_14)
                
                Spacer()
                
                Button(action: {
                    self.logoutApi.Logout()
                    
                    AppData().logoutTheUser()
                    
                    self.isUserLoggedIn = false
                    
                }, label: {
                    Image("forward")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30 )
                   
                })
              
                
                
            }
            .frame(width: 350, height: 30)
            .padding(.bottom)
            
            Image("Line 26")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 350, height: 1 )
            }
            }
           
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
        
    }
   

}

struct Setting_Screen_Previews: PreviewProvider {
    
    
    static var previews: some View {
        

        
        Setting_Screen()
    }
}
