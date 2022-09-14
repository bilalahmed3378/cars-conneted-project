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
                    Button(action: {
                        self.presentaionMode.wrappedValue.dismiss()
                    }, label: {
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
                   
                    
                    
                }.padding(.leading)
                    .padding(.trailing)
                    .padding(.top)
                
                
                
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
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.7)))
                .padding(.top)
                .padding(.leading)
                .padding(.trailing)
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
                    .frame(width: UIScreen.widthBlockSize*25, height: 80)
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
               
                NavigationLink(destination: My_Profile_Screen(),  label: {
                    Image("Arrow - Right Square")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .padding(.trailing)
                })
                   
             
               
                
            }
            .frame(width: UIScreen.widthBlockSize*90, height: 100)
            .background(RoundedRectangle(cornerRadius: 10).fill(.blue).opacity(0.04).shadow(color: .black, radius: 5))
            .padding(.top)
            .padding(.trailing)
            
            HStack{
                Text("General")
                    .font(AppFonts.semiBold_12)
                    
                
                Spacer()
            }
            .padding()
           
            
            
                NavigationLink(destination: Change_User_Name(), label: {
                HStack{
                    
                    Image("Vector")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
                        .padding(.trailing)
                    
                   
                    Text("Edit Username")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                   
                        Image("forward")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30 )
                   
                    
                }
                .frame(width: UIScreen.widthBlockSize*90, height: 30)
                                   })
                    
                
                Divider().padding()
                
                NavigationLink(destination: Change_Password(), label: {
            HStack{
                
                Image("dashicons_lock")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30 )
                    .padding(.trailing)
                
               
                Text("Change Paasword")
                    .font(AppFonts.regular_14)
                    .foregroundColor(.black)
                
                Spacer()
                
                
                    Image("forward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
               
                
            }
            .frame(width: UIScreen.widthBlockSize*90, height: 30)
                               })
                
            }
                Divider().padding()
                
            Group{
                
                NavigationLink(destination: Change_Email_screen(), label: {
            HStack{
                
                Image("update email")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30 )
                    .padding(.trailing)
                
               
                Text("Update Email")
                    .font(AppFonts.regular_14)
                    .foregroundColor(.black)
                
                Spacer()
                
                Text("Verified")
                    .font(AppFonts.regular_14)
                    .foregroundColor(.green)
                    .foregroundColor(.black)
                
              
                    Image("forward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
                
                
            }
            .frame(width: UIScreen.widthBlockSize*90, height: 30)
                               })
                
            
                Divider().padding()
                
            }
            Group{
                
                NavigationLink(destination: Billing_Screen(), label: {
            HStack{
                
                Image("Billing details")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30 )
                    .padding(.trailing)
                
               
                Text("Billing details")
                    .font(AppFonts.regular_14)
                    .foregroundColor(.black)
                
                Spacer()
                
               
                    Image("forward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
               
                
            }
            .frame(width: UIScreen.widthBlockSize*90, height: 30)
                })
                
                
                Divider().padding()
                
                NavigationLink(destination: Payment_method_step_1_screen(), label: {
                HStack{
                    
                    Image("Payment")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
                        .padding(.trailing)
                    
                   
                    Text("Payment")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                   
                        Image("forward")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30 )
                   
                    
                }
                .frame(width: UIScreen.widthBlockSize*90, height: 30)
                })
                
                
                Divider().padding()
            
            }
            Group{
                
                NavigationLink(destination: Notifications_setting(), label: {
            HStack{
                Image("bxs_bell")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30 )
                    .padding(.trailing)
                
               
                Text("Notification")
                    .font(AppFonts.regular_14)
                    .foregroundColor(.black)
                
                Spacer()
                
              
                
                    Image("forward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
                
                   
              
               
                
                
            }
            .frame(width: UIScreen.widthBlockSize*90, height: 30)
                               })
                
                
                Divider().padding()
            
                NavigationLink(destination: Proximity_Setting_screen(),
                               label: {
                HStack{
                    Image("eos-icons_network-policy")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
                        .padding(.trailing)
                    
                   
                    Text("Proximity Setting")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                   
                        Image("forward")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30 )
                   
                       

                    
                    
                }
                .frame(width: UIScreen.widthBlockSize*90, height: 30)
                })
                
                
                Divider().padding()
                
                
                NavigationLink(destination: Proximity_Setting_screen(),
                               label: {
            HStack{
                Image("Buffer location")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30 )
                    .padding(.trailing)
                
               
                Text("Buffer location")
                    .font(AppFonts.regular_14)
                    .foregroundColor(.black)
                
                Spacer()
                
               
                    Image("forward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
               
                   

                
                
            }
            .frame(width: UIScreen.widthBlockSize*90, height: 30)
                })
                
                
                Divider().padding()
                
                NavigationLink(destination: Support_Screen(),
                               label: {
                HStack{
                    Image("Support")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
                        .padding(.trailing)
                    
                   
                    Text("Support")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                   
                        Image("forward")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30 )
                  
                       

                    
                    
                }
                .frame(width: UIScreen.widthBlockSize*90, height: 30)
                })
                
                
                Divider().padding()
                
                
            }
            Group{
                
                NavigationLink(destination: FeedBack_Screen(),  label: {
        HStack{
            Image("Feedback")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30 )
                .padding(.trailing)
            
            
            Text("Feedback")
                .font(AppFonts.regular_14)
                .foregroundColor(.black)
            
            Spacer()
           
                Image("forward")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30 )
        
        }
        .frame(width: UIScreen.widthBlockSize*90, height: 30)
                })
                
                
                Divider().padding()
                
                
                NavigationLink(destination: Help_Screen(),  label: {
                HStack{
                    Image("help")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
                        .padding(.trailing)
                    
                    
                    Text("Help")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.black)
                    
                    Spacer()
                   
                        Image("forward")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30 )
                
                   
                    
                    
                    
                }
                .frame(width: UIScreen.widthBlockSize*90, height: 30)
                })
                    
                
                
                Divider().padding()
                
            }
            Group{
          
                NavigationLink(destination: Terms_of_sevices_screen(),  label: {
            HStack{
                Image("TOS")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30 )
                    .padding(.trailing)
                
               
                Text("TOS")
                    .font(AppFonts.regular_14)
                    .foregroundColor(.black)
                
                Spacer()
                
               
                    Image("forward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30 )
               
                 
            }
            .frame(width: UIScreen.widthBlockSize*90, height: 30)
                })
                
                
                Divider().padding()
            
                NavigationLink(destination: {
                    Privacy_Policy_Screen()
                }, label: {
                    HStack{
                        Image("material-symbols_privacy-tip")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30 )
                            .padding(.trailing)
                        
                       
                        Text("Privacy Policy")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                      
                            Image("forward")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30 )
                       
                       
                        
                        
                    }
                    .frame(width: UIScreen.widthBlockSize*90, height: 30)
                })
           
                
                Divider().padding()
            }
            Group{
                
                NavigationLink(destination: Login_Screen(), label: {
                    HStack{
                        Image("majesticons_logout")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30 )
                            .padding(.trailing)
                        
                       
                        Text("Logout")
                            .font(AppFonts.regular_14)
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                       
                            Image("forward")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30 )
                           
                    }
                    .frame(width: UIScreen.widthBlockSize*90, height: 30)
                    .padding(.bottom)
                      
                })
            
                
              
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
