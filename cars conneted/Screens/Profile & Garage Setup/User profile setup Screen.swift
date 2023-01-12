//
//  User profile setup Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/08/2022.
//

import SwiftUI

struct User_profile_setup_Screen: View, MyLocationReceiver {
    
    @StateObject var createProfileApi = CreateProfileApi()
    
    @State var firstName = ""
    @State var lastName = ""
    @State var phone = ""
    @State var about = ""
    
    @State var address : String = ""
    @State var latitude : Double = 0.0
    @State var longitude : Double = 0.0
    @State var showPlacePicker : Bool = false
    
    @State var showToast : Bool = false
    @State var toastMessage : String = ""
    
    
    @Environment(\.presentationMode) var presentaionMode
    
    @State var toSetupGarage = false
    
    var body: some View {
        
        ZStack{
            
            VStack{
                
                NavigationLink(destination: Setup_Garage_Screen(), isActive: $toSetupGarage){
                    EmptyView()
                }
                
                HStack{
                    Image("bilal3")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.widthBlockSize*100, height: UIScreen.heightBlockSize*30)
                }
                
                HStack{
                    Image("Bilal4")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.widthBlockSize*35, height: UIScreen.heightBlockSize*12)
                        .offset(x: -120 , y: -30 )
                }
                
                
                ScrollView(.vertical, showsIndicators: false){
                    
                    //                    HStack{
                    //                        Text("Join as")
                    //                            .foregroundColor(AppColors.BlackColor)
                    //                            .font(AppFonts.regular_14)
                    //
                    //
                    //                        Spacer()
                    //                    }.padding(.leading)
                    //                        .padding(.trailing)
                    //
                    //                    HStack{
                    //
                    //                        HStack{
                    //
                    //                            Button(action: {
                    //                                self.isSelected = true
                    //                            }, label: {
                    //                                if (self.isSelected == true) {
                    //                                    Image("Group 7139")
                    //                                        .resizable()
                    //                                        .aspectRatio(contentMode: .fit)
                    //                                        .frame(width: 30, height: 30)
                    //                                }
                    //
                    //                                else{
                    //                                    Image("Rectangle 75")
                    //                                        .resizable()
                    //                                        .aspectRatio(contentMode: .fit)
                    //                                        .frame(width: 30, height: 30)
                    //                                }
                    //
                    //                            })
                    //
                    //
                    //
                    //
                    //
                    //                            Text("User")
                    //                                .foregroundColor(AppColors.BlackColor)
                    //                                .font(AppFonts.regular_16)
                    //
                    //                        }
                    //
                    //                        Spacer()
                    //
                    //                        HStack{
                    //                            Button(action: {
                    //                                self.isSelected = false
                    //                            }, label: {
                    //                                if(self.isSelected == false){
                    //                                    Image("Group 7139")
                    //                                        .resizable()
                    //                                        .aspectRatio(contentMode: .fit)
                    //                                        .frame(width: 30, height: 30)
                    //                                }
                    //                                else{
                    //                                    Image("Rectangle 75")
                    //                                        .resizable()
                    //                                        .aspectRatio(contentMode: .fit)
                    //                                        .frame(width: 30, height: 30)
                    //
                    //                                }
                    //
                    //                            })
                    //
                    //
                    //
                    //
                    //                            Text("Vendor")
                    //                                .foregroundColor(AppColors.BlackColor)
                    //                                .font(AppFonts.regular_16)
                    //
                    //
                    //                        }
                    //
                    //                        Spacer()
                    //
                    //                    }.padding(.top)
                    //                        .padding(.trailing)
                    //                        .padding(.leading)
                    
                    
                    VStack{
                        
                        
                        Text("First Name")
                            .foregroundColor(AppColors.BlackColor)
                            .padding(.top,20)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                        
                        TextField("John",text:self.$firstName)
                            .padding(.vertical, 10)
                            .autocapitalization(.none)
                            .background(Rectangle().frame(height: 1).padding(.top, 30))
                            .foregroundColor(AppColors.BlackColor)
                    } .padding(.trailing)
                        .padding(.leading)
                    
                    
                    VStack{
                        Text("Last Name")
                            .foregroundColor(AppColors.BlackColor)
                            .padding(.top,20)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                        TextField("Khan",text:self.$lastName)
                            .padding(.vertical, 10)
                            .autocapitalization(.none)
                            .background(Rectangle().frame(height: 1).padding(.top, 30))
                            .foregroundColor(AppColors.BlackColor)
                    }
                    .padding(.trailing)
                    .padding(.leading)
                    
                    
                    VStack{
                        Text("Number")
                            .foregroundColor(AppColors.BlackColor)
                            .padding(.top,20)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                        TextField("0092348838484",text:self.$phone)
                            .padding(.vertical, 10)
                            .autocapitalization(.none)
                            .background(Rectangle().frame(height: 1).padding(.top, 30))
                            .foregroundColor(AppColors.BlackColor)
                    } .padding(.trailing)
                        .padding(.leading)
                    
                    VStack{
                        
                        HStack{
                            
                            Text("Location")
                                .padding(.top,20)
                            
                            Spacer()
                        }
                        
                        HStack{
                            
                            Text(self.address)
                            
                            Spacer()
                            
                        }
                        .padding()
                        .background(Rectangle().frame(height: 1).padding(.top, 30))
                        .padding(.vertical, 10)
                        .overlay(HStack{
                            Spacer()
                            Button(action: {
                                
                            }) {
                                Image("location Icons")
                            }
                        })
                        .onTapGesture{
                            withAnimation{
                                self.showPlacePicker = true
                            }
                        }
                        
                        
                        
                        
                        
                        
                    } .padding(.trailing)
                        .padding(.leading)
                    
                    VStack{
                        Text("About")
                            .foregroundColor(AppColors.BlackColor)
                            .padding(.top,20)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                        TextField("Your short introduction",text:$about)
                            .padding(.vertical, 10)
                            .autocapitalization(.none)
                            .background(Rectangle().frame(height: 1).padding(.top, 30))
                            .foregroundColor(AppColors.BlackColor)
                        
                    } .padding(.trailing)
                        .padding(.leading)
                    
                    if(self.createProfileApi.isLoading){
                        
                        HStack{
                            
                            Spacer()
                            
                            ProgressView()
                                .padding()
                                .onDisappear{
                                    if(self.createProfileApi.isApiCallDone && self.createProfileApi.isApiCallSuccessful){
                                        
                                        if(self.createProfileApi.profileCreated){
                                            
                                            self.toSetupGarage = true
                                        }
                                        
                                        else {
                                            self.toastMessage = "Unable to create profile"
                                            self.showToast = true
                                        }
                                        
                                    }
                                    else if(self.createProfileApi.isApiCallDone && (!self.createProfileApi.isApiCallSuccessful)){
                                        self.toastMessage = "Unable to access internet. Please check you internet connection and try again."
                                        self.showToast = true
                                    }
                                    
                                    else{
                                        
                                        self.toastMessage = "something went wrong"
                                        self.showToast = true
                                        
                                    }
                                    
                                }
                            
                            Spacer()
                            
                        }
                        
                    }
                    
                    else{
                        
                        Button{
                            
                            if (self.firstName.isEmpty){
                                
                                self.toastMessage = "First Name can't be empty"
                                self.showToast = true
                                
                            }
                            
                            else if (self.lastName.isEmpty){
                                
                                self.toastMessage = "Last Name can't be empty"
                                self.showToast = true
                                
                            }
                            
                            else if (self.phone.isEmpty){
                                
                                self.toastMessage = "Phone number can't be empty"
                                self.showToast = true
                                
                            }
                            
                            else if (self.about.isEmpty){
                                
                                self.toastMessage = "About section can't be empty"
                                self.showToast = true
                                
                            }
                            
                            else if (self.address.isEmpty){
                                
                                self.toastMessage = "Address can't be empty"
                                self.showToast = true
                                
                            }
                            
                            else{
                                
                                self.createProfileApi.createProfile(firstName: self.firstName, lastName: self.lastName, phone: self.phone, about: self.about, lat: self.latitude, long: self.longitude, address: self.address)
                                
                            }
                                
                        } label: {
                            Text("Next")
                                .font(AppFonts.semiBold_16)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                                .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        }
                        .padding(.top,30)
                        .padding(.bottom)
                        .padding(.trailing)
                        .padding(.leading)
                        
                    }
                    
                    
                }
                
                
            }
            
            if(self.showPlacePicker){
                ZStack {
                    
                    Rectangle().fill(Color.black.opacity(0.3))
                    
                    VStack{
                        
                        HStack{
                            
                            
                            
                            Text(self.address)
                                .font(.system(size: 18))
                            //                                .foregroundColor(AppColors.textColor)
                                .padding(.trailing,10)
                            
                            Spacer()
                            
                            Image(systemName: "xmark.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20,alignment:.center)
                                .foregroundColor(.red)
                                .onTapGesture(perform: {
                                    withAnimation{
                                        self.showPlacePicker = false
                                    }
                                })
                        }
                        .padding(20)
                        
                        PlacesSearchBar(myLocationReceiver: self)
                            .navigationTitle("")
                            .clipped()
                        
                        Spacer()
                        
                    }
                    .background(RoundedCorners(tl: 20, tr: 20, bl: 0, br: 0).fill(Color.white))
                    .padding(.top,200)
                    
                }
                .onDisappear{
                    print("Selected Place Address ===> \(self.address)\nSelected Place Latitude ===> \(self.latitude)\nSelected Palce Longitude ===> \(self.longitude)")
                }
            }
            
            if(showToast){
                Toast(isShowing: self.$showToast, message: self.toastMessage)
            }
            
            
        }.edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
        
    }
}



extension User_profile_setup_Screen{
    
    func locationReceived(placeViewModel: PlaceViewModel) {
        self.address = placeViewModel.address
        self.latitude = placeViewModel.latitude
        self.longitude = placeViewModel.longitude
        self.showPlacePicker.toggle()
    }
    
    
}
