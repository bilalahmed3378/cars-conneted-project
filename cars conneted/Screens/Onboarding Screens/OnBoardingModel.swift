//
//  SwiftUIView.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 07/09/2022.
//

import Foundation

struct onboardingView : Identifiable{
    
    var id = UUID()
    var image : String
    var backgroundImage: String
    var title: String
    var indexImg: String

    
    
}

extension onboardingView{
    
    static var sample: [onboardingView] {
        [
            onboardingView(image:"unsplasbhbh_qyfco1nfMtg",backgroundImage:"Group 8725",title:"Car Fans Club",indexImg:"page1" ),
            onboardingView(image:"unsplash_Aqt08E8JzEc-1",backgroundImage:"Group 8724",title:"Marketplace",indexImg:"page2" ),
            onboardingView(image:"unsplash_qyfco1nfMtg",backgroundImage:"Group 8726",title:"Auto-Shows",indexImg:"page3" ),
//            onboardingView(image:"unsplash_qyfco1nfMtg",backgroundImage:"Group 7450",title:"cars" ),

        ]
    }
    
}

import SwiftUI

struct ContentViewOnboarding: View {
    
    var screenData = onboardingView.sample
    @State private var selection = 0
    @State var pushToLogin : Bool = false
//    @State var selection = 0

    
    var body: some View {
        
       
            
            ScrollView(.vertical,showsIndicators: false){


            
            if(selection == 0){
                
                tabView(screenData:screenData[0],selection:$selection)
                
            }
            
            if(selection == 1){
                
                tabView(screenData:screenData[1],selection:$selection)

            }
            
            if(selection == 2){
                
                tabView(screenData:screenData[2],selection:$selection)

            }
                
            
            Button{
                withAnimation{
                    
                    
                    
                    if(selection<3){
                        
                        selection += 1
                        
                        
                    }
                    
//                    else{ selection = 0
//                    }
                    
                }
                
            }label:{
                
                
                if(selection < 2){
                        
                        HStack{
                            Spacer()
                            Text("Next")
                            
                                .font(.system(size:16, design: .rounded))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .padding(20)
                        .background(RoundedRectangle(cornerRadius: 100).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .padding(.top,40)
                        .padding(.leading,24)
                        .padding(.trailing,24)
                        .padding(.bottom,20)

                    
                    
                }
                
                else  if(selection == 2){
                    //
                    NavigationLink(destination: Getting_Started_Screen()) {
                            
                            HStack{
                                Spacer()
                                Text("Get Started")
                                
                                    .font(.system(size:16, design: .rounded))
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            .padding(20)
                            .background(RoundedRectangle(cornerRadius: 100).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                            .padding(.top,40)
                            .padding(.leading,24)
                            .padding(.trailing,24)
                            .padding(.bottom,20)

                    }
                    
                    
                    
                }
                
            }

            
            }
                
             .navigationBarHidden(true)
             .navigationBarBackButtonHidden(true)


        

        
        
        
    }
    
}


struct tabView: View {


    var screenData :  onboardingView
   @Binding var selection : Int

    
    var body: some View {

    
VStack{
    
            
            ZStack{
                
                VStack{
                    HStack {
                        
                        if(selection==2){
                            Spacer()
                        }
                        
                        Image(screenData.backgroundImage)
                            .resizable()
                            .frame(width: UIScreen.widthBlockSize*65, height: UIScreen.heightBlockSize*40)
                        
                        if(selection==0){
                            Spacer()
                        }
                        //
                    }
                    Spacer()
                }
                
                
                
                
                VStack{
                    
                    Image(screenData.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.widthBlockSize*84, height: UIScreen.heightBlockSize*40)
                        .padding(.top,74)

                    
                    Text(screenData.title)
                        .font(.system(size: 22))
                        .padding(.top,44)

                    
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Posuere duis mauris felis diam. Risus rhoncus, vitae fames sit id lorem. Consectetur habitant tellus orci, cras rutrum mattis sed.")
                        .padding(.top,16)
                        .font(.system(size: 14))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.leading,24)
                        .padding(.trailing,24)
                    
                    
                    Image(screenData.indexImg)
                        .padding(.top,49)
                    
                    
                    Spacer()
                    
                }
                
            }
            
}.edgesIgnoringSafeArea(.all)

    }
    
}

struct ContentViewOnboarding_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewOnboarding()
    }
}

