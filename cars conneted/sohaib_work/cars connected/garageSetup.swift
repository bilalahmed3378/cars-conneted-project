//
//  garageSetup.swift
//  cars connected
//
//  Created by Sohaib Sajjad on 20/07/2022.
//

import SwiftUI

struct garageSetup: View {
    
   @State var toAddYourCar = false
    var body: some View {
        
        NavigationView{
            
            NavigationLink(destination: garageSetup(), isActive: $toAddYourCar){
                EmptyView()
            }
        
        VStack{
            
            ScrollView(.vertical,showsIndicators: false){

            
            VStack(alignment: .leading){
                
                Text("Setup Your Garage")
                    .font(.system(size:28))
                    .foregroundColor(.red)
                    .fontWeight(.medium)
                    .padding(.top,70)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                    .padding(.top,10)
                
                
                Button(action: {
                    
                    toAddYourCar = true
                    
                }){
                    
                    HStack{
                        Spacer()
                        
                        Text("Add Your Car")
                            .font(.system(size:14, design: .rounded))
                            .foregroundColor(.red)
                            .fontWeight(.medium)
                        
                        Spacer()
                    }
                    .padding(20)
                    .background(RoundedRectangle(cornerRadius: 100).strokeBorder(Color.red, lineWidth: 1))
                    .padding(.top,35)
                    
                }
                
                
                
                Spacer()
                
            }.padding(.leading,24)
                .padding(.trailing,24)
            
            Image("car")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.screenWidth, height: UIScreen.heightBlockSize*40)
                .padding(.bottom,40)
                
            }
           
        }
            
            .navigationBarHidden(true) }
        
    }
}

struct garageSetup_Previews: PreviewProvider {
    static var previews: some View {
        garageSetup()
    }
}
