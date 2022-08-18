//
//  previewEvent.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 27/07/2022.
//

import SwiftUI

struct previewEvent: View {
    var body: some View {

        VStack{
            
            //top bar
            HStack{
                
            
                Image(systemName: "chevron.backward")
                
                Spacer()
                
                Text("Preview Event")
                    .fontWeight(.medium)
                    .font(.system(size: 20))
                          

                Spacer()
                
            }
            .padding(.top,20)
            .padding(.leading,20)
            .padding(.trailing,20)
            
            
            ScrollView(.vertical,showsIndicators: false){
            
            VStack(alignment:.leading){
            
            Image("createEvent")
                .resizable()
                .frame(height: 200)
                .padding(.top,20)
            
            Group{
            
            Text("Event Name")
                .padding(.top,10)
            
            Text("Expo 2022 Classical")
                .foregroundColor(.gray)
                .padding(.top,5)
            
            
            Text("Description")
                .padding(.top,10)
                
                Text("The Gigalodon Hotel is a hotel that has dinner facilities beside a pool...")
                    .foregroundColor(.gray)
                    .padding(.top,5)
                
            Text("Date Of Event")
                .padding(.top,10)
            
            
            Text("00/00/000")
                .padding(.top,5)
                .foregroundColor(.gray)
            
            
            
            Text("Location")
                .padding(.top,10)
            
            Text("Haripur, KPK, Pakistan")
                .padding(.top,5)
                .foregroundColor(.gray)
            
            
            Text("Is It A Recurring Event")
                .padding(.top,10)
            
            Text("Yes")
                .padding(.top,5)
                .foregroundColor(.gray)
            
            }
                
                Button(action: {
                    
                }){
                    
                    HStack{
                        Spacer()
                        Text("Publish Event Now")
                        
                            .font(.system(size:16, design: .rounded))
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    .padding(20)
                    .background(RoundedRectangle(cornerRadius: 100).fill(LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .padding(.top,32)
                    
                }
            
                
            }.padding(.leading,20)
                .padding(.trailing,20)
            
            }
            
        }

    }
}

struct previewEvent_Previews: PreviewProvider {
    static var previews: some View {
        previewEvent()
    }
}
