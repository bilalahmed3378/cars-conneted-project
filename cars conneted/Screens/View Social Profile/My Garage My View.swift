//
//  My Garage My View.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 22/08/2022.
//

import SwiftUI

struct My_Garage_My_View: View {
    @Environment(\.presentationMode) var presentaionMode
    
    @StateObject var viewGarageApi = ViewGarageApi()
    @StateObject var deleteGarageApi = DeleteGarageApi()
    @StateObject var viewGarageCarsApi = GetGarageCarsApi()
    @State var carsList : [ViewAllGarageCarsCarsModel] = []


    
    @State var toEditGarage =  false
    
    @State var toAddCar =  false
    @State var toGarage =  false

    
    @State var showDeleteDialog : Bool = false
    
    @State var showDeleteDialog2 : Bool = false
    
    @State var isLoadingFirstTime = true
    
    
    @State var showToast : Bool = false
    @State var toastMessage : String = ""
    
    
    var body: some View {
        
        ZStack{
            
//                NavigationLink(destination: Edit_Garage_Screen( existingGarageData: self.viewGarageApi.apiResponse!.data!), isActive: self.$toEditGarage){
//                    EmptyView()
//                }
            
           
            
            NavigationLink(destination: Add_your_Car_Screen(), isActive: self.$toAddCar){
                EmptyView()
            }
            
            NavigationLink(destination: SetupGarageInApp(), isActive: self.$toGarage){
                EmptyView()
            }
            
           
            
            
            if(self.viewGarageApi.isLoading){
                
                VStack{
                    
                    Spacer()
                    
                    HStack{
                        
                        Spacer()
                        
                        ProgressView()
                            .padding()
                        
                        
                        Spacer()
                        
                    }
                    
                    
                    Spacer()
                    
                }
                
                
            }
            
            else if(self.viewGarageApi.isApiCallDone && (!self.viewGarageApi.isApiCallSuccessful)){
                
                VStack{
                    
                    
                    Spacer()
                    
                    Text("Unable to access internet.")
                        .font(.system(size: 14))
                        .foregroundColor(.black)
                    
                    Button(action: {
                        withAnimation{
                            self.viewGarageApi.viewGarage()
                        }
                    }){
                        Text("Try Agin")
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 5).fill(.blue))
                        
                    }
                    .padding(.top,30)
                    
                    Spacer()
                    
                }
            }
            
          
            
            
            else if(self.viewGarageApi.isApiCallDone && self.viewGarageApi.isApiCallSuccessful){
                
                if(self.viewGarageApi.dataRetrievedSuccessfully){
                    
                    
                    
                    VStack{
                        
                      
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
                            
                            Text("My Virual Garage")
                                .font(AppFonts.medium_18)
                            
                            Spacer()
                            
                            Menu(content: {
                                
                                Button(action: {
                                    self.toAddCar = true
                                }, label: {
                                    
                                    Image("add new car")
                                    
                                    Text("Add New Car")
                                        .font(AppFonts.regular_14)
                                    
                                    
                                    
                                })
                                
                               NavigationLink(destination: {
                                   Edit_Garage_Screen(existingGarageData: self.viewGarageApi.apiResponse!.data!)
                               }, label: {
                                   Image("carbon_edit")
                                   
                                   Text("Edit")
                                       .font(AppFonts.regular_14)
                                   
                               })
                                    
                                   
                              
                                
                                Button(action: {
                                    self.showDeleteDialog = true
                                }, label: {
                                    
                                    Image("delete black")
                                    
                                    
                                    Text("Delete Garage")
                                        .font(AppFonts.regular_14)
                                        .foregroundColor(AppColors.redGradientColor1)
                                    
                                })
                                
                                
                                
                                
                                
                            }, label: {
                                
                                Image("doted Icons")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 35, height: 35)
                                
                                
                            })
                            
                        }.padding()
                        
                        if(self.viewGarageCarsApi.isLoading){
                            VStack{
                                
                                Spacer()
                                
                                HStack{
                                    
                                    Spacer()
                                    
                                    ProgressView()
                                        .padding()
                                    
                                    
                                    Spacer()
                                    
                                }
                                
                                
                                Spacer()
                                
                            }
                        }
                        
                      else if(viewGarageCarsApi.isApiCallDone && viewGarageCarsApi.isApiCallSuccessful){
                            if(viewGarageCarsApi.dataRetrivedSuccessfully){
                                
                                ScrollView(.vertical, showsIndicators: false){
                                    
                                    HStack{
                                        Text("5 cars in Garage")
                                            .font(AppFonts.regular_18)
                                        Spacer()
                                    }
                                    .padding(.leading)
                                    .padding(.trailing)
                                    .padding(.bottom,10)
                                    
                                    
                                    HStack{
                                        Text("Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit. Aliqueto.")
                                            .font(AppFonts.regular_12)
                                        Spacer()
                                    }
                                    .padding(.leading)
                                    .padding(.trailing)
                                    
                                    
                                    
                                    LazyVStack{
                                        ForEach (self.carsList.indices , id : \.self){
                                            index in

                                            myGarage(carsList: self.carsList[index], carsLists: self.$carsList, showToast: self.$showToast, toastMessage: self.$toastMessage)
                                                .onAppear{
                                                    if(index == (self.carsList.count - 1)){
                                                        self.viewGarageCarsApi.viewMorecars(carsList: self.$carsList)
                                                    }
                                                    
                                                }
                                            if(self.viewGarageCarsApi.isLoadingMore && (index == (self.carsList.count - 1))){
                                                ProgressView()
                                                    .padding(20)
                                            }
                                            
                                        }

                                    }
                                    
                                   
                                    
                                }
                                
                            }
                            else{
                                VStack{
                                    
                                    
                                    Spacer()
                                    
                                    Text("No car found")
                                        .font(.system(size: 14))
                                        .foregroundColor(.black)
                                    
                                    Button(action: {
                                        withAnimation{
                                            self.toAddCar = true
                                        }
                                    }){
                                        Text("Add car")
                                            .font(.system(size: 14))
                                            .foregroundColor(.white)
                                            .padding()
                                            .background(RoundedRectangle(cornerRadius: 5).fill(.blue))
                                        
                                    }
                                    .padding(.top,30)
                                    
                                    Spacer()
                                    
                                }
                            }
                        }
                        else if(viewGarageCarsApi.isApiCallDone && !(self.viewGarageCarsApi.isApiCallSuccessful)){
                            
                            VStack{
                                
                                
                                Spacer()
                                
                                Text("Unable to access internet.")
                                    .font(.system(size: 14))
                                    .foregroundColor(.black)
                                
                                Button(action: {
                                    withAnimation{
                                        self.viewGarageCarsApi.viewAllGarageCars(carsList: self.$carsList)
                                    }
                                }){
                                    Text("Try Agin")
                                        .font(.system(size: 14))
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(RoundedRectangle(cornerRadius: 5).fill(.blue))
                                    
                                }
                                .padding(.top,30)
                                
                                Spacer()
                                
                            }
                        }
                        
                       
                        
                        
                    }.edgesIgnoringSafeArea(.bottom)
                        .navigationBarHidden(true)
                    
                }
                
               else if(self.viewGarageApi.apiResponse!.code == 400 && self.viewGarageApi.apiResponse!.successful == false){
                    VStack{
                        
                        Spacer()
                        
                        Text("First Setup your Garage.")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                        
                        Button(action: {
                            withAnimation{
                                self.toGarage = true
                            }
                        }){
                            Text("Setup Garage")
                                .font(.system(size: 14))
                                .foregroundColor(.white)
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 5).fill(.blue))
                            
                        }
                        .padding(.top,30)
                        
                        Spacer()
                        
                    }
                }
                
                else{
                    VStack{
                        
                        Spacer()
                        
                        Text("Unable to get garage.")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                        
                        Button(action: {
                            withAnimation{
                                self.viewGarageApi.viewGarage()
                            }
                        }){
                            Text("Try Agin")
                                .font(.system(size: 14))
                                .foregroundColor(.white)
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 5).fill(.blue))
                            
                        }
                        .padding(.top,30)
                        
                        Spacer()
                        
                    }
                }
                
                
            }
            
            
            else{
                
                VStack{
                    
                    Spacer()
                    
                    Text("Unable to get garage.")
                        .font(.system(size: 14))
                        .foregroundColor(.black)
                    
                    Button(action: {
                        withAnimation{
                            self.viewGarageApi.viewGarage()
                        }
                    }){
                        Text("Try Agin")
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 5).fill(.blue))
                        
                    }
                    .padding(.top,30)
                    
                    Spacer()
                    
                }
                
            }
            
            
            
            if(self.showDeleteDialog){
                
                Dialog(cancelable: false, isShowing: self.$showDeleteDialog){
                    
                    VStack{
                        
                        
                        Image(systemName : "exclamationmark.triangle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                            .foregroundColor(AppColors.redGradientColor1)
                        
                        Text("Are you sure you want to delete Garage?")
                            .font(AppFonts.regular_14)
                            .foregroundColor(Color.black)
                            .padding(.top,10)
                        
                        
                        
                        
                        HStack{
                            
                            Button(action: {
                                withAnimation{
                                    self.showDeleteDialog = false
                                }
                            }){
                                HStack{
                                    Spacer()
                                    
                                    Text("Cancel")
                                        .font(AppFonts.regular_14)
                                        .foregroundColor(Color.white)
                                    
                                    Spacer()
                                    
                                }
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color.black))
                                .padding(.trailing,10)
                            }
                            
                            if(self.deleteGarageApi.isLoading){
                                HStack{
                                    Spacer()
                                    ProgressView()
                                    Spacer()
                                }
                                .onDisappear{
                                    if(self.deleteGarageApi.isApiCallDone && self.deleteGarageApi.isApiCallSuccessful){
                                        self.showDeleteDialog = false
                                        self.showToast = true
                                        self.toastMessage = "Garage Deleted Successfully"
                                        
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                                            self.viewGarageApi.viewGarage()
                                        }
                                        
                                    }
                                    else{
                                        self.showToast = true
                                        self.toastMessage = "Unable to delete garage"
                                    }
                                }
                            }
                            
                            else{
                                Button(action: {
                                    self.deleteGarageApi.deleteCar()
                                }, label: {
                                    HStack{
                                        Spacer()
                                        
                                        Text("Delete")
                                            .font(AppFonts.regular_14)
                                            .foregroundColor(Color.white)
                                        
                                        Spacer()
                                    }
                                    .padding(15)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(AppColors.redGradientColor1))
                                    .padding(.leading,10)
                                })
                            }
                               
                               
                            
                        }
                        .padding(.top,10)
                        
                        
                        
                        
                        
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(radius: 8))
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    
                }
                .edgesIgnoringSafeArea(.all)
            }
            
            
            if(self.showDeleteDialog2){
                
                Dialog(cancelable: false, isShowing: self.$showDeleteDialog){
                    
                    VStack{
                        
                        
                        Image(systemName : "exclamationmark.triangle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                            .foregroundColor(AppColors.redGradientColor1)
                        
                        Text("Delete selected vehicle?")
                            .font(AppFonts.regular_14)
                            .foregroundColor(Color.black)
                            .padding(.top,10)
                        
                        
                        
                        
                        HStack{
                            
                            Button(action: {
                                withAnimation{
                                    self.showDeleteDialog2 = false
                                }
                            }){
                                HStack{
                                    Spacer()
                                    
                                    Text("Cancel")
                                        .font(AppFonts.regular_14)
                                        .foregroundColor(Color.white)
                                    
                                    Spacer()
                                    
                                }
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color.black))
                                .padding(.trailing,10)
                            }
                            
                            Button(action: {
                                
                                withAnimation{
                                    
                                }
                                
                            }){
                                HStack{
                                    Spacer()
                                    
                                    Text("Yes")
                                        .font(AppFonts.regular_14)
                                        .foregroundColor(Color.white)
                                    
                                    Spacer()
                                }
                                .padding(15)
                                .background(RoundedRectangle(cornerRadius: 10).fill(AppColors.redGradientColor1))
                                .padding(.leading,10)
                            }
                        }
                        .padding(.top,10)
                        
                        
                        
                        
                        
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(radius: 8))
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    
                }
                .edgesIgnoringSafeArea(.all)
            }
            
            if(showToast){
                Toast(isShowing: self.$showToast, message: self.toastMessage)
            }
            
            
        }
        .onAppear{
            
            if (self.isLoadingFirstTime){
                
                self.viewGarageApi.viewGarage()
                
                self.viewGarageCarsApi.viewAllGarageCars(carsList: self.$carsList)
                
                self.isLoadingFirstTime = false
                
            }
            
            
        }
    }
}



struct myGarage : View {

    @StateObject var deleteCarApi = DeleteCarApi()

    let carsList : ViewAllGarageCarsCarsModel
    
    @Binding var carsLists : [ViewAllGarageCarsCarsModel]


    @Binding var showToast : Bool

    @Binding var toastMessage : String

    @State var toDeletedCar = false

    @State var toUpdateCar = false


    @State private var showingSheet = false

    @State var showingSheetComments = false

    var body : some View{

        VStack{

            NavigationLink(destination: Vehicle_Deleted_Screen(), isActive: self.$toDeletedCar){
                EmptyView()
            }

            NavigationLink(destination: Update_your_Car_Screen(carId: self.carsList._id, existingCarData: self.carsList), isActive: self.$toUpdateCar){
                EmptyView()
            }

            ZStack{
                Image("unsplash_1ZhZpP91olQ-1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.screenWidth - 40)
                VStack{
                    HStack{
                        Spacer()


                        if(self.deleteCarApi.isLoading){

                            ProgressView()
                                .padding()
                                .onDisappear{
                                    if(self.deleteCarApi.isApiCallDone && self.deleteCarApi.isApiCallSuccessful){

                                        if(self.deleteCarApi.carDeletedSuccessfully){

                                            self.carsLists.removeAll{$0._id == self.carsList._id}
                                            self.toastMessage = "car deleted successfully"
                                            self.showToast = true

                                        }

                                        else {
                                            self.toastMessage = "Unable to delete car"
                                            self.showToast = true
                                        }

                                    }
                                    else if(self.deleteCarApi.isApiCallDone && (!self.deleteCarApi.isApiCallSuccessful)){
                                        self.toastMessage = "Unable to access internet. Please check you internet connection and try again."
                                        self.showToast = true
                                    }

                                    else{

                                        self.toastMessage = "something went wrong"
                                        self.showToast = true

                                    }

                                }


                        }

                        else{

                            Menu(content: {

                                Button(action: {}, label: {

                                    Image("share")

                                    Text("Share")
                                        .font(AppFonts.regular_14)



                                })

                                Button(action: {

                                    self.toUpdateCar = true


                                }, label: {

                                    Image("carbon_edit")

                                    Text("Edit")
                                        .font(AppFonts.regular_14)

                                })

                                Button(action: {

                                    self.deleteCarApi.deleteCar(car_id: self.carsList._id)

                                }, label: {

                                    Image("delete black")


                                    Text("Delete")
                                        .font(AppFonts.regular_14)

                                })





                            }, label: {

                                Image("doted icons-1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 24, height: 24)
                                    .padding()
                                    .padding(.top)
                            })


                        }

                    }

                    Spacer()
                    HStack{
                        Text(self.carsList.brand)
                            .font(AppFonts.semiBold_14)
                            .foregroundColor(.white)
                        Spacer()
                    }.padding()
                        .padding(.bottom,-30)


                    HStack{
                        Group{
                            Text(self.carsList.model)
                                .font(AppFonts.regular_12)
                                .foregroundColor(.white)

                            Image("Ellipse 3")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 5, height: 5)
                                .padding(.leading,1)

                            Text(self.carsList.description)
                                .font(AppFonts.regular_12)
                                .foregroundColor(.white)

                            Image("Ellipse 3")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 5, height: 5)
                                .padding(.leading,1)

                            Text(String(self.carsList.year))
                                .font(AppFonts.regular_12)
                                .foregroundColor(.white)

                            Spacer()
                        }
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

                        Spacer()

                        NavigationLink(destination: {
                            Car_Specification()
                        }, label: {
                            Text("view details")
                                .foregroundColor(.white)
                                .font(AppFonts.regular_12)

                            Image("Vector-3")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 14, height: 14)

                        })



                    }.padding()
                        .padding(.bottom)
                }

            }.frame(width: UIScreen.screenWidth - 40)

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

                }.padding(.leading,26)
                    .padding(.trailing,26)

                Divider()
                    .padding(.leading,26)
                    .padding(.trailing,26)

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
                    HStack{


                        Button(action: {
                            self.showingSheetComments = true
                        }, label: {

                            Image("ant-design_comment-outlined")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 26, height: 26)

                            Text("12 comments")
                                .font(AppFonts.regular_12)
                                .foregroundColor(Color.gray)

                        })
                        .sheet(isPresented: $showingSheetComments){
                            commentsScreen()

                        }

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




                }.padding(.leading,26)
                    .padding(.trailing,26)

            }


        }.padding(.top)
            .padding(.bottom)
            .background(RoundedRectangle(cornerRadius: 0).fill(.gray.opacity(0.2)))




    }

}
