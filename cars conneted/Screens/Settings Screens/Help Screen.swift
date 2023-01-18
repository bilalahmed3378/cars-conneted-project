//
//  Help Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 17/08/2022.
//

import SwiftUI
import Kingfisher


struct Help_Screen: View {
    @Environment (\.presentationMode) var presentationMode
  
    @StateObject var getAllFaqsApi  = ViewAllFaqsApi()
    
    @State var faqsList : [ViewAllFaqsFaqsModel] = []



    @State private var searchText = ""
    var body: some View {
        VStack{
            
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
                
                Text("Help")
                    .foregroundColor(.white)
                    .font(AppFonts.SemiBold_20)
                    .offset(x: -15)
                
                Spacer()
                
                
               
                
            }.padding(.leading,20)
                .padding(.trailing,20)
                .padding(.top,20)
            
        }  .padding(.top,40)
            .padding(.bottom,30)
            .background(
                Image("home screen background")
                .resizable())
        }
            
            if (self.getAllFaqsApi.isLoading){
                
                
                ShimmerView(cornerRadius: 10, fill: .gray)
                    .frame(width: 100, height: 15)
                    .padding(.top,20)
                
                ScrollView(.vertical,showsIndicators: false){
                    
                    ForEach(0...6 , id:\.self){index in
                        
                        
                        HStack{
                            
                            Spacer()
                            
                            ShimmerView(cornerRadius: 10, fill: .gray)
                                .frame(width: 150, height: 200)
                            
                            Spacer()
                            
                            ShimmerView(cornerRadius: 10, fill: .gray)
                                .frame(width: 150, height: 200)
                            
                            Spacer()
                            
                        }
                        .padding(.top,20)
                        
                        
                            
                        
                    }
                }
                .padding(.top,10)
                .clipped()
                
            }
            
            else if(self.getAllFaqsApi.isApiCallDone && self.getAllFaqsApi.isApiCallSuccessful){
                
                if !(self.faqsList.isEmpty){
                    
                    ScrollView(.vertical, showsIndicators: false){
                        
                        LazyVStack{
                            ForEach(self.faqsList.indices , id: \.self){ index in
                                FaqsCards(faqs: self.faqsList[index])
                                    .onAppear{
                                        if(index == (self.faqsList.count - 1)){
                                            self.getAllFaqsApi.viewMoreFaqs(faqsList: self.$faqsList)
                                        }
                                    }
                                if(self.getAllFaqsApi.isLoadingMore && (index == (self.faqsList.count - 1))){
                                    ProgressView()
                                        .padding(20)
                                }
                            }
                        }
                        
                        
                        
                        
                    }
                }
                else{
                    Spacer()
                    
                    Text("Unable to get faqs. Please try again later.")
                        .font(AppFonts.medium_14)
                        .foregroundColor(.black)
                        .padding(.leading,20)
                        .padding(.trailing,20)
                        
                    Button(action: {
                        withAnimation{
                            self.getAllFaqsApi.viewAllFaqs(FaqsList: self.$faqsList)
                        }
                    }){
                        Text("Try Agin")
                            .font(AppFonts.medium_14)
                            .foregroundColor(.white)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 5).fill(.blue))

                    }
                    .padding(.top,30)
                    
                    Spacer()
                }
            }
            else if(self.getAllFaqsApi.isLoading && (!self.getAllFaqsApi.isApiCallSuccessful)){
                Spacer()
                
                Text("Unable to access internet. Please check yuor internet connection and try again.")
                    .font(AppFonts.medium_14)
                    .foregroundColor(.black)
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    
                Button(action: {
                    withAnimation{
                        self.getAllFaqsApi.viewAllFaqs(FaqsList: self.$faqsList)
                    }
                }){
                    Text("Try Agin")
                        .font(AppFonts.medium_14)
                        .foregroundColor(.white)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 5).fill(.blue))

                }
                .padding(.top,30)
                
                Spacer()
            }
            else{
                Spacer()
                
                Text("Unable to get faqs. Please try again later.")
                    .font(AppFonts.medium_14)
                    .foregroundColor(.black)
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    
                Button(action: {
                    withAnimation{
                        self.getAllFaqsApi.viewAllFaqs(FaqsList: self.$faqsList)
                    }
                }){
                    Text("Try Agin")
                        .font(AppFonts.medium_14)
                        .foregroundColor(.white)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 5).fill(.blue))

                }
                .padding(.top,30)
                
                Spacer()
            }
          
        }.edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
            .onAppear{
                self.getAllFaqsApi.viewAllFaqs(FaqsList: self.$faqsList)
            }
    }
}


struct FaqsCards : View {
    
    @State private var isClicked = false
    @State private var isClickedTwo = false
    
    let faqs : ViewAllFaqsFaqsModel

    
    var body : some View{
        
        VStack(alignment: .leading){
            
            HStack{
                Text("\(self.faqs.question)")
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_14)
                  
                Spacer()
                Button(action: {
                    withAnimation{
                        self.isClicked.toggle()
                    }
                }, label: {
                    
                    Image(self.isClicked ? "dropdown menu icon" : "dropdown menu 2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 16)
                    
                })
               
                
            }
            
            if(self.isClicked){
                
            VStack(alignment: .leading){
                
                
            Divider()
                    .padding()
            
                Text("\(self.faqs.answer)")
                .foregroundColor(.gray)
                .font(AppFonts.regular_14)
                 
            }
        }
        }.padding()
            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom)
    }
}
