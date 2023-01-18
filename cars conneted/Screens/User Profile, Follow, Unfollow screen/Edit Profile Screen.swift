//
//  Edit Profile Screen.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 12/01/2023.
//



import SwiftUI

struct Edit_Profile_Screen: View, MyLocationReceiver {
    

    
    @StateObject var updateProfileApi = UpdateProfileApi()
    @StateObject var profileCoverImageApi = ProfileCoverImageApi()

    
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
    
    @State var coverPhoto : Image? = nil
    @State var profilePhoto : Image? = nil


    @State var showSheet = false
    
    @State var showBottomSheet: Bool = false
   
    @State var pickingForProfile : Bool = false
    
    
    @Environment(\.presentationMode) var presentaionMode
    
    @State var toSetupGarage = false
    
    let existingProfileData : getProfileDataModel

    

    
    var body: some View {
        
        ZStack{
            
            VStack{
                
                NavigationLink(destination: Setup_Garage_Screen(), isActive: $toSetupGarage){
                    EmptyView()
                }
                
                HStack{
                    
                    Button(action: {
                        self.pickingForProfile = false
                        self.showBottomSheet = true
                    }, label: {
                        if(self.coverPhoto != nil){
                            coverPhoto?
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: UIScreen.widthBlockSize*100, height: UIScreen.heightBlockSize*30)
                        }
                        else{
                            Image("bilal3")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: UIScreen.widthBlockSize*100, height: UIScreen.heightBlockSize*30)
                              
                        }
                    })
                   
                   
                }
                
                HStack{
                    Button(action: {
                        self.pickingForProfile = true
                        self.showBottomSheet = true
                    }, label: {
                        if(self.profilePhoto != nil){
                            profilePhoto?
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: UIScreen.widthBlockSize*35, height: UIScreen.heightBlockSize*12)
                                .cornerRadius(100)

                                
                        }
                        else{
                            Image("Bilal4")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(50)
                                .frame(width: UIScreen.widthBlockSize*35, height: UIScreen.heightBlockSize*12)
                        }
                    })
                  
                   
                }
                .offset(x: -120 , y: -30 )
                
                
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
                    //                        .padding(.leading)a
                    
                    
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
                    
                    if(self.updateProfileApi.isLoading){
                        
                        HStack{
                            
                            Spacer()
                            
                            ProgressView()
                                .padding()
                                .onDisappear{
                                    if(self.updateProfileApi.isApiCallDone && self.updateProfileApi.isApiCallSuccessful){
                                        
                                        if(self.updateProfileApi.profileUpdated){
                                            
                                            self.toastMessage = "profile updated successfully"
                                            self.showToast = true                                        }
                                        
                                        else {
                                            self.toastMessage = "Unable to update profile"
                                            self.showToast = true
                                        }
                                        
                                    }
                                    else if(self.updateProfileApi.isApiCallDone && (!self.updateProfileApi.isApiCallSuccessful)){
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
                                
                                self.updateProfileApi.updateProfile(firstName: self.firstName, lastName: self.lastName, phone: self.phone, about: self.about, lat: self.latitude, long: self.longitude, address: self.address)
                                
//                                if(self.profilePhoto ){}
                                
                            }
                                
                        } label: {
                            Text("Save")
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
            .onAppear{
                
                self.firstName = self.existingProfileData.firstName
                self.lastName = self.existingProfileData.lastName
                self.phone = self.existingProfileData.phone
                self.about = self.existingProfileData.about
                self.address = self.existingProfileData.address
                self.latitude = self.existingProfileData.location?.coordinates[0] ?? 0.0
                self.longitude = self.existingProfileData.location?.coordinates[1] ?? 0.0
                
            }
            .sheet(isPresented: self.$showBottomSheet) {
                
                ImagePicker(sourceType: .photoLibrary) { image in
                    
                    let size = Image(uiImage: image).asUIImage().getSizeIn(.megabyte)
                    
                    print("image data size ===> \(size)")

                    
                    if(size > 5){
                        self.toastMessage = "Image must be less then 5 mb"
                        self.showToast = true
                    }
                    else{
                        
                        if(self.pickingForProfile){
                            self.profilePhoto = Image(uiImage: image)
                           
                        }
                        else{
                            self.coverPhoto = Image(uiImage: image)
                            let imageData  = (((self.coverPhoto!.asUIImage()).jpegData(compressionQuality: 1)) ?? Data())
                            self.profileCoverImageApi.profileCoverImage(image: imageData)
                            
                        }
                    }
                    
                }
                
            }
        
        
    }
}



extension Edit_Profile_Screen{
    
    func locationReceived(placeViewModel: PlaceViewModel) {
        self.address = placeViewModel.address
        self.latitude = placeViewModel.latitude
        self.longitude = placeViewModel.longitude
        self.showPlacePicker.toggle()
    }
    
    
}
