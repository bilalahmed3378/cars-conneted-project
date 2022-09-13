//
//  All Service View Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 13/09/2022.
//

import SwiftUI

struct All_Service_View_Screen: View {
    @Environment (\.presentationMode) var presentationMode
    @State private var searchText  = ""
    var body: some View {
        VStack{
            
            VStack{
                
                // top bar
                HStack{
                   
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image("back icon")
                               .resizable()
                               .aspectRatio(contentMode: .fit)
                               .frame(width: 35, height: 35)
                    })
                    
                    Spacer()
                    
                    Text("Spareparts")
                        .font(AppFonts.SemiBold_20)
                        .foregroundColor(.white)
                    
                    Spacer()
                    NavigationLink(destination: Add_classified_Screen(), label: {
                        
                        Image("plus icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 26, height: 26)
                    })
                  
                    
                    
                }.padding(.leading,24)
                    .padding(.trailing,24)
                    .padding(.top,20)
                
                
                
                HStack{
                    
                    TextField("Search",text: self.$searchText)
                        .foregroundColor(.red)
                    
                    
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
            .padding(.top,30)
                .padding(.bottom,15)
                .background(
                    Image("home screen background")
                        .resizable())
            
            
            
            ScrollView(.vertical,showsIndicators: false){
                
              
                
             
                    LazyVStack{
                        ForEach(0...5 , id:\.self){ index in
                           ServiceClassified()
                                
                        }
                    }
                    
            }
                       
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
    }
}

struct All_Service_View_Screen_Previews: PreviewProvider {
    static var previews: some View {
        All_Service_View_Screen()
    }
}

struct ServiceClassified : View {
    
    var body: some View {
       
        VStack(alignment: .leading){
            
            HStack{
                Spacer()
            Image("Rectangle 1263")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*35)
                Spacer()
            }
            
            Text("Enginge Valve 16.5")
                .foregroundColor(.black)
                .font(AppFonts.medium_14)
                .lineLimit(1)
                .padding(.leading,10)
                .padding(.trailing,10)
                .padding(.bottom,2)
            
            HStack{
                Text("Engine Part")
                    .foregroundColor(.gray)
                    .font(AppFonts.semiBold_12)
                Spacer()
                Text("$50")
                    .font(AppFonts.medium_14)
                    .foregroundColor(AppColors.redGradientColor1)
                
            }
            .padding(.leading,10)
            .padding(.trailing,10)
            
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
            .padding(.leading,10)
            .padding(.trailing,10)
            .padding(.bottom,10)
        }
        .cornerRadius(10)
        .padding(.top,10)
        .background(RoundedRectangle(cornerRadius: 10).fill(.white).shadow(radius: 3))
        .padding(5)
        .padding(.leading,10)
       
            
      

    }
}
